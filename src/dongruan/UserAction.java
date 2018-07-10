package dongruan;

import com.opensymphony.xwork2.ActionSupport;

import Dao.UserDao;
import model.User;

public class UserAction extends ActionSupport{
	public User user;
	
public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

public String login(){
    boolean iflogin=UserDao.checkUser(user);
    System.out.println(iflogin);
    
	return SUCCESS;
}
public String zhuce(){  
    UserDao.saveUser(user);
	return SUCCESS;
}
}
