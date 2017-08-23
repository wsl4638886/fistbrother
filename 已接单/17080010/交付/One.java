import java.util.Scanner;

public class One{//451
   public static void main(String[] args){
        int num,i,j,k;
        Scanner sc=new Scanner(System.in);
        System.out.println("Enter a 3-digit integer");
        num=sc.nextInt();
        i=num/100;
        j=num/10%10;
        k=num%100%10;
        //System.out.println(i+":"+j+":"+k); 
        boolean result=(i+j)>k?false:true;
        if(result)
            System.out.println("The number is true");
        else
            System.out.println("The number is false");
       
   }
}