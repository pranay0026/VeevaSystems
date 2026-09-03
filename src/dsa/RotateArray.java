package dsa;

public class RotateArray {
	public static void main(String[] args) {
		String[] arr= {"Apple","Banana","Cherry","Dates"};
		int k=5,m=0;
		if(k>arr.length) {
			m=k%arr.length;
		}
		else {
			m=k;
		}
		System.out.println(m);
		String[] ans=new String[arr.length];
		int j=0;
		for(int i=m;i<arr.length;i++) {
			ans[j++]=arr[i];
		}
		int i=0;
		while(j<arr.length) {
			ans[j++]=arr[i++];
		}
		for(String str:ans) {
			System.out.println(str);
		}
	}
}
