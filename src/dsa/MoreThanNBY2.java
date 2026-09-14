package dsa;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;

public class MoreThanNBY2 {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int n=sc.nextInt();
		ArrayElements obj=new ArrayElements(n);
		for(int i=0;i<n;i++){
			int ele=sc.nextInt();
			obj.addElements(ele);
		}
		sc.close();
		int nB2=n/2;
		Arrays.sort(ArrayElements.arr);
		int candidate=ArrayElements.arr[nB2];
		int count=0;
		List<Integer> ans=new ArrayList<Integer>();
		for(int i=0;i<n;i++){
			if(ArrayElements.arr[i]==candidate){
				count++;
			}
		}
		if(count>nB2){
			ans.add(candidate);
		}
		System.out.println(ans);
	}
}
