package _07_el_jstl;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import _04_bean.ProductBean;

@WebServlet("/JstlEx03")
public class JstlEx03 extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String[] datas = {"데이터1" , "데이터2" , "데이터3" , "데이터4" , "데이터5" };
		
		request.setAttribute("datas", datas);
		
		ArrayList<ProductBean> productList = new ArrayList<ProductBean>();
		
		for (int i = 1; i < 11; i++) {
			
			ProductBean productBean = new ProductBean();
			productBean.setPdCd("P00" + i);
			productBean.setPdNm("기계식키보드" + i);
			productBean.setDeptCd("dept" + i);
			productBean.setDeptNm("제조팀" + i);
			productBean.setMgrCd("M00" + i);
			productBean.setMgrNm("홍길동" + i);
			
			productList.add(productBean);
			
		}
		
		request.setAttribute("productList" , productList);
		
		
		RequestDispatcher dis = request.getRequestDispatcher("chapter07_el_jstl/jstlEx03.jsp");
		dis.forward(request, response);
		
	}

}




