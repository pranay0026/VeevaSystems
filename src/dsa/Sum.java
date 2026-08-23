package dsa;

import java.util.Scanner;

public class Sum {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        String s = sc.nextLine();

        String[] str = s.split("[^0-9]+");

        int sum = 0;
        int count = 0;

        for (String num : str) {

            if (!num.isEmpty()) {
                int n = Integer.parseInt(num);
                sum += n;
                count++;
            }
        }

        double avg = count == 0 ? 0.0 : (double) sum / count;

        System.out.println(sum + ", " + avg);

        sc.close();
    }
}