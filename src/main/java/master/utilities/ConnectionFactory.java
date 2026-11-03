package master.utilities;
import java.sql.*;
public class ConnectionFactory {
	private Connection cn=null;
	public Connection getConn()
	{
		try
		{
		Class.forName("com.mysql.cj.jdbc.Driver");//REGISTER AND LOAD THE JDBC DRIVER
		//ESTABLISH THE CONNECTION
		 String url = System.getenv("DB_URL");
String username = System.getenv("DB_USERNAME");
String password = System.getenv("DB_PASSWORD");

this.cn = DriverManager.getConnection(url, username, password);
		
		}
		
		catch(ClassNotFoundException ce)
		{
			ce.printStackTrace();
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return cn;


	}
}
