package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.Member;
import member.MemberDAO;


@WebServlet("*.do")	// 경로를 .do로 끝나도록 설정합니다
public class MainController extends HttpServlet {
	
	private static final long serialVersionUID = 4L;
	//MemberDAO 객체 선언
	MemberDAO memberDAO;	// 여기선 선언을 하고요 init에서 new 합시다

	public void init(ServletConfig config) throws ServletException {
		//객체 생성
		memberDAO = new MemberDAO();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doPost(request, response);	//get으로 열리면 post로 갈거아닙니까
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		//한글 인코딩
		request.setCharacterEncoding("utf-8");
		
		// command 패턴으로 url 설정하기		
		String uri = request.getRequestURI();
		System.out.println(uri);
		String command = uri.substring(uri.lastIndexOf('/'));
		System.out.println(uri.lastIndexOf('/'));
		System.out.println("command: " + command);
		
		String nextPage = null;
		
		// 회원 목록 조회
		if(command.equals("/memberList.do")) {	// *** [ memberList.jsp 설정 ] ***
			
			ArrayList<Member> memberList = memberDAO.getMemberList();	// 반환이 ArrayList라고 했죠
			
			// 모델 생성 보내기
			request.setAttribute("memberList", memberList);			
			nextPage = "memberList.jsp";
			
		}else if(command.equals("/memberForm.do")) {	// *** [ memberForm.jsp 설정 ] ***
			nextPage = "memberForm.jsp";
		
		}else if(command.equals("/addMember.do")) {
			// 회원가입 후 페이지 이동 경로 설정
			// 회원가입 폼에 입력된 데이터 받기
			String memberId = request.getParameter("memberId");
			String passwd = request.getParameter("passwd1");
			String name = request.getParameter("name");
			String gender = request.getParameter("gender");
			
			// 이 member를 객체 생성해야하죠
			Member newMember = new Member();	// 회원 객체 생성
			newMember.setMemberId(memberId);
			newMember.setPassWd(passwd);
			newMember.setName(name);
			newMember.setGender(gender);		
			
			memberDAO.addMember(newMember);// 회원 매개로 DB에 저장
			nextPage = "index.jsp";
		}
		
		// 포워딩
		RequestDispatcher dispatcher = 
				request.getRequestDispatcher(nextPage);	//nextPage 변수로 할당해줍니다.
		
		dispatcher.forward(request, response);	// 보내주는겁니다.
		
		
	}

}
/*
1. url 매핑
2. 제어함수(DAO, VO)
 
 
 
*/
 