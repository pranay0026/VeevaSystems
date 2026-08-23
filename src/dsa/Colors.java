/**
 * 
 */
package dsa;

import java.util.HashMap;
import java.util.Scanner;

public class Colors {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		String s=sc.nextLine();
		sc.close();
		HashMap<String, Integer> hm=new HashMap<>();
		String[] str=s.split(",");
		for(String x:str) {
			String color=x.trim().replaceAll("[^A-Za-z]","").toLowerCase();
			hm.put(color, hm.getOrDefault(color, 0)+1);
		}
		for(String col:hm.keySet()) {
			System.out.print(col+" ");
			System.out.println(hm.get(col));
		}
		
	}
}
