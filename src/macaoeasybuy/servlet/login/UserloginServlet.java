package macaoeasybuy.servlet.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import macaoeasybuy.bean.login.User;
import macaoeasybuy.dao.logindao.UserDaoManage;

public class UserloginServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userId=new String(request.getParameter("UserName").getBytes("ISO-8859-1"),"utf-8");//ÓÃ»§ÐÕÃû
		String PassWord=new String(request.getParameter("PassWord").getBytes("ISO-8859-1"),"utf-8");//µÇÂ¼ÃÜÂë
        
		UserDaoManage userManage=new UserDaoManage();
		User user=userManage.loginValidate(userId);
		if(user==null||!user.getPassWord().equals(PassWord.trim())){
			request.getRequestDispatcher("Login.jsp").forward(request, response);
		}else{
			HttpSession hs = request.getSession(true);
			hs.setAttribute("user", user);
			response.sendRedirect("index.jsp");
		}
		
		
	}
}
