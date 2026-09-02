package dsa;

import java.util.Scanner;

public class Numbers {
	private static final String[] LESS_THAN_20 = {
	        "", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", 
	        "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"
	    };
	    private static final String[] TENS = {
	        "", "", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"
	    };
	    private static final String[] THOUSANDS = {
	        "", "Thousand", "Million", "Billion"
	    };
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int n=sc.nextInt();
		sc.close();
		System.out.println(numberInWords(n));
	}
	public static String numberInWords(int n) {
		String sb="";
		int i=0;
		while(n>0) {
			if(n%1000!=0) {
				sb=helper(n%1000)+THOUSANDS[i]+" "+sb;
			}
			n=n/1000;
			i++;
		}
		return sb.trim();
	}
	public static String helper(int num) {
		 if (num==0) {
	            return "";
	        } else if(num<20) {
	            return LESS_THAN_20[num] + " ";
	        } else if (num<100) {
	            return TENS[num / 10] + " " + helper(num % 10);
	        } else {
	            return LESS_THAN_20[num / 100] + " Hundred " + helper(num % 100);
	        }
	    }
}
