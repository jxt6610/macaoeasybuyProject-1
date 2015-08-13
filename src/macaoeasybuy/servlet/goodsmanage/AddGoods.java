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
		String GoodsNo=new String(request.getParameter("GoodsNo").getBytes("ISO-8859-1"),"utf-8");//��Ʒ���
		String GoodsName=new String(request.getParameter("GoodsName").getBytes("ISO-8859-1"),"utf-8");//��Ʒ����
		String FatherTypeName=new String(request.getParameter("FatherTypeName").getBytes("ISO-8859-1"),"utf-8");//��Ʒ����ุ����
		String ChildTypeName=new String(request.getParameter("ChildTypeName").getBytes("ISO-8859-1"),"utf-8");//��Ʒ�ӷ����ʶ��
		String GoodsNote=new String(request.getParameter("GoodsNote").getBytes("ISO-8859-1"),"utf-8");//��Ʒ����
		String ColorCh=new String(request.getParameter("ColorCh").getBytes("ISO-8859-1"),"utf-8");//���һ
		String ColorEn=new String(request.getParameter("ColorEn").getBytes("ISO-8859-1"),"utf-8");//����
		String Size=new String(request.getParameter("Size").getBytes("ISO-8859-1"),"utf-8");//��Ʒ����
		String GoodsNum=new String(request.getParameter("GoodsNum").getBytes("ISO-8859-1"),"utf-8");//��Ʒ����
		String GoodsMarketPrice=new String(request.getParameter("GoodsMarketPrice").getBytes("ISO-8859-1"),"utf-8");//��Ʒ�г��۸�
		String GoodsActiveprice=new String(request.getParameter("GoodsActiveprice").getBytes("ISO-8859-1"),"utf-8");//��Ʒʵ�ʼ۸�
		String SuppLier=new String(request.getParameter("SuppLier").getBytes("ISO-8859-1"),"utf-8");//��Ӧ��
		//String SupplierState=new String(request.getParameter("SupplierState").getBytes("ISO-8859-1"),"utf-8");//��Ӧ��״̬
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
