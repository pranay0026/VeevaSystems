package dsa;

import java.util.HashMap;
import java.util.Scanner;

public class Cars {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		HashMap<String, Double> hm=new HashMap<>();
		int n=sc.nextInt();
		sc.nextLine();
		for(int i=0;i<n;i++) {
			String str=sc.nextLine();
			double price=sc.nextDouble();
			sc.nextLine();
			hm.put(str, price);
		}
		double max_value=Integer.MIN_VALUE;
		String max_key="";
		for(String key:hm.keySet()) {
			if(hm.get(key)>max_value) {
				max_value=hm.get(key);
				max_key=key;
			}	
		}
		System.out.println(max_key);
		sc.close();
	}
}
