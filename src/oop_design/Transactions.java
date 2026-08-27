package oop_design;


import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Transactions {
	public static void main(String[] args) {
		List<AllTrans> transactions=Arrays.asList(
			    new AllTrans("alice,20,800,mtv"),
			    new AllTrans("alice,50,100,beijing"),
			    new AllTrans("alice,51,100,frankfurt"),
			    new AllTrans("bob,10,1500,delhi"),
			    new AllTrans("bob,100,200,mumbai"),
			    new AllTrans("charlie,200,500,hyderabad"),
			    new AllTrans("charlie,300,600,hyderabad"),
			    new AllTrans("david,400,1200,chennai"),
			    new AllTrans("emma,500,700,bangalore")
			);
List<AllTrans> invalidList = invalidTransactions(transactions);
        
        System.out.println("Invalid transactions:");
        for (AllTrans tx : invalidList) {
            System.out.println(tx.toString());
        }
	}
	public static List<AllTrans> invalidTransactions(List<AllTrans> lis){
		List<AllTrans> res=new ArrayList<>();
		for(int i=0;i<lis.size();i++) {
			boolean invalid=false;
			if(lis.get(i).amount>1000) {
			    invalid=true;
			}
			for(int j=0;j<lis.size();j++) {
			    if(i==j) continue;
			    AllTrans t1=lis.get(j);
			    if(t1.name.equals(lis.get(i).name)) {
			        if(Math.abs(t1.time-lis.get(i).time)<60 &&
			           !t1.city.equals(lis.get(i).city)) {
			            invalid=true;
			            break;
			        }
			    }
			}
			if(invalid) {
			    res.add(lis.get(i));
			}
		}
		return res;
	}
	
	
}
class AllTrans{
	String original;
	String name;
	int time;
	int amount;
	String city;
	public AllTrans(String original) {
		this.original=original;
		String[] parts=original.split(",");
		this.name=parts[0];
		this.time=Integer.parseInt(parts[1]);
		this.amount=Integer.parseInt(parts[2]);
		this.city=parts[3];
	}
	@Override
	public String toString() {
		return "AllTrans [original=" + original + ", name=" + name + ", time=" + time + ", amount=" + amount + ", city="
				+ city + "]";
	}
	
}
