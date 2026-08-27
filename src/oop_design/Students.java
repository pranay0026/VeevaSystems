package oop_design;

public final class Students {
	private final int id;
	private final String name;
	private final String branch;
	Students(int id,String name,String branch){
		this.id=id;
		this.name=name;
		this.branch=branch;
	}
	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getBranch() {
		return branch;
	}
	@Override
	public String toString() {
		return "Students [id=" + id + ", name=" + name + ", branch=" + branch + "]";
	}
	
}
