package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JdbcTest {
	
	// oracle 패키지에 있는 jdbc 
	static String driverClass = "oracle.jdbc.OracleDriver";		// 드라이버 이름
	static String url = "jdbc:oracle:thin:@localhost:1521:xe";	// db 경로(위치)	/* 오라클 mydb 우클릭 속성에 들어가서 확인가능 */
	static String username = "c##mydb";							// user 이름
	static String password = "mydb";							// 오라클 비밀번호	
	
	
	public static void main(String[] args) {
		// 연결 객체가 필요합니다.
		Connection conn = null;		// import java.sql.Connection;
		
		try {
			Class.forName(driverClass);
			conn = DriverManager.getConnection(url, username, password);	// 두번째꺼 선택
			System.out.println("연결 객체 생성: " + conn);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {	// 두번째꺼
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		

	}

}
