package servlet;

import java.io.IOException;

import javax.print.attribute.standard.OrientationRequested;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//서버측 한글 인코딩
		//response.setCharacterEncoding("utf-8");
		//서버측 한글 인코딩(폼에 입력된 한글 처리)
		request.setCharacterEncoding("utf-8");
		
		// jsp 폼에 입력된 자료 수집
		String userid = request.getParameter("userid");
		String passwd = request.getParameter("passwd");
		
		// console에 찍어볼게요
		System.out.println("아이디: " + userid);
		System.out.println("비밀번호: " + passwd);
	}

}
