package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCUtil;

public class MemberDAO {
	// 필드
	private Connection conn = null;	//연결
	private PreparedStatement pstmt = null;	//검색
	private ResultSet rs = null;	// 자료 가져올 때
	
	// 회원 가입
	public void addMember(Member member) {
		conn = JDBCUtil.getConnection();
		String sql = "INSERT INTO t_member (memberid, passpw, name, gender) "
				+ "VALUES (?, ?, ?, ?)";		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getMemberId());
			pstmt.setString(2, member.getPassWd());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getGender());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(conn, pstmt);
		}
	}
	
	
	

	// 회원 목록
	public ArrayList<Member> getMemberList(){
		ArrayList<Member> memberList = new ArrayList<>();
		conn = JDBCUtil.getConnection();	// return 해줄거고
		String sql = "SELECT * FROM t_member ORDER BY joindate DESC";	//최근 날짜순으로 정리
		try {
			pstmt = conn.prepareStatement(sql); //sql 처리
			rs = pstmt.executeQuery();			// 가져오는게 rs 죠
			while(rs.next()) {					//rs.next()가 있으면
				Member member = new Member();	// db에서 가져온걸 여기서 세팅을 해야겠죠
				
				member.setMemberId(rs.getString("memberid"));	// 아이디
				member.setPassWd(rs.getString("passpw"));		// 비밀번호
				member.setName(rs.getString("name"));			// 이름
				member.setGender(rs.getString("gender"));		// 성별
				member.setJoinDate(rs.getDate("joindate"));		// 날짜
				
				memberList.add(member);	// 리스트에 저장 - 모두 가져왔으면 담아야죠
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(conn, pstmt, rs);
		}		
		return memberList;
	}
	
}
/*
url을 생성해야겠죠
인덱스 페이지를 하나 만들어볼게요

*/