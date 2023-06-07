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
	
	// 주소 상세보기 - 1개만 가져오기
	public AddrBook getAddrBook(String username) {
		AddrBook addrBook = null;
		
		for(int i =0; i <addrList.size(); i++) {	// 전체를 순회하면서
			// 이미 저장된 이름을 변수로 할당 - dbUsername 변수로
			String dbUsername = addrList.get(i).getUsername();
			if(dbUsername.equals(dbUsername)) {		// 외부 입력된 이름과 일치하면
				addrBook = addrList.get(i);			// 주소 1개를 가져옴
				break;
			}
		}		
		return addrBook;	// 주소를 반환함
	}	
	
	// 주소 삭제
	public void deleteAddrBook(String username) {
		AddrBook addrBook = null;
		
		for(int i =0; i <addrList.size(); i++) {	// 전체를 순회하면서
			// 이미 저장된 이름을 변수로 할당 - dbUsername 변수로
			String dbUsername = addrList.get(i).getUsername();
			if(dbUsername.equals(dbUsername)) {	// 외부 입력된 이름과 일치하면
				addrBook = addrList.get(i);		// 주소 1개가 있어야
				addrList.remove(addrBook);		// 주소 삭제	- 여기 한 줄만 추가되었음
				break;
			}
		}		
	}	
	
}
