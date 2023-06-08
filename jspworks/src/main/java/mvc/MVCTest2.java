package mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MVCTest2 extends HttpServlet {

	private static final long serialVersionUID = 20L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// src -> main -> WEB-INF -> web.xml 설정
		// 짝수, 홀수 판정 후 결과를 jsp에 보내기

		int num = 0;

		if (request.getParameter("num") != null) {
			num = Integer.parseInt(request.getParameter("num"));
		}

		String result = ""; // 모델(결과 데이터)
		if (num % 2 == 0) {
			result = "짝수";
		} else {
			result = "홀수";
		}

		// Moder 생성
		request.setAttribute("result", result); // 택배로 보내야죠

		// 포워딩
		RequestDispatcher dispatcher = request.getRequestDispatcher("/mvc/mvc02.jsp"); // 여기서 끝나면 X

		dispatcher.forward(request, response);

	}

}
