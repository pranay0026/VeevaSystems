package dsa;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Queue;
import java.util.Stack;

import implementations.BinaryTree;
import implementations.Node;
public class TopViewTree {
	public static void main(String[] args) {
		BinaryTree tree=new BinaryTree();
		tree.insert(10);
		tree.insert(100);
		tree.insert(5);
		tree.insert(120);
		tree.insert(80);
		tree.insert(2);
		ArrayList<Integer> al=topView(tree);
		for(int i:al) {
			System.out.println(i);
		}
	}
	public static ArrayList<Integer> topView(BinaryTree tree) {
		Stack<Integer> st=new Stack<>();
		Queue<Integer> qu=new LinkedList<>();
		Node node=tree.root;
		while(node.left!=null) {
			st.push(node.left.key);
			node=node.left;
		}
		node=tree.root;
		while(node.right!=null) {
			qu.offer(node.right.key);
			node=node.right;
		}
		ArrayList<Integer> al=new ArrayList<>();
		while(!st.isEmpty()) {
			al.add(st.pop());
		}
		al.add(tree.root.key);
		while(!qu.isEmpty()) {
			al.add(qu.poll());
		}
		return al;
	}
}
