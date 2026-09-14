package dsa;

public class StringSum {
	public static void main(String[] args) {
		String str="12abc45";
		int number=(int)str.charAt(0);
		number=0;
		number=number*10+(int)str.charAt(0)-'0';
		number=number*10+(int)str.charAt(1)-'0';
		System.out.println(number);
		System.out.println(findSum(str));
	}
	    public static int findSum(String s) {
	        // code here
	        int sum=0;
	        for(int i=0;i<s.length();i++){
	            int number=0;
	            while(i<s.length() && Character.isDigit(s.charAt(i))){
	                number=number*10+(int)s.charAt(i)-'0';
	                System.out.println(number);
	                if(i<s.length()) {
	                	i++;
	                }
	            }
	            
	            if(number>0)
	            sum+=number;
	            System.out.println("Sum "+sum);
	        }
	        return sum;
	    }
	}

