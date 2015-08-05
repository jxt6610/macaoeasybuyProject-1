package macaoeasybuy.bean.login;

public class User {

	private String UserId;
	private String UserName;
	private String UserSex;
	private String UserDoenTime;
	private int UserRole;
	private String PassWord;
	private String UserPhone;
	private String UserWechat;
	private String UserWhatsapp;
	private int UserProper;
	private int current_page;//分页的当前页
	private int total_pages;//一个分了多少页
	
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
	public String getUserPhone() {
		return UserPhone;
	}
	public void setUserPhone(String userPhone) {
		UserPhone = userPhone;
	}
	public String getUserWechat() {
		return UserWechat;
	}
	public void setUserWechat(String userWechat) {
		UserWechat = userWechat;
	}
	public String getUserWhatsapp() {
		return UserWhatsapp;
	}
	public void setUserWhatsapp(String userWhatsapp) {
		UserWhatsapp = userWhatsapp;
	}
	public int getUserProper() {
		return UserProper;
	}
	public void setUserProper(int userProper) {
		UserProper = userProper;
	}
	public int getCurrent_page() {
		return current_page;
	}
	public void setCurrent_page(int current_page) {
		this.current_page = current_page;
	}
	public int getTotal_pages() {
		return total_pages;
	}
	public void setTotal_pages(int total_pages) {
		this.total_pages = total_pages;
	}
	
	
}
