package macaoeasybuy.bean.login;

public class User {

	private String UserId;
	private String UserName;
	private String UserSex;
	private String UserDoenTime;
	private int UserRole;
	private String PassWord;
	public String getUserId() {
		return UserId;
	}
	public void setUserId(String userId) {
		UserId = userId;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getUserSex() {
		return UserSex;
	}
	public void setUserSex(String userSex) {
		UserSex = userSex;
	}
	public String getUserDoenTime() {
		return UserDoenTime;
	}
	public void setUserDoenTime(String userDoenTime) {
		UserDoenTime = userDoenTime;
	}
	public int getUserRole() {
		return UserRole;
	}
	public void setUserRole(int userRole) {
		UserRole = userRole;
	}
	public String getPassWord() {
		return PassWord;
	}
	public void setPassWord(String passWord) {
		PassWord = passWord;
	}
	
	
}
