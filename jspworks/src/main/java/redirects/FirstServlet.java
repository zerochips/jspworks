package redirects;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/redir/first")	// 브라우저에서 요청하죠~ 
public class FirstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	public void init(ServletConfig config) throws ServletException {
		
	}

	
	public void destroy() {
		
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 문자 인코딩 
		// 나는 SecondServlet 에서 response.setContentType 으로 한글 인코딩을 해주면 
		// FirstServlet 에서 따로 문자 인코딩을 해주지 않아도 오류없이 출력이 됐었음.
		// 여기 FirstServlet 에서 문자 인코딩을 안했을 때 출력이 안되는 컴퓨터도 있어서
		// FirstServlet 과 SecondServlet [ 둘 다 문자 인코딩 설정 ]을 하는게 오류없이 안전한 방법
		request.setCharacterEncoding("utf-8");
		
		// ***** SecondServlet로 이동 ***** (/redir/second)
		response.sendRedirect("second");
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}

/*포워딩(forwarding) - 페이지 이동
redirect
dispatch
서블릿 -> Jsp
서블릿 -> 서블릿*/
