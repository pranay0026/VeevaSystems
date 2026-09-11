package dsa;

import java.util.Arrays;

public class Reverse {
	public static void main(String[] args) {
		int[] arr= {1,2,3,4,5};
		helper(arr,5,0);
		System.out.println(Arrays.toString(arr));
	}
	public static void helper(int[] arr, int n,int i) {
		if(i>=n) {
			return;
		}
		int temp=arr[i];
		arr[i]=arr[n-1];
		arr[n-1]=temp;
		helper(arr,n-1,i+1);
	}
}
