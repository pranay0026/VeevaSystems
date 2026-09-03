package experiment;

import java.util.ArrayList;
import java.util.Arrays;

public class ArrayLists {
	public static void main(String[] args) {
		ArrayList<Integer> numbers = new ArrayList<>(Arrays.asList(1, 2));
		//System.out.println(numbers.get(0));
		numbers.set(1, 10);
		for(int i:numbers) {
			System.out.println(i);
		}
	}
}
