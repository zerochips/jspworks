package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCUtil;

public class BoardDAO {
	//필드
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
		
	// 게시글 목록
	public ArrayList<Board> getBoardList(){
		ArrayList<Board> boardList = new ArrayList<>();
		conn = JDBCUtil.getConnection();
		String sql = "SELECT * FROM t_board ORDER BY regdate DESC";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Board board = new Board();
				board.setBnum(rs.getInt("bnum"));	// 글번호를 db에서 가져와서 board.set
				board.setTitle(rs.getString("title"));
				board.setContent(rs.getString("content"));
				board.setRegDate(rs.getTimestamp("regdate"));
				board.setModifyDate(rs.getTimestamp("modifydate"));
				board.setHit(rs.getInt("hit"));
				board.setMemberId(rs.getString("memberid"));
				
				boardList.add(board);	//개별 board 객체를 추가 저장				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(conn, pstmt, rs);
		}		
		return boardList;
	}
	
	
	// 게시글 쓰기 - MemberDAO 회원가입과
	public void addBoard(Board board) {
		conn = JDBCUtil.getConnection();
		String sql = "INSERT INTO t_board(bnum, title, content, memberid) "
				+ "VALUES (b_seq.NEXTVAL, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getContent());
			pstmt.setString(3, board.getMemberId());
			pstmt.executeUpdate();	//db에 저장
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(conn, pstmt);
		}
	}
		
	// 게시글 상세 보기
	public Board getBoard(int bnum) {
		Board board = new Board();
		conn = JDBCUtil.getConnection();
		String sql = "SELECT * FROM t_board WHERE bnum = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bnum);	// 글 번호 바인딩 시킴
			rs = pstmt.executeQuery();	// 검색한 자료 가져옴
			if(rs.next()) {	// 데이터가 있으면 db에서 칼럼을 가져옴		//글번호, 글제목, 글내용, 작성일, 수정일, 조회수, 회원아이디(외래키)
				board.setBnum(rs.getInt("bnum"));		// 글번호를 db에서 가져와서 board.set
				board.setTitle(rs.getString("title"));
				board.setContent(rs.getString("content"));
				board.setRegDate(rs.getTimestamp("regdate"));
				board.setModifyDate(rs.getTimestamp("modifydate"));
				board.setHit(rs.getInt("hit"));
				board.setMemberId(rs.getString("memberid"));	
				
				// 조회수 1증가(수정이 발생함)
				int hit = rs.getInt("hit") + 1;
				
				sql = "UPDATE t_board SET hit = ? WHERE bnum = ?";
				// pstmt로가서 set 해주면 됩니다.
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, hit);
				pstmt.setInt(2, bnum);
				pstmt.executeUpdate();	// 다시 db에 저장
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return board;
	}
		
	// 게시글 삭제
	public void deleteBoard(int bnum) {
		conn = JDBCUtil.getConnection();
		String sql = "DELETE FROM t_board WHERE bnum = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bnum);
			pstmt.executeUpdate();	//db에서 삭제
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(conn, pstmt);
		}
	}
		
}
