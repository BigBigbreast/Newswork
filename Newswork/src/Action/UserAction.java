package Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.hamcrest.core.IsNull;

import com.google.gson.Gson;

import Entity.User;
import Service.UserService;

public class UserAction {
	private UserService userService;
	private String result;
	
	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	
	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public String checklogin(){
		HttpServletRequest request=ServletActionContext.getRequest();
        HttpServletResponse response=ServletActionContext.getResponse();
        response.setHeader("Access-Control-Allow-Origin", "*");
        String name=request.getParameter("username");
        String pass=request.getParameter("userpass");
		User user=userService.checklogin(name, pass);
		Gson gson=new Gson();
		result=gson.toJson(user);
		System.out.println(result);
		return "success";		
	}

}
