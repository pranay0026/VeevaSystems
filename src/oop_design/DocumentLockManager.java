package oop_design;

import java.util.Scanner;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.Iterator;
import java.util.Map;

public class DocumentLockManager {
    static ConcurrentHashMap<Integer, Boolean> documents = new ConcurrentHashMap<>();
    static ConcurrentHashMap<Integer, Boolean> users = new ConcurrentHashMap<>();
    static ConcurrentHashMap<Integer, LockRequest> locked = new ConcurrentHashMap<>();
    static Scanner sc = new Scanner(System.in);

    public static void main(String[] args) {
        documents.put(1, false);
        documents.put(2, false);
        documents.put(3, false);

        int[] count = {0};
        
        ScheduledExecutorService service = Executors.newScheduledThreadPool(1);
        service.scheduleAtFixedRate(() -> {
            cleanExpiredLocks(count[0]);
            count[0] += 10;
        }, 0, 10, TimeUnit.MINUTES);

        while (true) {
            System.out.println("\nEnter 1 to assign the lock\nEnter 2 to release lock\nEnter 3 to display locks\nEnter 4 to exit");
            int ch = sc.nextInt();
            if (ch == 1) {
                insert();
            } else if (ch == 2) {
                System.out.println("Enter Document ID:");
                int docId = sc.nextInt();
                System.out.println("Enter User ID:");
                int userId = sc.nextInt();
                releaseLock(docId, userId);
            } else if (ch == 3) {
                display();
            } else if (ch == 4) {
                service.shutdown();
                break;
            }
        }
    }

    public static void display() {
        if (locked.isEmpty()) {
            System.out.println("No documents are currently locked.");
            return;
        }
        for (int key : locked.keySet()) {
            System.out.println("User ID: " + key + " -> " + locked.get(key).toString());
        }
    }

    public static void cleanExpiredLocks(int currentTimeStamp) {
        Iterator<Map.Entry<Integer, LockRequest>> iterator = locked.entrySet().iterator();
        while (iterator.hasNext()) {
            Map.Entry<Integer, LockRequest> entry = iterator.next();
            LockRequest request = entry.getValue();
            int userId = entry.getKey();

            if (request.getTimestamp() <= currentTimeStamp) {
                documents.put(request.getDoc_id(), false);
                users.put(userId, false);
                iterator.remove();
            }
        }
    }

    public static void releaseLock(int docId, int userId) {
        if (locked.containsKey(userId) && locked.get(userId).getDoc_id() == docId) {
            documents.put(docId, false);
            users.put(userId, false);
            locked.remove(userId);
            System.out.println("Lock successfully released.");
        } else {
            System.out.println("No lock found matching this userId and documentId.");
        }
    }

    public static void insert() {
        System.out.println("Enter the user_id:");
        int user_id = sc.nextInt();
        System.out.println("Enter the document id:");
        int doc_id = sc.nextInt();
        System.out.println("Enter lock duration relative to current time:");
        int duration = sc.nextInt();

        boolean isUserLocked = users.getOrDefault(user_id, false);
        boolean isDocLocked = documents.getOrDefault(doc_id, false);

        if (!isUserLocked && !isDocLocked) {
            documents.put(doc_id, true);
            users.put(user_id, true);
            locked.put(user_id, new LockRequest(user_id, doc_id, duration));
            System.out.println("Locked: " + locked.get(user_id).toString());
        } else {
            System.out.println("Error: User already has a document or document is locked.");
        }
    }
}

class LockRequest {
    private int user_id;
    private int doc_id;
    private int timestamp;

    LockRequest(int user_id, int doc_id, int timestamp) {
        this.user_id = user_id;
        this.doc_id = doc_id;
        this.timestamp = timestamp;
    }

    public int getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(int timestamp) {
        this.timestamp = timestamp;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getDoc_id() {
        return doc_id;
    }

    public void setDoc_id(int doc_id) {
        this.doc_id = doc_id;
    }

    @Override
    public String toString() {
        return "LockRequest [user_id=" + user_id + ", doc_id=" + doc_id + ", timestamp=" + timestamp + "]";
    }
}
