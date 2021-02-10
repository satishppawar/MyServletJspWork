package demo.app.login.service;

import java.util.HashMap;

import demo.app.login.dto.User;

public class LoginService {

	//STEP2
	HashMap<String,String> users=new HashMap<String, String>();
	public LoginService() {
		//<userId,UserName>
		users.put("Mahi", "Mahendra Singh Dhoni");
		users.put("Sachin", "Sachin Tendulkar");
		users.put("Virat", "Virat Kohali");
		
	}
	//STEP1 SIMPLE IMPLEMENTATION
		public boolean authenticate(String userId,String password) {
			//if password is blank or null then login fails
			//dummy implementation
			if(password==null || password.trim()==""){
				return false;
			}
			return true;
		}
		
		//STEP2
		public User getUserDSetails(String userId) {
			User user=new User();
			user.setUserName(users.get(userId));
			user.setUserId(userId);
			return user;
		}
}
