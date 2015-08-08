package macaoeasybuy.servlet.store;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import macaoeasybuy.dao.store.StoreDao;

public class StoreServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		

		String StoreId=new String(request.getParameter("StoreId").getBytes("ISO-8859-1"),"utf-8");//
		String PassWord=new String(request.getParameter("PassWord").getBytes("ISO-8859-1"),"utf-8");//
		String UserId=new String(request.getParameter("UserId").getBytes("ISO-8859-1"),"utf-8");//
		String StoreName=new String(request.getParameter("StoreName").getBytes("ISO-8859-1"),"utf-8");//
		String StoreSecondName=new String(request.getParameter("StoreSecondName").getBytes("ISO-8859-1"),"utf-8");//
		String StoreOnlyId=new String(request.getParameter("StoreOnlyId").getBytes("ISO-8859-1"),"utf-8");//
		String StoreDescribe=new String(request.getParameter("StoreDescribe").getBytes("ISO-8859-1"),"utf-8");//
		String GoodsType=new String(request.getParameter("GoodsType").getBytes("ISO-8859-1"),"utf-8");//
		String UserName=new String(request.getParameter("UserName").getBytes("ISO-8859-1"),"utf-8");//
		String UserPhone=new String(request.getParameter("UserPhone").getBytes("ISO-8859-1"),"utf-8");//
		String UserWhatsapp=new String(request.getParameter("UserWhatsapp").getBytes("ISO-8859-1"),"utf-8");//
		String UserWechat=new String(request.getParameter("UserWechat").getBytes("ISO-8859-1"),"utf-8");//
		String StoreIsNo=new String(request.getParameter("StoreIsNo").getBytes("ISO-8859-1"),"utf-8");//
		String StoreIsAddress=new String(request.getParameter("StoreIsAddress").getBytes("ISO-8859-1"),"utf-8");//

		
     	int Goodstype=Integer.parseInt(GoodsType);
		int StoreIsno=Integer.parseInt(StoreIsNo);
		StoreDao.updateStoreInfor(StoreId, StoreName, StoreSecondName, StoreOnlyId, StoreDescribe, Goodstype, StoreIsno, StoreIsAddress, UserId);
		
		response.sendRedirect("shopsetting.jsp");
	}

}
