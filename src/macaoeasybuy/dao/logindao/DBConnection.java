package macaoeasybuy.dao.logindao;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
public class DBConnection {


	 //JDBCÁ¬½Ó
    private static String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    private static String url = "jdbc:sqlserver://127.0.0.1:1433;DatabaseName=MacaoeasyBuy";
    private static String username="sa";
    private static String password="123456";
    private static Connection conn = null;
    
    public static  Connection getConnection(){
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url,username,password);
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return conn;
    }
    
    
}
