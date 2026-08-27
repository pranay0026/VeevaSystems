package dsa;

import java.util.LinkedHashSet;
import java.util.Scanner;

public class Unique {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		String s=sc.nextLine();
		LinkedHashSet<Character> hs=new LinkedHashSet<>();
		for(char ch:s.toCharArray()) {
			hs.add(ch);
		}
		sc.close();
		StringBuilder sb=new StringBuilder();
		sb.append(Integer.toString(hs.size()));
		for(char ch:hs) {
			sb.append(String.valueOf(ch));
		}
		System.out.println(sb.toString());
	}
}
