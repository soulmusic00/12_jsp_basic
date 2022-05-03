package _08_servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/MyPage")
public class MyPage extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		// 1) getAttribute(); 메서드를 통하여 세션값을 가져온다.
		String id = (String)session.getAttribute("id");
		
		/*
		 * 2) 세션값을 통하여 DB에서 관련정보를 가져온다.
		 * 
		 * 3) request.setAttribute();메서드로 데이터를 화면으로 전송한다.
		 * 
		 * */
		
		RequestDispatcher dis = request.getRequestDispatcher("chapter08_servlet/05_myPage.jsp");
		dis.forward(request, response);
	
	}


}
