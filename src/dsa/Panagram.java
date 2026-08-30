package dsa;

import java.util.Scanner;

public class Panagram {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		String str=sc.nextLine();
		if(isPan(str)) {
			System.out.println("It is a pangram");
		}
		else {
			System.out.println("It is not a pangram");
		}
		sc.close();
	}
	public static boolean isPan(String str) {
		int[] arr=new int[26];
		for(char ch:str.toCharArray()) {
			if(Character.isAlphabetic(ch)) {
				ch=Character.toLowerCase(ch);
				arr[ch-'a']++;
			}
		}
		for(int i:arr) {
			if(i==0) {
				return false;
			}
		}
		return true;
	}
}
