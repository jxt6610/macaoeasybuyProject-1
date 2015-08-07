package macaoeasybuy.servlet.log;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import macaoeasybuy.dao.log.LogThingDao;
import macaoeasybuy.dao.logindao.UserDaoManage;
import macaoeasybuy.tool.pagebean.DataTimeNumber;

public class ShopLogManage extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String LogTitle=new String(request.getParameter("LogTitle").getBytes("ISO-8859-1"),"utf-8");//日志标题
		String LogBody=new String(request.getParameter("LogBody").getBytes("ISO-8859-1"),"utf-8");//日志内容
		String LogStatue=new String(request.getParameter("LogStatue").getBytes("ISO-8859-1"),"utf-8");//日志状态
		String LogLevel=new String(request.getParameter("LogLevel").getBytes("ISO-8859-1"),"utf-8");//日志级别
		String[] checkBox= request.getParameterValues("checkBox");//参与人员
		
		String LogId=DataTimeNumber.LogNumber(LogThingDao.queryAllLogThing().size());
		for (int i=0; i<checkBox.length; i++){
			int lOgStatue=Integer.parseInt(LogStatue);
			int lOglevel=Integer.parseInt(LogLevel);
			LogThingDao.insertLog(LogId, LogTitle, LogBody, lOgStatue, lOglevel,checkBox[i]);
		}
         response.sendRedirect("shopdiary.jsp");

	}

}
