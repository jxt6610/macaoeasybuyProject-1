package macaoeasybuy.dao.log;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;

import macaoeasybuy.bean.log.LogThing;
import macaoeasybuy.bean.login.User;
import macaoeasybuy.dao.logindao.DBConnection;
import macaoeasybuy.dao.logindao.UserDaoManage;

public class LogThingDao {
	private static Connection conn = null;
    private static PreparedStatement ps = null;
    private static CallableStatement cs = null;
    private static ResultSet rs = null;
	public LogThingDao(){}

	
	public static void main(String[] args) {
		
		ArrayList<LogThing> list=LogThingDao.queryAllLogThing();
		//System.out.println(list.get(0).getLogBody());
		int j=0;
		for(int i=0;i<list.size();i++){
			if(list.get(i).getLogStatue()==2&&list.get(i).getUserNumber()==5){
				j=i;
			}
		}
		System.out.println(list.get(j).getLogTitle());
		//LogThingDao.insertLog("00002", "�ż�֪ͨ", "����ż�", 2, 1);
	}
	
	/**���ܣ�����״̬�Լ���������ʾ��־��Ϣ
	 * ����;����Ժ
	 * ʱ�䣺2015/8/6
	 * */
	
	public  static  ArrayList<LogThing> queryAllLogThing() {
		   Connection conn = null;
	        Statement stmt = null;
	        ResultSet rs = null;
	        String sql = "select * from LogThing";
	        LogThing logthing;
	  ArrayList<LogThing> list=new ArrayList();
	        try {
	            conn = DBConnection.getConnection();
	            stmt =conn.createStatement();
	            rs = stmt.executeQuery(sql);
	            while (rs.next()){
	            	logthing=new LogThing();
	            	logthing.setOid(rs.getInt("Oid"));
	            	logthing.setLogId(rs.getString("LogId"));
	            	logthing.setLogTitle(rs.getString("LogTitle"));
	            	logthing.setLogBody(rs.getString("LogBody"));
	            	logthing.setLogStatue(rs.getInt("LogStatue"));
	            	logthing.setLogLevel(rs.getInt("LogLevel"));
	            	logthing.setLogUpTime(rs.getString("LogUpTime"));
	            	logthing.setUserLogId(rs.getString("UserLogId"));
	            	logthing.setUserNumber(rs.getInt("UserNumber"));
	                list.add(logthing);
	                
	            }

	        } catch (SQLException ex) {
	            Logger.getLogger(LogThingDao.class.getName()).log(Level.SEVERE, null, ex);
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
	                Logger.getLogger(LogThingDao.class.getName()).log(Level.SEVERE, null, ex);
	            }
	        }
			return list;
	    }
	
	
	
	
	public static  void insertLog(String LogId,String LogTitle,String LogBody,int LogStatue,int  LogLevel,String UserLogId,int UserLogNumber ){
        Calendar ca = Calendar.getInstance();
        int year = ca.get(Calendar.YEAR);//��ȡ���
        int month=ca.get(Calendar.MONTH);//��ȡ�·� 
        int day=ca.get(Calendar.DATE);//��ȡ��
        int minute=ca.get(Calendar.MINUTE);//�� 
        int hour=ca.get(Calendar.HOUR);//Сʱ 
        int second=ca.get(Calendar.SECOND);//��
         int WeekOfYear = ca.get(Calendar.DAY_OF_WEEK); 
         String Time=year+"-"+month+"-"+day;
         String sql = "insert into LogThing values(?,?,?,?,?,?,?,?)";
         try {
              conn = DBConnection.getConnection();
              ps = conn.prepareStatement(sql);
              ps.setString(1,LogId);
              ps.setString(2,LogTitle);
               ps.setString(3,LogBody);
              ps.setInt(4,LogStatue);
               ps.setInt(5,LogLevel);
               ps.setString(6,Time);
               ps.setString(7,UserLogId);
               ps.setInt(8,UserLogNumber);
               
             int rows = ps.executeUpdate();
                 } catch (SQLException ex){
                 Logger.getLogger(LogThingDao.class.getName()).log(Level.SEVERE, null, ex);
              }finally{
             try {
           if(ps!=null)ps.close();
              if(conn!=null)conn.close();
             } catch (SQLException ex) {
               Logger.getLogger(LogThingDao.class.getName()).log(Level.SEVERE, null, ex);
              }
            }
}
	
	/*
	 * ���ܣ�������־���ж�Ӧ�Ĳ�����Ա�����������־״̬���ø����ڰ죩
	 * ���ߣ�����Ժ
	 * ʱ�䣺2015/7/29
	 * */
 public static void updateUserLogStatueIng(int Oid){
     
        String sql = "update LogThing set LogStatue=1 where Oid=?";
        try {
            conn = DBConnection.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, Oid);
            int rows = ps.executeUpdate();
           
        } catch (SQLException ex){
            Logger.getLogger(LogThingDao.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try {
                if(ps!=null)ps.close();
                if(conn!=null)conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(LogThingDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
    }
	
 /*
	 * ���ܣ�������־���ж�Ӧ�Ĳ�����Ա�����������־״̬���ø�����ɣ�
	 * ���ߣ�����Ժ
	 * ʱ�䣺2015/7/29
	 * */
public static void updateUserLogStatueDone(int Oid){
  
     String sql = "update LogThing set LogStatue=3 where Oid=?";
     try {
         conn = DBConnection.getConnection();
         ps = conn.prepareStatement(sql);
         ps.setInt(1, Oid);
         int rows = ps.executeUpdate();
        
     } catch (SQLException ex){
         Logger.getLogger(LogThingDao.class.getName()).log(Level.SEVERE, null, ex);
     }finally{
         try {
             if(ps!=null)ps.close();
             if(conn!=null)conn.close();
         } catch (SQLException ex) {
             Logger.getLogger(LogThingDao.class.getName()).log(Level.SEVERE, null, ex);
         }
     }
     
 }

/*
 * ���ܣ������û���Ų�ѯ��־��Ϣ
 * ���ߣ�����Ժ
 * ʱ�䣺2015/8/8
 * */
@SuppressWarnings("null")
public static ArrayList<LogThing> queryLogUserId(String userId){//����
 ArrayList<LogThing>list = null;
    String sql = "select * from LogThing where UserLogId=?";
    try {
        conn = DBConnection.getConnection();
        ps = conn.prepareStatement(sql);
        ps.setString(1,userId);
        rs = ps.executeQuery();
        LogThing logthing;
        while(rs.next()){
            //ȡ������
        	logthing=new LogThing();
        	logthing.setOid(rs.getInt("Oid"));
        	logthing.setLogId(rs.getString("LogId"));
        	logthing.setLogTitle(rs.getString("LogTitle"));
        	logthing.setLogBody(rs.getString("LogBody"));
        	logthing.setLogStatue(rs.getInt("LogStatue"));
        	logthing.setLogLevel(rs.getInt("LogLevel"));
        	logthing.setLogUpTime(rs.getString("LogUpTime"));
        	logthing.setUserLogId(rs.getString("UserLogId"));
        	logthing.setUserNumber(rs.getInt("UserNumber"));
        	list.add(logthing);
        }
    } catch (SQLException ex) {
        Logger.getLogger(LogThingDao.class.getName()).log(Level.SEVERE, null, ex);
    }finally{
        try {
            if(rs!=null)rs.close();
            if(ps!=null)ps.close();
            if(conn!=null)conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(LogThingDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
	return list;
}

	
}
