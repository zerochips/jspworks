package member;

// Member 빈, VO
public class Member {
	//필드
	private String userid;
	private String passwd;
	private String uname;
	
	// getter	
	public String getUserid() {
		return userid;
	}

	public String getPasswd() {
		return passwd;
	}
	
	public String getUname() {
		return uname;
	}
	
	// setter
	public void setUserid(String userid) {
		this.userid = userid;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}	

	public void setUname(String uname) {
		this.uname = uname;
	}
	
	
	
	
}
