package master.dao;
import java.sql.*;
import master.dto.CourseDto;
import master.utilities.ConnectionFactory;
public class CourseDao {
	private Connection cn=null;
	private Statement st=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	//private String insert_sql="INSERT INTO courses (cid, cname, iname, sname, cdue, cdis, cmat, cvideo) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
	private String delete_sql="delete from courses where cid=?";
	private String update_sql="update courses set cname=?,iname=?,sname=?,cdue=?,cdis=?,cmat=?,cvideo=? where cid=?";
	private String select_sql="select * from courses order by cid";
	public int insertData(CourseDto cdto) {
	    int status = 0;
	    String sql = "INSERT INTO courses (CID, CNAME, INAME, SNAME, CDUE, CDIS, CMAT, CVIDEO) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
	    try (Connection cn = new ConnectionFactory().getConn();
	         PreparedStatement ps = cn.prepareStatement(sql)) {

	        ps.setString(1, cdto.getCid());
	        ps.setString(2, cdto.getCname());
	        ps.setString(3, cdto.getIname());
	        ps.setString(4, cdto.getSname());
	        ps.setString(5, cdto.getCdue());
	        ps.setString(6, cdto.getCdis());
	        ps.setString(7, cdto.getCmat());
	        ps.setString(8, cdto.getCvideo());

	        status = ps.executeUpdate();
	        System.out.println("DEBUG: Inserted rows = " + status);

	    } catch (SQLException se) {
	        se.printStackTrace(); // Shows duplicate key or any SQL issue
	    }
	    return status;
	}
	public void deleteData(CourseDto cdto)
	{
		
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			ps=cn.prepareStatement(delete_sql);
			ps.setString(1,cdto.getCid());
			ps.executeUpdate();
		}
		
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	public int updateData(CourseDto cdto)
	{
		int status = 0;
		try (Connection cn = new ConnectionFactory().getConn();
        PreparedStatement ps = cn.prepareStatement(update_sql)) 
		{
		 ps.setString(8,cdto.getCid());
		 ps.setString(1,cdto.getCname());
		 ps.setString(2,cdto.getCname());
		 ps.setString(3,cdto.getSname());
		 ps.setString(4,cdto.getCdue());
		 ps.setString(5,cdto.getCdis());
		 ps.setString(6,cdto.getCmat());
		 ps.setString(7,cdto.getCvideo());
		 status = ps.executeUpdate();
	     System.out.println("DEBUG: Updateded rows = " + status);
		}
		
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return status;
	}
	public ResultSet getData()
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			st=cn.createStatement();
			rs=st.executeQuery(select_sql);
		}
		
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return rs;
	}
	public ResultSet searchData(String cid)
	{
		String sql="select * from courses where cid='"+cid+"'";
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			st=cn.createStatement();
			rs=st.executeQuery(sql);
		}
		
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return rs;
	}
}
