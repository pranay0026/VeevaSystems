package oop_design;

import java.util.HashMap;

public class StudentManagement {
	static HashMap<String,HashMap<Integer,Student>> records=new HashMap<>();
	public static void main(String[] args) {
		HashMap<Integer,Student> record=new HashMap<>();
		record.put(1,new Student(1,"Pranay","CAI"));
		record.put(2,new Student(2,"Krishna","AIML"));
		records.put("DSA",record);
		HashMap<Integer,Student> record2=new HashMap<>();
		record2.put(3,new Student(3,"Pranay","CAI"));
		record2.put(4,new Student(4,"Krishna","AIML"));
		record2.put(5,new Student(5,"Koppineedi","CSE"));
		records.put("FSD",record2);
		displayClass();
		highestClassName();
			
	}
	public static void displayClass() {
		for(String course:records.keySet()) {
			System.out.println("Course:"+course);
			for(Integer id:records.get(course).keySet()) {
				System.out.println(records.get(course).get(id).toString());
			}
		}
	}
	public static void highestClassName() {
		String cour="";
		int maxClass=Integer.MIN_VALUE;
		for(String course:records.keySet()) {
			if(records.get(course).size()>maxClass) {
				cour=course;
				maxClass=records.get(course).size();
			}
		}
		System.out.println(cour);
	}
	
}
class Student{
	private int id;
	private String name;
	private String branch;
	Student(int id,String name,String branch){
		this.id=id;
		this.name=name;
		this.branch=branch;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", branch=" + branch + "]";
	}
	
	
}
