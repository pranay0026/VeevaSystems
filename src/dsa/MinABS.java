package dsa;

import java.util.Arrays;
import java.util.Scanner;

public class MinABS {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int n=sc.nextInt();
		int[] arr=new int[n];
		for(int i=0;i<n;i++) {
			arr[i]=sc.nextInt();
		}
		 int[][] arr2=minAbs(arr);

		    for(int i=arr2.length-1;i>=0;i--){
		        System.out.println(Arrays.toString(arr2[i]));
		    }
		
	}
	public static int[][] minAbs(int[] arr) {
		Arrays.sort(arr);
	    int min_value=Integer.MAX_VALUE;
	    for(int i=1;i<arr.length;i++){
	        if(arr[i]-arr[i-1]<min_value){
	            min_value=arr[i]-arr[i-1];
	        }
	    }
	    int count=0;
	    for(int i=1;i<arr.length;i++){
	        if(arr[i]-arr[i-1]==min_value){
	            count++;
	        }
	    }
	    int[][] res=new int[count][2];
	    int index=0;
	    for(int i=1;i<arr.length;i++){
	        if(arr[i]-arr[i-1]==min_value){
	            res[index][0]=arr[i-1];
	            res[index][1]=arr[i];
	            index++;
	        }
	    }
		return res;
	}
}
