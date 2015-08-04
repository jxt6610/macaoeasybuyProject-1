package macaoeasybuy.servlet.updatepsupplier;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import macaoeasybuy.dao.supplierdao.SupplierManage;

public class UpdateSupplier extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		    String GoodsNo=new String(request.getParameter("goodsNoS").getBytes("ISO-8859-1"),"utf-8");//商品编号
		    String SupplierName=new String(request.getParameter("SupplierName").getBytes("ISO-8859-1"),"utf-8");//供应商公司名称
		    String SupplierUserName=new String(request.getParameter("SupplierUserName").getBytes("ISO-8859-1"),"utf-8");//供应商名称
			String SupplierUserPhone=new String(request.getParameter("SupplierUserPhone").getBytes("ISO-8859-1"),"utf-8");//供应商电话
			String SupplierLINE=new String(request.getParameter("SupplierLINE").getBytes("ISO-8859-1"),"utf-8");//供应商LINE
			String SupplierWhatsapp=new String(request.getParameter("SupplierWhatsapp").getBytes("ISO-8859-1"),"utf-8");//供应商Whatsapp
			String SupplierPath=new String(request.getParameter("SupplierPath").getBytes("ISO-8859-1"),"utf-8");//供应商地址
			String SupplierWechat=new String(request.getParameter("SupplierWechat").getBytes("ISO-8859-1"),"utf-8");//供应商Wechat
			String SupplierNo=new String(request.getParameter("SupplierNo").getBytes("ISO-8859-1"),"utf-8");//供应商编号
			
			int Row=SupplierManage.updateSupplierInfor(SupplierNo, SupplierName, SupplierUserName, SupplierUserPhone, SupplierPath, SupplierLINE, SupplierWhatsapp, SupplierWechat);
			if(Row!=0){
				request.setAttribute("updateCheck", 1);
				response.sendRedirect("editgoods.jsp?goodsNo="+GoodsNo);
			}
	}

}
