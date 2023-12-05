package Controllers;

import java.io.Serializable;

public class User implements Serializable {
	
	private String username, password;
	private static final long serialVersionUID = 1L;
	
public User() {
		

	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}