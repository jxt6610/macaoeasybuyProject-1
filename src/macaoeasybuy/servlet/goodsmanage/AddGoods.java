package macaoeasybuy.servlet.goodsmanage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import macaoeasybuy.dao.goodsdao.GoodsManage;

public class AddGoods extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
    
		this.doPost(request, response);
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String GoodsNo=new String(request.getParameter("GoodsNo").getBytes("ISO-8859-1"),"utf-8");//商品编号
		String GoodsName=new String(request.getParameter("GoodsName").getBytes("ISO-8859-1"),"utf-8");//商品名称
		String FatherTypeName=new String(request.getParameter("FatherTypeName").getBytes("ISO-8859-1"),"utf-8");//商品大分类父类编号
		String ChildTypeName=new String(request.getParameter("ChildTypeName").getBytes("ISO-8859-1"),"utf-8");//商品子分类标识号
		String GoodsNote=new String(request.getParameter("GoodsNote").getBytes("ISO-8859-1"),"utf-8");//商品描述
		String ColorCh=new String(request.getParameter("ColorCh").getBytes("ISO-8859-1"),"utf-8");//规格一
		String ColorEn=new String(request.getParameter("ColorEn").getBytes("ISO-8859-1"),"utf-8");//规格二
		String Size=new String(request.getParameter("Size").getBytes("ISO-8859-1"),"utf-8");//商品尺码
		String GoodsNum=new String(request.getParameter("GoodsNum").getBytes("ISO-8859-1"),"utf-8");//商品数量
		String GoodsMarketPrice=new String(request.getParameter("GoodsMarketPrice").getBytes("ISO-8859-1"),"utf-8");//商品市场价格
		String GoodsActiveprice=new String(request.getParameter("GoodsActiveprice").getBytes("ISO-8859-1"),"utf-8");//商品实际价格
		String SuppLier=new String(request.getParameter("SuppLier").getBytes("ISO-8859-1"),"utf-8");//供应商
		//String SupplierState=new String(request.getParameter("SupplierState").getBytes("ISO-8859-1"),"utf-8");//供应商状态
		int fatherTypeName=Integer.parseInt(FatherTypeName);
		int colorCh=Integer.parseInt(ColorCh);
		int size=Integer.parseInt(Size);
		double goodsActiveprice=Double.parseDouble(GoodsActiveprice);
		double goodsMarketPrice=Double.parseDouble(GoodsMarketPrice);
		int goodsNum=Integer.parseInt(GoodsNum);
		int suppLier=Integer.parseInt(SuppLier);
		GoodsManage good=new GoodsManage();
		good.insertGoods(GoodsNo,GoodsName, 2, colorCh, size, goodsActiveprice, goodsMarketPrice
		, goodsNum, 1,"1", 1,
		GoodsNote, 1, suppLier, "image/loginImages/10.png");
   		response.sendRedirect("goodsmanage.jsp");
		
	}

}
