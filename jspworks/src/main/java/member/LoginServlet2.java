package member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 경로의 깊이가 달라졌음
@WebServlet("/member/login")
public class LoginServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//서버측 한글 인코딩(폼에 입력된 한글 처리)
		request.setCharacterEncoding("utf-8");
		
		// 문서 컨텐츠 유형
		response.setContentType("text/html; charset=utf-8");
		
		// jsp 폼에 입력된 자료 수집
		String userid = request.getParameter("userid");
		String passwd = request.getParameter("passwd");
		String phone = request.getParameter("phone");
		
		// 출력 객체 생성 - 브라우저로 출력
		PrintWriter out = response.getWriter();
		
		String data = "<html><body>";
			   data += "<p>아이디: " + userid + "</p>";
			   data += "<p>비밀번호: " + passwd + "</p>";
			   data += "<p>전화번호: " + phone + "</p>";
			   data += "</body></html>";
			   
		out.println(data);
		
		// console에 찍어볼게요
		//System.out.println("아이디: " + userid);
		//System.out.println("비밀번호: " + passwd);
	}

}

/*
servlet을 생성할 때
1. 애너테이션(@)
2. web.xml(환경설정파일)
보안,인코딩


*/
