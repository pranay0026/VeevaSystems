package dsa;

import java.util.Arrays;
import java.util.Scanner;

public class NonIntegers {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter n");
		int n=sc.nextInt();
		int[] arr=new int[n];
		System.out.println("Enter array elements");
		for(int i=0;i<n;i++) {
			arr[i]=sc.nextInt();
		}
		Arrays.sort(arr);
		int ans=1;
		for(int i=arr.length-2;i>=0;i--) {
			if(arr[i]+1==arr[i+1]) {
				ans=Math.max(ans, ans+1);
			}
			else {
				ans=1;
			}
		}
		System.out.println(ans);
		sc.close();
	}
}
