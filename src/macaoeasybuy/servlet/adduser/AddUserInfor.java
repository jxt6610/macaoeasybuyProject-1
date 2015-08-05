package macaoeasybuy.servlet.adduser;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import macaoeasybuy.dao.logindao.UserDaoManage;

public class AddUserInfor extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		  String UserName=new String(request.getParameter("UserName").getBytes("ISO-8859-1"),"utf-8");//店员名称
		  String UserSex=new String(request.getParameter("UserSex").getBytes("ISO-8859-1"),"utf-8");//店员名称
		  String UserId=new String(request.getParameter("UserId").getBytes("ISO-8859-1"),"utf-8");//店员名称
		  String PassWord=new String(request.getParameter("PassWord").getBytes("ISO-8859-1"),"utf-8");//店员名称
		  String UserPhone=new String(request.getParameter("UserPhone").getBytes("ISO-8859-1"),"utf-8");//店员名称
		  String UserWechat=new String(request.getParameter("UserWechat").getBytes("ISO-8859-1"),"utf-8");//店员名称
		  String UserWhatsapp=new String(request.getParameter("UserWhatsapp").getBytes("ISO-8859-1"),"utf-8");//店员名称
		  String UserRole=new String(request.getParameter("UserRole").getBytes("ISO-8859-1"),"utf-8");//店员名称
		  String UserProper=new String(request.getParameter("UserProper").getBytes("ISO-8859-1"),"utf-8");//店员名称

		  int Userproper=Integer.parseInt(UserProper);
		  int Userrole=Integer.parseInt(UserRole);
		  System.out.println(UserId);
		  UserDaoManage.insertUser(UserId, UserName, UserSex, Userrole, PassWord, UserPhone, UserWechat, UserWhatsapp, Userproper);
		  response.sendRedirect("shopmember.jsp");
	}

}
