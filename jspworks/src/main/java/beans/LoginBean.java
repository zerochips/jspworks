package beans;

import java.io.Serializable;

public class LoginBean implements Serializable {

	private static final long serialVersionUID = 1L;
	
	// 필드
	private String userid;
	private String passwd;
	
	// 필드 값 설정 - 상수로 설정 - 변경할 수 없음 - final 사용
	private final String _userid = "today";
	private final String _passwd = "1234";
	
	// 생성자
	public LoginBean() {}

	// 로그인 체크 - DAO
	public boolean checkUser() {
		if(userid.equals(_userid) && passwd.equals(_passwd)) {
			return true;
		}else {
			return false;
		}
	}
	
	// getter, setter 메서드
	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	};	
	
	// Bean = VO + DAO
	// VO - 클래스(자료형)
	// DAO-입,출력, 검색,아이디체크 함수제어
}
