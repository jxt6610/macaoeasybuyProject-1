package macaoeasybuy.servlet.createsupplier;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import macaoeasybuy.dao.supplierdao.SupplierManage;

public class CreateSupplier extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	  String SupplierName=new String(request.getParameter("SupplierName").getBytes("ISO-8859-1"),"utf-8");//供应商公司名称
	  String SupplierUserName=new String(request.getParameter("SupplierUserName").getBytes("ISO-8859-1"),"utf-8");//供应商名称
		String SupplierUserPhone=new String(request.getParameter("SupplierUserPhone").getBytes("ISO-8859-1"),"utf-8");//供应商电话
		String SupplierLINE=new String(request.getParameter("SupplierLINE").getBytes("ISO-8859-1"),"utf-8");//供应商LINE
		String SupplierWhatsapp=new String(request.getParameter("SupplierWhatsapp").getBytes("ISO-8859-1"),"utf-8");//供应商Whatsapp
		String SupplierWechat=new String(request.getParameter("SupplierWechat").getBytes("ISO-8859-1"),"utf-8");//供应商Wechat
		String SupplierPath=new String(request.getParameter("SupplierPath").getBytes("ISO-8859-1"),"utf-8");//供应商Wechat
		SupplierManage.insertSuppliers("20150000002", SupplierName, "1", SupplierUserName,SupplierUserPhone, SupplierPath,
				100, 1, SupplierLINE, SupplierWhatsapp, SupplierWechat);
		response.sendRedirect("addGoods.jsp");
	}

}
