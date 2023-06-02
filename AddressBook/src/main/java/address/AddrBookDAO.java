package address;

import java.util.ArrayList;

public class AddrBookDAO {	
	// 자료를 저장할 ArrayList의 객체 생성 addrList 이게 객체잖아요~
	private ArrayList<AddrBook> addrList = new ArrayList<>(); 
	
	// 자료 삽입
	public void add(AddrBook addrBook) {
		addrList.add(addrBook);		// 각각의 주소가 주소리스트에 들어간다	// 생성된거 이렇게 담아라~
	}
	
	// 자료 목록 조회(출력)
	public ArrayList<AddrBook> getList(){
		return addrList;
	}
	
	
}
