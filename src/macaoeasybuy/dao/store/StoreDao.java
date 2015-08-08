package macaoeasybuy.dao.store;

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
import macaoeasybuy.bean.store.Store;
import macaoeasybuy.dao.goodsdao.GoodsManage;
import macaoeasybuy.dao.logindao.DBConnection;

public class StoreDao {

	private static Connection conn = null;
    private static  PreparedStatement ps = null;
    private  static CallableStatement cs = null;
    private static ResultSet rs = null;
    
    public static void main(String[] args) {
    
    	System.out.println(	StoreDao.queryStoreId("20150010").getStoreId());;
    
    }
    public static Store queryStoreId(String StoreShopUserId){
    	
   	 Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        String sql = "select * from Store where StoreShopUserId=?";
        Store store = new Store();
        try {
       	 conn = DBConnection.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1,StoreShopUserId);
            rs = ps.executeQuery();
            while (rs.next()){
            	store.setStoreId(rs.getString("StoreId")) ;
            	store.setStoreName( rs.getString("StoreName"));
            	store.setStoreSecondName(rs.getString("StoreSecondName"));
            	store.setStoreOnlyId(rs.getString("StoreOnlyId"));
            	store.setStoreDescribe(rs.getString("StoreDescribe"));
            	store.setStoreTypeId( rs.getInt("StoreTypeId"));
            	store.setStoreIsNo( rs.getInt("StoreIsNo"));
            	store.setStoreIsAddress( rs.getString("StoreIsAddress"));
            	store.setStoreShopUserId( rs.getString("StoreShopUserId"));
            }

        } catch (SQLException ex) {
            Logger.getLogger(StoreDao.class.getName()).log(Level.SEVERE, null, ex);
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
                Logger.getLogger(StoreDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
		return store;


    }
    
    
    public static void  updateStoreInfor(String StoreId,String StoreName,String StoreSecondName,String StoreOnlyId,String StoreDescribe,
    		int GoodsType,int StoreIsNo,String StoreIsAddress,String StoreShopUserId){
         String sql ="update Store set StoreId=?,StoreName=?,StoreSecondName=?,StoreOnlyId=?,StoreDescribe=?,StoreTypeId=?,StoreIsNo=?,StoreIsAddress=?  where StoreShopUserId=?" ;
         try {
             conn = DBConnection.getConnection();
             ps = conn.prepareStatement(sql);
             ps.setString(1,StoreId);
             ps.setString(2,StoreName);
             ps.setString(3,StoreSecondName);
             ps.setString(4,StoreOnlyId);
             ps.setString(5,StoreDescribe);
             ps.setInt(6,GoodsType);
             ps.setInt(7,StoreIsNo);
             ps.setString(8, StoreIsAddress);
             ps.setString(9, StoreShopUserId);
              int row = ps.executeUpdate();
            
         } catch (SQLException ex){
             Logger.getLogger(StoreDao.class.getName()).log(Level.SEVERE, null, ex);
         }finally{
             try {
                 if(ps!=null)ps.close();
                 if(conn!=null)conn.close();
             } catch (SQLException ex) {
                 Logger.getLogger(StoreDao.class.getName()).log(Level.SEVERE, null, ex);
             }
         }
         
     }
     

	 
}
