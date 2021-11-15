import com.codegym.Calculator;

import java.security.NoSuchAlgorithmException;

public class Demo {
  public void firstEquation (int a,int  b){
      if (a==0 && b==0){
          System.out.println("Pt co vo so nghiem");
      }
      else if (a==0 && b !=0){
          System.out.println("Pt vo nghiem");
      }
      else {
          double x = -b/a;
          System.out.println("Pt co nhiem la: x = " +x );
      }
  }
}
