package implementations;

public class BinaryTree {
	public Node root;
	public BinaryTree() {
		root=null;
	}
	public void insert(int key) {
		root=insertRec(root,key);
	}
	public Node insertRec(Node root,int key) {
		if(root==null) {
			root=new Node(key);
			return root;
		}
		if(key<root.key) {
			root.left=insertRec(root.left,key);
		}
		else if(key>root.key) {
			root.right=insertRec(root.right,key);
		}
		return root;
	}
	public static void displayRoot(BinaryTree tree) {
		
		System.out.println(tree.root.key);
	}
	public static void main(String[] args) {
        BinaryTree tree = new BinaryTree();

        // Insert some nodes
        tree.insert(50);
        tree.insert(30);
        tree.insert(20);
        tree.insert(40);
        tree.insert(70);
        tree.insert(60);
        tree.insert(80);
        displayRoot(tree);
}
}
