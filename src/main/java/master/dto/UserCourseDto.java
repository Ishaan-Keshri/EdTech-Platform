package master.dto;
import java.util.Date;
public class UserCourseDto {
	private String uname;
	private String cid;
	private Date endt;
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public Date getEndt() {
		return endt;
	}
	public void setEndt(Date endt) {
		this.endt = endt;
	}
	
}
