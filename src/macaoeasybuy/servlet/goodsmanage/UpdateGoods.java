package macaoeasybuy.servlet.goodsmanage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import macaoeasybuy.dao.goodsdao.GoodsManage;

public class UpdateGoods extends HttpServlet {

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
		//String SuppLierState=new String(request.getParameter("SuppLierState").getBytes("ISO-8859-1"),"utf-8");//供应商状态
		String GoodsOid=new String(request.getParameter("GoodsOid").getBytes("ISO-8859-1"),"utf-8");//商品OID
		
		int Goodsoid =Integer.parseInt(GoodsOid);
		int Goodsnum =Integer.parseInt(GoodsNum);
		//int SupplierState =Integer.parseInt(SuppLierState);
		int Supplier =Integer.parseInt(SuppLier);
		int SizeInt =Integer.parseInt(Size);
		int Colorch =Integer.parseInt(ColorCh);//需要处理考虑
		int FathertypeName =Integer.parseInt(FatherTypeName);//把父列的OID插入到Goods表中，需要再考虑
		double GoodsmarketPrice =Double.parseDouble(GoodsMarketPrice);
		double Goodsactiveprice =Double.parseDouble(GoodsActiveprice);
		
		GoodsManage.updateGoodsInformation(Goodsoid, GoodsNo, GoodsName, FathertypeName, Colorch, SizeInt, 
				Goodsactiveprice, GoodsmarketPrice, Goodsnum, GoodsNote, Supplier);
		response.sendRedirect("goodsmanage.jsp");
		
	}

}
