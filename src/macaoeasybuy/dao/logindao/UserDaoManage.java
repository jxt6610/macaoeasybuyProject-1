package macaoeasybuy.dao.logindao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


import macaoeasybuy.bean.goods.Goods;
import macaoeasybuy.bean.login.User;
import macaoeasybuy.dao.goodsdao.GoodsManage;

public class UserDaoManage {


	private static Connection conn = null;
    private static PreparedStatement ps = null;
    private static CallableStatement cs = null;
    private static ResultSet rs = null;
    
    
	public UserDaoManage(){}
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		UserDaoManage user=new UserDaoManage();
		//user.queryAllUsers();
//		User user0=user.loginValidate("20150010");
//		if(user0==null){
//			System.out.println("空");
//		}else{
//			System.out.println("不空");
//		}
		
		ArrayList<User> user0=UserDaoManage.queryAllUser(4,1);
		for(int i=0;i<user0.size();i++){
			System.out.println(user0.get(i).getTotal_pages());
			
		}
//		User user1=UserDaoManage.queryId("2015003");
//		System.out.println(user1.getCurrent_page());
		
		
		
	}
	
	/*
	 * 功能：查询所有的用户信息
	 * 编者：徐新院
	 * 时间：2015/7/29
	 * */
	 public static   ArrayList<User> queryAllUsers() {
	        
		 Connection conn = null;
	        Statement stmt = null;
	        ResultSet rs = null;
	        String sql = "select * from Usermanage";
	        User user;
	  	  ArrayList<User> list=new ArrayList();
	        try {
	            conn = DBConnection.getConnection();
	            stmt =conn.createStatement();
	            rs = stmt.executeQuery(sql);
	            while (rs.next()) {
	            	user=new User();
	               user.setUserId(rs.getString("UserId"));
	               user.setUserName(rs.getString("UserName"));
	               user.setUserSex(rs.getString("UserSex"));
	               user.setUserDoenTime(rs.getString("UserDoenTime"));
	               user.setUserRole(rs.getInt("UserRole"));
	               user.setPassWord(rs.getString("PassWord"));
	               user.setUserPhone(rs.getString("UserPhone"));
		           user.setUserWechat(rs.getString("UserWechat"));
		          user.setUserWhatsapp(rs.getString("UserWhatsapp"));
		          user.setUserProper(rs.getInt("UserProper"));
	               list.add(user);
	            }

	        } catch (SQLException ex) {
	            Logger.getLogger(UserDaoManage.class.getName()).log(Level.SEVERE, null, ex);
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
	                Logger.getLogger(UserDaoManage.class.getName()).log(Level.SEVERE, null, ex);
	            }

	        }
			return list;

	    }
	 
	 
	 
	 /*
		 * 功能：根据用户编号查询所有的用户信息
		 * 编者：徐新院
		 * 时间：2015/7/29
		 * */
	 public static User queryId(String userId){//姓名
		 User user=new User();
	        String sql = "select * from Usermanage where UserId=?";
	        try {
	            conn = DBConnection.getConnection();
	            ps = conn.prepareStatement(sql);
	            ps.setString(1,userId);
	            rs = ps.executeQuery();
	            while(rs.next()){
	                //取出数据
	            	
	            	  user.setUserId(rs.getString("UserId"));
		               user.setUserName(rs.getString("UserName"));
		               user.setUserSex(rs.getString("UserSex"));
		               user.setUserDoenTime(rs.getString("UserDoenTime"));
		               user.setUserRole(rs.getInt("UserRole"));
		               user.setPassWord(rs.getString("PassWord"));
		               user.setUserPhone(rs.getString("UserPhone"));
			           user.setUserWechat(rs.getString("UserWechat"));
			          user.setUserWhatsapp(rs.getString("UserWhatsapp"));
			          user.setUserProper(rs.getInt("UserProper"));
	            }
	        } catch (SQLException ex) {
	            Logger.getLogger(UserDaoManage.class.getName()).log(Level.SEVERE, null, ex);
	        }finally{
	            try {
	                if(rs!=null)rs.close();
	                if(ps!=null)ps.close();
	                if(conn!=null)conn.close();
	            } catch (SQLException ex) {
	                Logger.getLogger(UserDaoManage.class.getName()).log(Level.SEVERE, null, ex);
	            }
	        }
			return user;
	    }
	 
	 
	 /*
		 * 功能：根据表单提交的用户编号来判断数据库中是否有数据，如果有的话返回true
		 * 编者：徐新院
		 * 时间：2015/7/29
		 * */
	 public User loginValidate(String userId){
		 User user=new User();
	        String sql = "select * from Usermanage where UserId=?";
	        try {
	            conn = DBConnection.getConnection();
	            ps = conn.prepareStatement(sql);
	            ps.setString(1,userId);
	            rs = ps.executeQuery();
	          if(rs.next()){
	        	  user.setUserId(rs.getString("UserId"));
	        	  user.setUserName(rs.getString("UserName"));
	        	  user.setUserDoenTime( rs.getString("UserDoenTime"));
	        	  user.setUserRole(rs.getInt("UserRole"));
	        	  user.setUserSex(rs.getString("UserSex"));
	        	  user.setPassWord(rs.getString("PassWord"));
	        	  user.setUserPhone(rs.getString("UserPhone"));
	        	  user.setUserWechat(rs.getString("UserWechat"));
	        	  user.setUserWhatsapp(rs.getString("UserWhatsapp"));
	        	  user.setUserProper(rs.getInt("UserProper"));
	          }else{
	        	  user=null;
	          }
	            
	        } catch (SQLException ex) {
	            Logger.getLogger(UserDaoManage.class.getName()).log(Level.SEVERE, null, ex);
	        }finally{
	            try {
	                if(rs!=null)rs.close();
	                if(ps!=null)ps.close();
	                if(conn!=null)conn.close();
	            } catch (SQLException ex) {
	                Logger.getLogger(UserDaoManage.class.getName()).log(Level.SEVERE, null, ex);
	            }
	        }
			return user;
			
	    }
	 
		
	 	
	 /*
		 * 功能：根据用户编号修改用户名称或者其他
		 * 编者：徐新院
		 * 时间：2015/7/29
		 * */
	 public void updateUserPassword(String userId,String UserName){
         
	        String sql = "update Usermanage set PassWord=? where userId=?";
	        try {
	            conn = DBConnection.getConnection();
	            ps = conn.prepareStatement(sql);
	            ps.setString(1,UserName);
	            ps.setString(2, userId);
	            int rows = ps.executeUpdate();
	            System.out.println("effect rows:"+userId+"   "+UserName);
	           
	        } catch (SQLException ex){
	            Logger.getLogger(UserDaoManage.class.getName()).log(Level.SEVERE, null, ex);
	        }finally{
	            try {
	                if(ps!=null)ps.close();
	                if(conn!=null)conn.close();
	            } catch (SQLException ex) {
	                Logger.getLogger(UserDaoManage.class.getName()).log(Level.SEVERE, null, ex);
	            }
	        }
	        
	    }


	 
	 public void delete(String UserId){
         
	        String sql = "delete from Usermanage where userId=?";
	        try {
	            conn = DBConnection.getConnection();
	            ps = conn.prepareStatement(sql);
	            ps.setString(1,UserId);
	           
	            int rows = ps.executeUpdate();
	            System.out.println("effect rows:"+UserId);
	           
	        } catch (SQLException ex){
	            Logger.getLogger(UserDaoManage.class.getName()).log(Level.SEVERE, null, ex);
	        }finally{
	            try {
	                if(ps!=null)ps.close();
	                if(conn!=null)conn.close();
	            } catch (SQLException ex) {
	                Logger.getLogger(UserDaoManage.class.getName()).log(Level.SEVERE, null, ex);
	            }
	        }
	        
	    }
	 
	 
	 /**功能：添加店员信息
	  * 编者：徐新院
	  * 时间：2015/8/4
	  * */
	 public static void insertUser(String UserId,String UserName,String UserSex,int UserRole,String PassWord,String UserPhone,
			    String UserWechat,String UserWhatsapp,int UserProper){
Calendar ca = Calendar.getInstance();
int year = ca.get(Calendar.YEAR);//获取年份
int month=ca.get(Calendar.MONTH);//获取月份 
int day=ca.get(Calendar.DATE);//获取日
int minute=ca.get(Calendar.MINUTE);//分 
int hour=ca.get(Calendar.HOUR);//小时 
int second=ca.get(Calendar.SECOND);//秒
int WeekOfYear = ca.get(Calendar.DAY_OF_WEEK); 
String Time=""+year+"-"+month+"-"+day;
String sql = "insert into Usermanage values(?,?,?,?,?,?,?,?,?,?)";
try {
           conn = DBConnection.getConnection();
           ps = conn.prepareStatement(sql);
           ps.setString(1,UserId);
           ps.setString(2,UserName);
           ps.setString(3,UserSex);
           ps.setString(4,Time);
           ps.setInt(5,UserRole);
           ps.setString(6,PassWord);
           ps.setString(7,UserPhone);
           ps.setString(8,UserWechat);
           ps.setString(9,UserWhatsapp);
           ps.setInt(10,UserProper);
            ps.executeUpdate();

          } catch (SQLException ex){
                        Logger.getLogger(UserDaoManage.class.getName()).log(Level.SEVERE, null, ex);
           }finally{
         try {
             if(ps!=null)ps.close();
              if(conn!=null)conn.close();
          } catch (SQLException ex) {
         Logger.getLogger(UserDaoManage.class.getName()).log(Level.SEVERE, null, ex);
               }
}

}
	 
	 /**
	  * 功能：查询所有的店员信息并且进行分页显示
	  * 编者：徐新院
	  * 时间：2015/8/5
	  * */
	 public static   ArrayList<User> queryAllUser(int rows_per_page,int current_page) {
	        
		 Connection conn = null;
	        Statement stmt = null;
	        ResultSet rs = null;
	        String SET="DECLARE @rows_per_page AS INTEGER DECLARE @current_page AS INTEGER DECLARE @total_pages AS INTEGER DECLARE @start_item AS INTEGER DECLARE @items_count AS INTEGER SET @rows_per_page = "+rows_per_page+" SET @current_page ="+current_page+" SELECT @total_pages = COUNT(*) / @rows_per_page+1 ,@items_count= COUNT(*) FROM Usermanage;SET @start_item = @rows_per_page * (@current_page - 1) select * from(select ROW_NUMBER() OVER (order by oid) as item,@items_count AS items_count ,@current_page AS current_page,@total_pages AS total_pages,* from Usermanage) as T where T.item >= @start_item + 1AND T.item <= @start_item + @rows_per_page";
	        User user;
	  	  ArrayList<User> list=new ArrayList();
	        try {
	            conn = DBConnection.getConnection();
	            stmt =conn.createStatement();
	            rs = stmt.executeQuery(SET);
	            while (rs.next()) {
	            	user=new User();
	               user.setUserId(rs.getString("UserId"));
	               user.setUserName(rs.getString("UserName"));
	               user.setUserSex(rs.getString("UserSex"));
	               user.setUserDoenTime(rs.getString("UserDoenTime"));
	               user.setUserRole(rs.getInt("UserRole"));
	               user.setPassWord(rs.getString("PassWord"));
	               user.setUserPhone(rs.getString("UserPhone"));
		           user.setUserWechat(rs.getString("UserWechat"));
		          user.setUserWhatsapp(rs.getString("UserWhatsapp"));
		          user.setUserProper(rs.getInt("UserProper"));
		         user.setCurrent_page(rs.getInt("current_page"));
		         user.setTotal_pages(rs.getInt("total_pages"));
	              list.add(user);
	            }

	        } catch (SQLException ex) {
	            Logger.getLogger(UserDaoManage.class.getName()).log(Level.SEVERE, null, ex);
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
	                Logger.getLogger(UserDaoManage.class.getName()).log(Level.SEVERE, null, ex);
	            }

	        }
			return list;

	    }
	 
}
