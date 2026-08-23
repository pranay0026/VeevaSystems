package oop_design;



import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

class Book{
    private String code;
    private String title;
    private String author;
    private double price;

    public Book(String code,String title,String author,double price){
        this.code=code;
        this.title=title;
        this.author=author;
        this.price=price;
    }

    public void display(){
        System.out.println("ISBN:"+code);
        System.out.println("Title:"+title);
        System.out.println("Author:"+author);
        System.out.println("Price:"+price);
    }
}

class BookCollection{
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);

        Map<String,Book> books=new HashMap<>();

        books.put("ISBN101",new Book("ISBN101","Java Programming","James",500));
        books.put("ISBN102",new Book("ISBN102","Clean Code","Robert Martin",750));
        books.put("ISBN103",new Book("ISBN103","Effective Java","Joshua Bloch",900));

        String isbn=sc.nextLine();

        Book book=books.get(isbn);

        if(book!=null){
            book.display();
        }
        else{
            System.out.println("Book not found");
        }

        sc.close();
    }
}

