package Interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
import com.opensymphony.xwork2.util.ValueStack;

public class RootInteceptor implements Interceptor{

	@Override
	public void destroy() {
		
	}

	@Override
	public void init() {
		
	}

	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		ValueStack vStack=ActionContext.getContext().getValueStack();
		String name=(String) vStack.findValue("#session.result");
		System.out.println(name+"------------------");
		if(name!=null){
			arg0.invoke();
		}	
		return "fail";
	}

}
