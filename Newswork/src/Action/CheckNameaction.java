package Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import Service.UserService;

public class CheckNameaction {
	private UserService userService;
	private String result;

	
	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
	
	public String checkname(){
		HttpServletRequest request=ServletActionContext.getRequest();
        HttpServletResponse response=ServletActionContext.getResponse();
        response.setHeader("Access-Control-Allow-Origin", "*");
        String username=request.getParameter("username");
        System.out.println(username);
        result=userService.checkname(username);
		return "success";
		
	}
}
