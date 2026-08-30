package dsa;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Scanner;

public class EmployeeImplementation {
	static HashSet<Employee> res=new HashSet<>();
	static Scanner sc=new Scanner(System.in);
	public static void main(String[] args) {
		Employee emp1=new Employee(1,"Pranay",100000);
		Employee emp2=new Employee(2,"Kali",75000);
		Employee emp3=new Employee(3,"Krishna",60000);
		Employee emp4=new Employee(4,"Koppineedi",65250);
		Employee emp5=new Employee(5,"Vinay",90000);
		Employee emp6=new Employee(6,"Ammu",850000);
		res.addAll(Arrays.asList(emp1,emp2,emp3,emp4,emp5,emp6));
		while(true) {
			System.out.println("1 for insert\n2. for cutOff salary\n3. Top K employees");
			int ch=sc.nextInt();
			if(ch==1) {
				insert();
			}
			else if(ch==2) {
				System.out.println("Enter cutOff Salary");
				int cutOff=sc.nextInt();
				certainSalary(res,cutOff);
			}
			else if(ch==3) {
				List<Employee> hs=new ArrayList<>(res);
				System.out.println("Enter K");
				int k=sc.nextInt();
				hs=getTopK(hs,k);
				for(Employee emp:hs) {
					System.out.println(emp.toString());
				}
			}
			else {
				break;
			}
		}
		
		sc.close();
	}
	public static List<Employee> getTopK(List<Employee> hs,int k) {
		hs.sort((a,b) -> Double.compare(b.getSalary(), a.getSalary()));
		return hs.subList(0, Math.min(k, hs.size()));
	}
	public static void insert() {
		
		System.out.println("Enter id");
		int id=sc.nextInt();
		sc.nextLine();
		for(Employee ep:res) {
			if(id==ep.getId()) {
				System.out.println("Employee already exist");
				return;
			}
		}
		System.out.println("Enter name");
		String name=sc.nextLine();
		System.out.println("Enter salary");
		double salary=sc.nextDouble();
		Employee emp=new Employee(id,name,salary);
		res.add(emp);
		
	}
	public static void certainSalary(HashSet<Employee> res,int cutOff) {
		for(Employee emp: res) {
			if(emp.getSalary()>=cutOff)
			System.out.println(emp.toString());
		}

	}
}
class Employee{
	private int id;
	private String name;
	private double salary;
	Employee(){
		
	}
	Employee(int id,String name,double salary){
		this.id=id;
		this.name=name;
		this.salary=salary;
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
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	@Override
	public String toString() {
		return "Employee [id=" + id + ", name=" + name + ", salary=" + salary + "]";
	}
	
	
}
