package dsa;

import java.util.Arrays;
import java.util.Scanner;

public class MinDifference {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int n=sc.nextInt();
		long[] arr=new long[n];
		
		for(int i=0;i<n;i++) {
			arr[i]=sc.nextLong();
		}
		sc.close();
		Arrays.sort(arr);
		long minValue=Long.MAX_VALUE;
		for(int i=1;i<n;i++) {
			if(Math.abs(arr[i]-arr[i-1])<minValue) {
				minValue=Math.abs(arr[i]-arr[i-1]);
			}
		}
		System.out.println(minValue);
		
	}
}
