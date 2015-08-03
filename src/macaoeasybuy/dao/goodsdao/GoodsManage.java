package macaoeasybuy.dao.goodsdao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;

import macaoeasybuy.bean.goods.Color;
import macaoeasybuy.bean.goods.Goods;
import macaoeasybuy.bean.goods.GoodsTypes;
import macaoeasybuy.bean.goods.Supplier;
import macaoeasybuy.dao.logindao.DBConnection;

public class GoodsManage {

	private static Connection conn = null;
    private static PreparedStatement ps = null;
    private static CallableStatement cs = null;
    private static ResultSet rs = null;
    
	public GoodsManage(){}
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		GoodsManage good=new GoodsManage();
		//good.insertGoods("201546544456798","张家界", 1, 1, 60, 69, 100, 300, 1, "简单包装", 1, "好看的张家界", 1, 1, "image/loginImages/10.png");
//		for(int i=0;i<GoodsManage.queryAllGoods().size();i++){
//			System.out.println(GoodsManage.queryAllGoods().get(i).getGoodsName());;
//		}
		GoodsManage.updateGoodsInformation(6, "110", "GoodsName", 1, 1, 100, 100.0, 95.5, 10000, "想马上开学考数学新手卡", 1);
//		ArrayList<Goods> goodq=GoodsManage.queryGoodsId("63118264820157710001");
//		System.out.println(goodq.get(0).getGoodsName());
	}
	
	/*
	 * 功能：查询所有的商品信息
	 * 编者：徐新院
	 * 时间：2015/7/29
	 * */
	public  static  ArrayList<Goods> queryAllGoods() {
		   Connection conn = null;
	        Statement stmt = null;
	        ResultSet rs = null;
	        String sql = "select * from Goods";
	    Goods good;
	  ArrayList<Goods> list=new ArrayList();
	        try {
	            conn = DBConnection.getConnection();
	            stmt =conn.createStatement();
	            rs = stmt.executeQuery(sql);
	            while (rs.next()){
	            	  good=new Goods();
	            	 good.setOid(rs.getInt("Oid"));
	            	 good.setGoodsNo(rs.getString("GoodsNo")) ;
	                 good.setGoodsName( rs.getString("GoodsName"));
	                 good.setGoodsType( rs.getInt("GoodsType"));
	                 good.setGoodsColor( rs.getInt("GoodsColor"));
	                 good.setGoodsSize(rs.getInt("GoodsSize"));
	                 good.setGoodsActiveprice( rs.getInt("GoodsActiveprice"));
	                 good.setGoodsMarketPrice( rs.getInt("GoodsMarketPrice"));
	                 good.setGoodsNum(rs.getInt("GoodsNum"));
	                 good.setGoodsLabel(rs.getInt("GoodsLabel"));
	                 good.setGoodsPakages( rs.getString("GoodsPakages"));
	                 good.setIsup(rs.getInt("Isup"));
	                 good.setGoodsNote(rs.getString("GoodsNote"));
	                 good.setGoodsState(rs.getInt("GoodsState"));
	                 good.setGoodsSupplier(rs.getInt("GoodsSupplier"));
	                 good.setGoodsImagePath( rs.getString("GoodsImagePath"));
	                 good.setGoodsUpTime( rs.getString("GoodsUpTime"));
	                 good.setGoodsDownTime(rs.getString("GoodsDownTime"));
	                list.add(good);
	                
	            }

	        } catch (SQLException ex) {
	            Logger.getLogger(GoodsManage.class.getName()).log(Level.SEVERE, null, ex);
	        } finally {
	            try {
	                if (rs != null) {
	                    rs.close();
	                }
	                if (stmt != null) {
	                	stmt.close();
	                }
	                if (conn != null) {
	                    conn.close();
	                }
	            } catch (SQLException ex) {
	                Logger.getLogger(GoodsManage.class.getName()).log(Level.SEVERE, null, ex);
	            }
	        }
			return list;

	    }
	 
	 /**
	  * 功能：添加商品
	  * 编者：徐新院
	  * 时间：2015/7/30
	  * */
	
public void insertGoods(String GoodsNo,String GoodsName,int TypeName,int Color,int Size,double GoodsActiveprice,double GoodsMarketPrice, 
	    		                               int GoodsNum,int goodsLabel,String GoodsPakages,int Isup,String GoodsNote,int GoodsState,int GoodsSupplier,String GoodsImagePath
	    		 ){
        Calendar ca = Calendar.getInstance();
  int year = ca.get(Calendar.YEAR);//获取年份
  int month=ca.get(Calendar.MONTH);//获取月份 
  int day=ca.get(Calendar.DATE);//获取日
  int minute=ca.get(Calendar.MINUTE);//分 
  int hour=ca.get(Calendar.HOUR);//小时 
  int second=ca.get(Calendar.SECOND);//秒
  int WeekOfYear = ca.get(Calendar.DAY_OF_WEEK); 
 String Time=""+year+""+month+""+day;
     String sql = "insert into Goods values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
     try {
    	 conn = DBConnection.getConnection();
           ps = conn.prepareStatement(sql);
           ps.setString(1,GoodsNo);
           ps.setString(2,GoodsName);
           ps.setInt(3,TypeName);
           ps.setInt(4,Color);
           ps.setInt(5,Size);
           ps.setDouble(6,GoodsActiveprice);
           ps.setDouble(7,GoodsMarketPrice);
           ps.setInt(8,GoodsNum);
           ps.setInt(9,goodsLabel);
           ps.setString(10,GoodsPakages);
           ps.setInt(11,Isup);
           ps.setString(12,GoodsNote);
           ps.setInt(13,GoodsState);
           ps.setInt(14,GoodsSupplier);
           ps.setString(15,GoodsImagePath);
           ps.setString(16,"");
           ps.setString(17,"");
            int rows = ps.executeUpdate();
         System.out.println("添加成功");
        
     } catch (SQLException ex){
         Logger.getLogger(GoodsManage.class.getName()).log(Level.SEVERE, null, ex);
     }finally{
         try {
             if(ps!=null)ps.close();
             if(conn!=null)conn.close();
         } catch (SQLException ex) {
             Logger.getLogger(GoodsManage.class.getName()).log(Level.SEVERE, null, ex);
         }
     }
     
 }
	 
	 /*
		 * 功能：根据商品编号查询所有的商品信息
		 * 编者：徐新院
		 * 时间：2015/7/29
		 * */
	 public static ArrayList<Goods> queryGoodsId(String goodsNo){//
		
	    Goods good;
	  ArrayList<Goods> list=new ArrayList();
	        String sql = "select * from Goods where GoodsNo=?";
	        try {
	            conn = DBConnection.getConnection();
	            ps = conn.prepareStatement(sql);
	            ps.setString(1,goodsNo);
	            rs = ps.executeQuery();
	            while(rs.next()){
	            	 good=new Goods();
	            	 good.setOid(rs.getInt("Oid"));
	            	 good.setGoodsNo(rs.getString("GoodsNo")) ;
	                 good.setGoodsName( rs.getString("GoodsName"));
	                 good.setGoodsType( rs.getInt("GoodsType"));
	                 good.setGoodsColor( rs.getInt("GoodsColor"));
	                 good.setGoodsSize(rs.getInt("GoodsSize"));
	                 good.setGoodsActiveprice( rs.getInt("GoodsActiveprice"));
	                 good.setGoodsMarketPrice( rs.getInt("GoodsMarketPrice"));
	                 good.setGoodsNum(rs.getInt("GoodsNum"));
	                 good.setGoodsLabel(rs.getInt("GoodsLabel"));
	                 good.setGoodsPakages( rs.getString("GoodsPakages"));
	                 good.setIsup(rs.getInt("Isup"));
	                 good.setGoodsNote(rs.getString("GoodsNote"));
	                 good.setGoodsState(rs.getInt("GoodsState"));
	                 good.setGoodsSupplier(rs.getInt("GoodsSupplier"));
	                 good.setGoodsImagePath( rs.getString("GoodsImagePath"));
	                 good.setGoodsUpTime( rs.getString("GoodsUpTime"));
	                 good.setGoodsDownTime(rs.getString("GoodsDownTime"));
	                list.add(good);
	            }
	        } catch (SQLException ex) {
	            Logger.getLogger(GoodsManage.class.getName()).log(Level.SEVERE, null, ex);
	        }finally{
	            try {
	                if(rs!=null)rs.close();
	                if(ps!=null)ps.close();
	                if(conn!=null)conn.close();
	            } catch (SQLException ex) {
	                Logger.getLogger(GoodsManage.class.getName()).log(Level.SEVERE, null, ex);
	            }
	        }
			return list;
	    }
	 
	 
	 	
	 /*
		 * 功能：根据商品编号修改商品信息
		 * 编者：徐新院
		 * 时间：2015/8/3
		 * */
	 public static void updateGoodsInformation(int GoodsOid,String GoodsNo,String GoodsName,int FathertypeName,int Colorch,int SizeInt,
			                     double Goodsactiveprice,double GoodsmarketPrice,int GoodsNum, String GoodsNote, int Supplier){
         
	        String sql = "update Goods set GoodsNo=?,GoodsName=?,GoodsType=?,GoodsColor=?,GoodsSize=?,GoodsActiveprice=?,GoodsMarketPrice=?,GoodsNum=?,GoodsNote=?,GoodsSupplier=? where Oid=?";
	        try {
	            conn = DBConnection.getConnection();
	            ps = conn.prepareStatement(sql);
	            ps.setString(1,GoodsNo);
	            ps.setString(2, GoodsName);
	            ps.setInt(3, FathertypeName);
	            ps.setInt(4, Colorch);
	            ps.setInt(5, SizeInt);
	            ps.setDouble(6, Goodsactiveprice);
	            ps.setDouble(7, GoodsmarketPrice);
	            ps.setInt(8, GoodsNum);
	            ps.setString(9, GoodsNote);
	            ps.setInt(10, Supplier);
	            ps.setInt(11, GoodsOid);
	            int rows = ps.executeUpdate();
	        } catch (SQLException ex){
	            Logger.getLogger(GoodsManage.class.getName()).log(Level.SEVERE, null, ex);
	        }finally{
	            try {
	                if(ps!=null)ps.close();
	                if(conn!=null)conn.close();
	            } catch (SQLException ex) {
	                Logger.getLogger(GoodsManage.class.getName()).log(Level.SEVERE, null, ex);
	            }
	        }
	        
	    }


	 /*
	  * 功能：删除商品信息
	  * 编者：徐新院
	  * 时间：2015/7/29
	  * */
	 public void delete(String UserId){
         
	        String sql = "delete from Goods where userId=?";
	        try {
	            conn = DBConnection.getConnection();
	            ps = conn.prepareStatement(sql);
	            ps.setString(1,UserId);
	           
	            int rows = ps.executeUpdate();
	            System.out.println("effect rows:"+UserId);
	           
	        } catch (SQLException ex){
	            Logger.getLogger(GoodsManage.class.getName()).log(Level.SEVERE, null, ex);
	        }finally{
	            try {
	                if(ps!=null)ps.close();
	                if(conn!=null)conn.close();
	            } catch (SQLException ex) {
	                Logger.getLogger(GoodsManage.class.getName()).log(Level.SEVERE, null, ex);
	            }
	        }
	        
	    }
	 
	 
	 /**功能：查询全部颜色值
	  * 编者：徐新院
	  * 时间：2015/7/31
	  * 
	  * */
	 
	 public  static  ArrayList<Color> queryAllColor() {
		   Connection conn = null;
	        Statement stmt = null;
	        ResultSet rs = null;
	        String sql = "select * from Color";
	        Color color;
	  ArrayList<Color> list=new ArrayList();
	        try {
	            conn = DBConnection.getConnection();
	            stmt =conn.createStatement();
	            rs = stmt.executeQuery(sql);
	            while (rs.next()){
	            	color=new Color();
	            	color.setOid(rs.getInt("Oid"));
	            	 color.setColorAbb(rs.getString("ColorAbb")) ;
	                 color.setColorEn( rs.getString("ColorEn"));
	                 color.setColorCh( rs.getString("ColorCh"));
	                 color.setGoodsTypeOid(rs.getInt("GoodsTypeOid"));
	                list.add(color);
	                
	            }

	        } catch (SQLException ex) {
	            Logger.getLogger(GoodsManage.class.getName()).log(Level.SEVERE, null, ex);
	        } finally {
	            try {
	                if (rs != null) {
	                    rs.close();
	                }
	                if (stmt != null) {
	                	stmt.close();
	                }
	                if (conn != null) {
	                    conn.close();
	                }
	            } catch (SQLException ex) {
	                Logger.getLogger(GoodsManage.class.getName()).log(Level.SEVERE, null, ex);
	            }
	        }
			return list;

	    }
	 
	 
	 /**功能：查询所有的商品类型
	  * 编者：徐新院
	  * 时间：2015/7/31
	  * 
	  * */
	 public  static  ArrayList<GoodsTypes> queryAllGoodsTypes() {
		   Connection conn = null;
	        Statement stmt = null;
	        ResultSet rs = null;
	        String sql = "select * from GoodsTypes";
	        GoodsTypes goodsTypes;
	  ArrayList<GoodsTypes> list=new ArrayList();
	        try {
	            conn = DBConnection.getConnection();
	            stmt =conn.createStatement();
	            rs = stmt.executeQuery(sql);
	            while (rs.next()){
	            	goodsTypes=new GoodsTypes();
	            	goodsTypes.setOid(rs.getInt("Oid"));
	            	goodsTypes.setTypeId(rs.getString("TypeId")) ;
	            	goodsTypes.setTypeName( rs.getString("TypeName"));
	            	goodsTypes.setTypeParentId( rs.getString("TypeParentId"));
	            	goodsTypes.setTypeSex( rs.getInt("TypeSex"));
	                list.add(goodsTypes);
	                
	            }

	        } catch (SQLException ex) {
	            Logger.getLogger(GoodsManage.class.getName()).log(Level.SEVERE, null, ex);
	        } finally {
	            try {
	                if (rs != null) {
	                    rs.close();
	                }
	                if (stmt != null) {
	                	stmt.close();
	                }
	                if (conn != null) {
	                    conn.close();
	                }
	            } catch (SQLException ex) {
	                Logger.getLogger(GoodsManage.class.getName()).log(Level.SEVERE, null, ex);
	            }
	        }
			return list;

	    }
	 
	 /**功能：查询所有的商品父分类
	  * 编者：徐新院
	  * 时间：2015/7/31
	  * 
	  * */
	 public  static  ArrayList<GoodsTypes> queryAllGoodsFatherTypes() {
		   Connection conn = null;
	        Statement stmt = null;
	        ResultSet rs = null;
	        String sql = "select * from GoodsTypes where TypeParentId=0";
	        GoodsTypes goodsTypes;
	  ArrayList<GoodsTypes> list=new ArrayList();
	        try {
	            conn = DBConnection.getConnection();
	            stmt =conn.createStatement();
	            rs = stmt.executeQuery(sql);
	            while (rs.next()){
	            	goodsTypes=new GoodsTypes();
	            	goodsTypes.setOid(rs.getInt("Oid"));
	            	goodsTypes.setTypeId(rs.getString("TypeId")) ;
	            	goodsTypes.setTypeName( rs.getString("TypeName"));
	            	goodsTypes.setTypeParentId( rs.getString("TypeParentId"));
	            	goodsTypes.setTypeSex( rs.getInt("TypeSex"));
	                list.add(goodsTypes);
	                
	            }

	        } catch (SQLException ex) {
	            Logger.getLogger(GoodsManage.class.getName()).log(Level.SEVERE, null, ex);
	        } finally {
	            try {
	                if (rs != null) {
	                    rs.close();
	                }
	                if (stmt != null) {
	                	stmt.close();
	                }
	                if (conn != null) {
	                    conn.close();
	                }
	            } catch (SQLException ex) {
	                Logger.getLogger(GoodsManage.class.getName()).log(Level.SEVERE, null, ex);
	            }
	        }
			return list;

	    }
	 
	 /**功能：查询所有的商品子分类
	  * 编者：徐新院
	  * 时间：2015/7/31
	  * 
	  * */
	 public  static  ArrayList<GoodsTypes> queryAllGoodsChildTypes() {
		   Connection conn = null;
	        Statement stmt = null;
	        ResultSet rs = null;
	        String sql = "select * from GoodsTypes where TypeParentId!=0";
	        GoodsTypes goodsTypes;
	  ArrayList<GoodsTypes> list=new ArrayList();
	        try {
	            conn = DBConnection.getConnection();
	            stmt =conn.createStatement();
	            rs = stmt.executeQuery(sql);
	            while (rs.next()){
	            	goodsTypes=new GoodsTypes();
	            	goodsTypes.setOid(rs.getInt("Oid"));
	            	goodsTypes.setTypeId(rs.getString("TypeId")) ;
	            	goodsTypes.setTypeName( rs.getString("TypeName"));
	            	goodsTypes.setTypeParentId( rs.getString("TypeParentId"));
	            	goodsTypes.setTypeSex( rs.getInt("TypeSex"));
	                list.add(goodsTypes);
	                
	            }

	        } catch (SQLException ex) {
	            Logger.getLogger(GoodsManage.class.getName()).log(Level.SEVERE, null, ex);
	        } finally {
	            try {
	                if (rs != null) {
	                    rs.close();
	                }
	                if (stmt != null) {
	                	stmt.close();
	                }
	                if (conn != null) {
	                    conn.close();
	                }
	            } catch (SQLException ex) {
	                Logger.getLogger(GoodsManage.class.getName()).log(Level.SEVERE, null, ex);
	            }
	        }
			return list;

	    }
	 
	 /**功能：查询全部供应商
	  * 编者：徐新院
	  * 时间：2015/7/31
	  * 
	  * */
	 
	 public  static  ArrayList<Supplier> queryAllSupplier() {
		   Connection conn = null;
	        Statement stmt = null;
	        ResultSet rs = null;
	        String sql = "select * from Supplier";
	        Supplier supplier;
	  ArrayList<Supplier> list=new ArrayList();
	        try {
	            conn = DBConnection.getConnection();
	            stmt =conn.createStatement();
	            rs = stmt.executeQuery(sql);
	            while (rs.next()){
	            	supplier=new Supplier();
	            	supplier.setOid(rs.getInt("Oid"));
	            	supplier.setSupplierNo(rs.getString("SupplierNo")) ;
	            	supplier.setSupplierName( rs.getString("SupplierName"));
	            	supplier.setTypeId( rs.getString("TypeId"));
	            	supplier.setSupplierUserName(rs.getString("SupplierUserName"));
	            	supplier.setSupplierUserPhone(rs.getString("SupplierUserPhone"));
	            	supplier.setSupplierPath(rs.getString("SupplierPath"));
	            	supplier.setGoodsNum( rs.getInt("GoodsNum"));
	            	supplier.setSupplierState( rs.getInt("SupplierState"));
	            	supplier.setSupplierLINE(rs.getString("SupplierLINE"));
	            	supplier.setSupplierWhatsapp(rs.getString("SupplierWhatsapp"));
	            	supplier.setSupplierWechat(rs.getString("SupplierWechat"));
	                list.add(supplier);
	                
	            }

	        } catch (SQLException ex) {
	            Logger.getLogger(GoodsManage.class.getName()).log(Level.SEVERE, null, ex);
	        } finally {
	            try {
	                if (rs != null) {
	                    rs.close();
	                }
	                if (stmt != null) {
	                	stmt.close();
	                }
	                if (conn != null) {
	                    conn.close();
	                }
	            } catch (SQLException ex) {
	                Logger.getLogger(GoodsManage.class.getName()).log(Level.SEVERE, null, ex);
	            }
	        }
			return list;

	    }
	 
}
