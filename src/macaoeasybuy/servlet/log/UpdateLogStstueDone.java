package macaoeasybuy.servlet.log;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import macaoeasybuy.dao.log.LogThingDao;

public class UpdateLogStstueDone extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String UserLogId=new String(request.getParameter("UserLogoid").getBytes("ISO-8859-1"),"utf-8");//»’÷æ±‡∫≈
		int UserOid=Integer.parseInt(UserLogId);
		LogThingDao.updateUserLogStatueDone(UserOid);
     	response.sendRedirect("shopdiary.jsp");

	}

}
