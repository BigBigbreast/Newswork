package Action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.util.ValueStack;

import Entity.News;
import Service.NewsService;
import Util.PageBean;

public class CheckNewsAction {
	private NewsService newsService;
	private int page;
	private News news;
	private int newsid;
	
	
	public int getNewsid() {
		return newsid;
	}

	public void setNewsid(int newsid) {
		this.newsid = newsid;
	}

	public News getNews() {
		return news;
	}

	public void setNews(News news) {
		this.news = news;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public NewsService getNewsService() {
		return newsService;
	}

	public void setNewsService(NewsService newsService) {
		this.newsService = newsService;
	}
	public String showchecknews(){
		PageBean pageBean=newsService.getcurrentchecknews(this.page);
		List<News> news=pageBean.getList();
		
		ValueStack vStack=ActionContext.getContext().getValueStack();
		vStack.setValue("#session.needchecknews", news);
		HttpServletRequest request = ServletActionContext.getRequest();        
        request.setAttribute("pageBean", pageBean);
		return "success";
	}
	
	public String updatecheckstate(){
		News news=newsService.getnewsbyid(newsid);
		newsService.updatecheckstate(news);
		return "success";
	}
	
	public String updatecheckstate2(){
		News news=newsService.getnewsbyid(newsid);
		newsService.updatecheckstate2(news);
		return "success";
	}
	
	public String shouchecknewsinfo(){
		News news=newsService.getnewsbyid(newsid);
		ValueStack valueStack=ActionContext.getContext().getValueStack();
		valueStack.setValue("#session.news",news);
		return "success";
	}
}
