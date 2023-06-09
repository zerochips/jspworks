package member;

import java.io.Serializable;
import java.util.Date; /* sql로하면 에러나요! */

public class Member implements Serializable{
	// 자료형 만들고 db테이블 만드는 순으로 진행하면 됩니다.
	private static final long serialVersionUID = 3L;
	// 필드
	private String memberId;
	private String passWd;
	private String name;
	private String gender;
	private Date joinDate;
	
	// 기본 생성자
	public Member() {}
	
	//getter, setter
	public String getMemberId() {
		return memberId;
	}
	
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	
	public String getPassWd() {
		return passWd;
	}
	
	public void setPassWd(String passWd) {
		this.passWd = passWd;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getGender() {
		return gender;
	}
	
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public Date getJoinDate() {
		return joinDate;
	}
	
	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
	
}
