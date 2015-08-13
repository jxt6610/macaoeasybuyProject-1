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
		//String SuppLierState=new String(request.getParameter("SuppLierState").getBytes("ISO-8859-1"),"utf-8");//��Ӧ��״̬
		String GoodsOid=new String(request.getParameter("GoodsOid").getBytes("ISO-8859-1"),"utf-8");//��ƷOID
		
		int Goodsoid =Integer.parseInt(GoodsOid);
		int Goodsnum =Integer.parseInt(GoodsNum);
		//int SupplierState =Integer.parseInt(SuppLierState);
		int Supplier =Integer.parseInt(SuppLier);
		int SizeInt =Integer.parseInt(Size);
		int Colorch =Integer.parseInt(ColorCh);//��Ҫ������
		int FathertypeName =Integer.parseInt(FatherTypeName);//�Ѹ��е�OID���뵽Goods���У���Ҫ�ٿ���
		double GoodsmarketPrice =Double.parseDouble(GoodsMarketPrice);
		double Goodsactiveprice =Double.parseDouble(GoodsActiveprice);
		
		GoodsManage.updateGoodsInformation(Goodsoid, GoodsNo, GoodsName, FathertypeName, Colorch, SizeInt, 
				Goodsactiveprice, GoodsmarketPrice, Goodsnum, GoodsNote, Supplier);
		response.sendRedirect("goodsmanage.jsp");
		
	}

}
