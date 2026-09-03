package dsa;

import java.util.Scanner;

public class StringReverse {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		String s=sc.nextLine();
		StringBuilder sb=new StringBuilder(s);
		System.out.println(reverse(sb));
		sc.close();
	}
	//Pranay
	public static String reverse(StringBuilder sb) {
		int left=0;
		int right=sb.length()-1;
		while(left<right) {
			char temp=sb.charAt(left);
			sb.setCharAt(left, sb.charAt(right));
			sb.setCharAt(right, temp);
			left++;
			right--;
		}
		return sb.toString();
	}
}
