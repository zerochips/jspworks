package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.Board;
import board.BoardDAO;
import member.Member;
import member.MemberDAO;


@WebServlet("*.do")	// 경로를 .do로 끝나도록 설정합니다
public class MainController extends HttpServlet {
	
	private static final long serialVersionUID = 4L;
	//MemberDAO 객체 선언
	MemberDAO memberDAO;	// 여기선 선언을 하고요 init에서 new 합시다
	BoardDAO boardDAO;

	public void init(ServletConfig config) throws ServletException {
		//객체 생성
		memberDAO = new MemberDAO();
		boardDAO = new BoardDAO();
		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doPost(request, response);	//get으로 열리면 post로 갈거아닙니까
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		
		
		// 한글 인코딩
		request.setCharacterEncoding("utf-8");
		
		// 한글 컨텐츠 유형 응답
		response.setContentType("text/html; charset=utf-8");
		
		
		
		// command 패턴으로 url 설정하기		
		String uri = request.getRequestURI();
		System.out.println(uri);
		String command = uri.substring(uri.lastIndexOf('/'));
		System.out.println(uri.lastIndexOf('/'));
		System.out.println("command: " + command);
		
		String nextPage = null;
		
		//출력 스트림 객체 생성
		PrintWriter out = response.getWriter();
		
		// 세션 객체 생성
		HttpSession session = request.getSession();
		
		// 회원 목록 조회
		if(command.equals("/memberList.do")) {	// *** [ memberList.jsp 설정 ] ***
			
			ArrayList<Member> memberList = memberDAO.getMemberList();	// 반환이 ArrayList라고 했죠
			
			// 모델 생성 보내기
			request.setAttribute("memberList", memberList);			
			nextPage = "/member/memberList.jsp";
			
		}else if(command.equals("/memberForm.do")) {	// *** [ memberForm.jsp 설정 ] ***
			nextPage = "/member/memberForm.jsp";
		
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
			newMember.setPasswd(passwd);
			newMember.setName(name);
			newMember.setGender(gender);		
			
			memberDAO.addMember(newMember);// 회원 매개로 DB에 저장
			
			nextPage = "index.jsp";
		}else if(command.equals("/memberView.do")){	// 회원 정보 요청
			
			// memberId 받기
			String memberId = request.getParameter("memberId");
			
			Member member = memberDAO.getMember(memberId);
			
			request.setAttribute("member", member);	// member 모델 생성
			
			nextPage = "/member/memberView.jsp";
			
			
		}else if(command.equals("/loginForm.do")) {	// 로그인 페이지 요청
			nextPage = "/member/loginForm.jsp";	
			
			
		}else if(command.equals("/loginProcess.do")) {	// 로그인 체크 요청
			// 로그인 폼에 입력된 데이터 받아오기
			String memberId = request.getParameter("memberId");
			String passwd = request.getParameter("passwd");			
			
			// 멤버 객체를 보내야죠 생성해주겠습니다.
			Member loginMember = new Member();
			loginMember.setMemberId(memberId);
			loginMember.setPasswd(passwd);
			
			// 로그인 체크 처리 - boolean으로 반환했쬬
			boolean result = memberDAO.checkLogin(loginMember);
			if(result) {						
				// 세션 발급 - 아이디에 발급 멤버 아이디필드에다가만 발급을 한겁니다.
				session.setAttribute("sessionId", memberId);
				nextPage = "/index.jsp";
				
				
				
			}else {
				// 2가지 방법 : 1. alert(), 2. error - msg 보내기(모델로해서)
				out.println("<script>");
				out.println("alert('아이디와 비밀번호를 확인해주세요.')");
				out.println("history.go(-1)");	// 이전 페이지로 이동
				out.println("</script>");				
			}				
		}else if(command.equals("/logout.do")) {
			// 세션 모두 삭제(해제)
			session.invalidate();
			nextPage = "/index.jsp";
		}		
		
		
		
		// 게시판 관리
		if(command.equals("/boardList.do")) {
			ArrayList<Board> boardList = boardDAO.getBoardList();
			
			// 모델 생성
			request.setAttribute("boardList", boardList);
			
			nextPage = "/board/boardList.jsp";
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
 