package Action;

import static org.hamcrest.CoreMatchers.nullValue;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.util.ValueStack;

import Entity.News;
import Service.NewsService;
import Util.PageBean;

public class EditNewsAction {
	private NewsService newsService;
	private int page;
	public NewsService getNewsService() {
		return newsService;
	}
	public void setNewsService(NewsService newsService) {
		this.newsService = newsService;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public String showdeitnews(){
		PageBean pageBean=newsService.getcurrenteditnews(this.page);
		List<News> news=pageBean.getList();
		ValueStack vStack=ActionContext.getContext().getValueStack();
		vStack.setValue("#session.neededitnews", news);
		HttpServletRequest request = ServletActionContext.getRequest();        
        request.setAttribute("pageBean", pageBean);
		return "success";
	}
}
