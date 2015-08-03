package macaoeasybuy.dao.logindao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


import macaoeasybuy.bean.login.User;

public class UserDaoManage {
	private Connection conn = null;
    private PreparedStatement ps = null;
    private CallableStatement cs = null;
    private ResultSet rs = null;
    
	public UserDaoManage(){}
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		UserDaoManage user=new UserDaoManage();
		//user.queryAllUsers();
		User user0=user.loginValidate("20150010");
		if(user0==null){
			System.out.println("��");
		}else{
			System.out.println("����");
		}
		
	}
	
	/*
	 * ���ܣ���ѯ���е��û���Ϣ
	 * ���ߣ�����Ժ
	 * ʱ�䣺2015/7/29
	 * */
	 private  void queryAllUsers() {
	        
		 Connection conn = null;
	        Statement stmt = null;
	        ResultSet rs = null;
	        String sql = "select * from Usermanage";
	      
	        try {
	            conn = DBConnection.getConnection();
	            System.out.println(conn);
	            stmt =conn.createStatement();
	            rs = stmt.executeQuery(sql);
	            while (rs.next()) {
	                String UserId = rs.getString("UserId");
	                String UserName = rs.getString("UserName");
	                String UserSex = rs.getString("UserSex");
	                String UserDoenTime = rs.getString("UserDoenTime");
	                 int number=rs.getInt("UserRole");
	                String bintime=rs.getString("PassWord");
	               
	                 System.out.println("A"+UserId);
	         
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

	    }
	 
	 
	 
	 /*
		 * ���ܣ������û���Ų�ѯ���е��û���Ϣ
		 * ���ߣ�����Ժ
		 * ʱ�䣺2015/7/29
		 * */
	 public void queryId(String userId){//����
		   
	        String sql = "select * from Usermanage where UserId=?";
	        try {
	            conn = DBConnection.getConnection();
	            ps = conn.prepareStatement(sql);
	            ps.setString(1,userId);
	            rs = ps.executeQuery();
	            while(rs.next()){
	                //ȡ������
	            	  String UserId = rs.getString("UserId");
		                String UserName = rs.getString("UserName");
		                String UserSex = rs.getString("UserSex");
		                String UserDoenTime = rs.getString("UserDoenTime");
		                 int number=rs.getInt("UserRole");
		                String bintime=rs.getString("PassWord");
	                System.out.println(userId+","+UserName);
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
	    }
	 
	 
	 /*
		 * ���ܣ����ݱ��ύ���û�������ж����ݿ����Ƿ������ݣ�����еĻ�����true
		 * ���ߣ�����Ժ
		 * ʱ�䣺2015/7/29
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
		 * ���ܣ������û�����޸��û����ƻ�������
		 * ���ߣ�����Ժ
		 * ʱ�䣺2015/7/29
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
}
