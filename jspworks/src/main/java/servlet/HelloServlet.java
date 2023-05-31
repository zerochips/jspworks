package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/hello")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init() 호출");
	}	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 문서의 컨텐츠 유형 - 한글 인코딩 - 넘어오는게 없고 브라우저로 보내는거니까 setContentType 하는겁니다.
		response.setContentType("text/html; charset=utf-8");
		
		// 출력 스트림 out 객체 생성
		// servlet 서버 언어입니다 이게 발전해서 jsp가 나온거죠
		PrintWriter out = response.getWriter();
		out.println("Hello~ Servlet!<br>");
		out.println("안녕~ Servlet!");
		
	}
	
	public void destroy() {
		System.out.println("destroy() 호출");
	}

}
