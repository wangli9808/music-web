package cn.tedu.domain;

public class User {
	private Integer userId;
	private String userName;
	private String uerPassWord;
	private String userEmail;
	
	public User() {
	}
	
	public User(Integer userId, String userName, String uerPassWord, String userEmail) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.uerPassWord = uerPassWord;
		this.userEmail = userEmail;
	}

	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUerPassWord() {
		return uerPassWord;
	}
	public void setUerPassWord(String uerPassWord) {
		this.uerPassWord = uerPassWord;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", uerPassWord=" + uerPassWord + ", userEmail="
				+ userEmail + "]";
	}
}
