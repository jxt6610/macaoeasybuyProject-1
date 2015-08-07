package macaoeasybuy.bean.log;

public class LogThing {

	private int Oid;
	private String LogId;
	private String LogTitle;
	private String LogBody;
	private int LogStatue;
	private int LogLevel;
	private String LogUpTime;
	private String UserLogId;
	public int getOid() {
		return Oid;
	}
	public void setOid(int oid) {
		Oid = oid;
	}
	public String getLogId() {
		return LogId;
	}
	public void setLogId(String logId) {
		LogId = logId;
	}
	public String getLogTitle() {
		return LogTitle;
	}
	public void setLogTitle(String logTitle) {
		LogTitle = logTitle;
	}
	public String getLogBody() {
		return LogBody;
	}
	public void setLogBody(String logBody) {
		LogBody = logBody;
	}
	public String getLogUpTime() {
		return LogUpTime;
	}
	public void setLogUpTime(String logUpTime) {
		LogUpTime = logUpTime;
	}
	public int getLogStatue() {
		return LogStatue;
	}
	public void setLogStatue(int logStatue) {
		LogStatue = logStatue;
	}
	public int getLogLevel() {
		return LogLevel;
	}
	public void setLogLevel(int logLevel) {
		LogLevel = logLevel;
	}
	public String getUserLogId() {
		return UserLogId;
	}
	public void setUserLogId(String userLogId) {
		UserLogId = userLogId;
	}
	
	
	
}
