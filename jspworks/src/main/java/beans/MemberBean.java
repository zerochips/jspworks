package beans;

import java.io.Serializable;

// 인터페이스 serializable(직렬화 - 현재 객체 자체를 저장)
public class MemberBean implements Serializable{
	// 버전 id
	private static final long serialVersionUID = 1L;
	
	// 필드
	private int id = 2023101;
	private String name = "장그래";
	
	// 기본 생성자로 많이 생성합니다.
	public MemberBean() {}

	// 필드에 private 로 설정되어있기 때문에 - getter setter 메서드 사용해서 접근
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	};
	
	
	
}
