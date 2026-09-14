package dsa;

public class ArrayElements {
	public int n;
	public static int[] arr;
	public static int i;
	public ArrayElements(int n) {
		this.n=n;
		arr=new int[n];
		i=0;
	}
	
	public  void addElements(int ele) {
		arr[i++]=ele;
	}
}
