package macaoeasybuy.dao.supplierdao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import macaoeasybuy.bean.goods.Goods;
import macaoeasybuy.bean.goods.Supplier;
import macaoeasybuy.dao.goodsdao.GoodsManage;
import macaoeasybuy.dao.logindao.DBConnection;


public class SupplierManage {

	public SupplierManage(){}
	
	private static Connection conn = null;
    private static  PreparedStatement ps = null;
    private  static CallableStatement cs = null;
    private static ResultSet rs = null;
    
    public static void main(String[] args) {
		// TODO Auto-generated method stub
//    	ArrayList<Supplier>supplier= SupplierManage.querySupplierId(2);
//		System.out.println(supplier.get(0).getSupplierName());
		
		//SupplierManage.updateSupplierInfor("10000002", "SupplierName", "SupplierUserName", "SupplierUserPhone", "SupplierPath", "SupplierLINE", "SupplierWhatsapp", "SupplierWechat");
	}
    
    public static  void insertSuppliers(String SupplierNo,String SupplierName,String TypeId,String SupplierUserName,
    		String SupplierUserPhone,String SupplierPath,int GoodsNum,int SupplierState,String SupplierLINE,
    		String SupplierWhatsapp,String SupplierWechat){
   
   String sql = "insert into Supplier values(?,?,?,?,?,?,?,?,?,?,?)";
   try {
   conn = DBConnection.getConnection();
   ps = conn.prepareStatement(sql);
     ps.setString(1,SupplierNo);
     ps.setString(2,SupplierName);
   ps.setString(3,TypeId);
   ps.setString(4,SupplierUserName);
   ps.setString(5,SupplierUserPhone);
   ps.setString(6,SupplierPath);
   ps.setInt(7,GoodsNum);
   ps.setInt(8,SupplierState);
   ps.setString(9,SupplierLINE);
   ps.setString(10,SupplierWhatsapp);
   ps.setString(11,SupplierWechat);
   int rows = ps.executeUpdate();
   System.out.println("添加成功");

   } catch (SQLException ex){
       Logger.getLogger(SupplierManage.class.getName()).log(Level.SEVERE, null, ex);
                }finally{
        try {
        if(ps!=null)ps.close();
       if(conn!=null)conn.close();
              } catch (SQLException ex) {
             Logger.getLogger(SupplierManage.class.getName()).log(Level.SEVERE, null, ex);
            }
          }
           }
    
    
    /*
	 * 功能：根据商品中的GoodsSupplier值来获取Supplier变种对应的数据
	 * 编者：徐新院
	 * 时间：2015/8/1
	 * */
 public static ArrayList<Supplier> querySupplierId(int supplierNo){//
	
	 Connection conn = null;
     Statement stmt = null;
     ResultSet rs = null;
     String sql = "select * from Supplier where Oid=?";
     Supplier supplier;
ArrayList<Supplier> list=new ArrayList();
     try {
    	 conn = DBConnection.getConnection();
         ps = conn.prepareStatement(sql);
         ps.setInt(1,supplierNo);
         rs = ps.executeQuery();
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

 /*
	 * 功能：根据供应商编号修改供应商信息(不包含状态修改)
	 * 编者：徐新院
	 * 时间：2015/8/1
	 * */
public static int updateSupplierInfor(String SupplierNo,String SupplierName,String SupplierUserName,String SupplierUserPhone,
		String SupplierPath,String SupplierLINE,String SupplierWhatsapp,String SupplierWechat ){
  int row=0;
     String sql = "update Supplier set SupplierName=?,SupplierUserName=?,SupplierUserPhone=?,SupplierPath=?,SupplierLINE=?,SupplierWhatsapp=?,SupplierWechat=? where SupplierNo=?";
     try {
         conn = DBConnection.getConnection();
         ps = conn.prepareStatement(sql);
         ps.setString(1,SupplierName);
         ps.setString(2,SupplierUserName);
         ps.setString(3,SupplierUserPhone);
         ps.setString(4,SupplierPath);
         ps.setString(5,SupplierLINE);
         ps.setString(6,SupplierWhatsapp);
         ps.setString(7,SupplierWechat);
         ps.setString(8, SupplierNo);
          row = ps.executeUpdate();
        
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
	return row;
     
 }
 
          }
