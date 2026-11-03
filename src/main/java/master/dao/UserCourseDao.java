package master.dao;
import java.sql.*;

import master.dto.UserCourseDto;
import master.utilities.ConnectionFactory;
public class UserCourseDao {
	private Connection cn=null;
	private Statement st=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	private String select_sql ="SELECT c.* " +"FROM user_courses uc " +"JOIN courses c ON uc.CID = c.CID " +"WHERE uc.UNAME = ? " +"ORDER BY c.CID ";

	private String delete_sql="delete from user_courses where uname=? and cid=?";
	public int insertData(UserCourseDto ucdto) {
	    int status = 0;
	    String sql = "INSERT INTO user_courses (UNAME,CID) VALUES (?, ?)";
	    try (Connection cn = new ConnectionFactory().getConn();
	         PreparedStatement ps = cn.prepareStatement(sql)) {
	        ps.setString(1, ucdto.getUname());
	        ps.setString(2, ucdto.getCid());
	        status = ps.executeUpdate();
	        System.out.println("DEBUG: Inserted rows = " + status);

	    } catch (SQLException se) {
	        se.printStackTrace(); // Shows duplicate key or any SQL issue
	    }
	    return status;
	}
	public int deleteData(UserCourseDto ucdto)
	{
		int status = 0;
		
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			ps=cn.prepareStatement(delete_sql);
			ps.setString(1, ucdto.getUname());
	        ps.setString(2, ucdto.getCid());
			status=ps.executeUpdate();
		}
		
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return status;
	}
	public ResultSet getdata(String uname) {
	    try {
	        ConnectionFactory con = new ConnectionFactory();
	        cn = con.getConn();
	        ps = cn.prepareStatement(select_sql);
	        ps.setString(1, uname);
	        rs = ps.executeQuery();
	    } catch (SQLException se) {
	        se.printStackTrace();
	    }
	    return rs;
	}

}
