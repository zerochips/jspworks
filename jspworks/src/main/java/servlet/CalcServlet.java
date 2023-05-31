package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// *** 안되면 서버에 모듈에 /jsp~~ 에서 /로 수정 변경할것! ***

@WebServlet("/Calculator/calc")
public class CalcServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//폼 데이터 가져오기
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		String op = request.getParameter("op");
		int result = 0;
		
		// 연산
		switch(op) {
		case "+":
			result = num1 + num2; break;
		case "-":
			result = num1 - num2; break;
		case "x":
			result = num1 * num2; break;
		case "/":
			result = num1 / num2; break;
		default:
			System.out.println("올바른 연산자가 아닙니다.");
		}
		
		// html형식 응답 처리
		response.setContentType("text/html; charset=utf-8");
		
		// 출력
		PrintWriter out = response.getWriter();
		
		// 데이터 보내기
		out.append("<link rel=\"stylesheet\" href=\"../resources/css/style.css\">")
		   .append("<div id=\"container\">")
		   .append("<h2>계산기</h2><hr>")
		   .append("<p>계산결과: " + result + "</p></div>");
		
	}
}
