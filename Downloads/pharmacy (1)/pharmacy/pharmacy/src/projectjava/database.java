
package projectjava;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class database {
       private final String url= "jdbc:mysql://localhost:3306/pharmacy";
    private final String username="teefa";
    private final String password="2002";
  public Connection conect() throws SQLException{
      
       //return  DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root", "root");
        return  DriverManager.getConnection(url,username,password);
    
  } 
}
