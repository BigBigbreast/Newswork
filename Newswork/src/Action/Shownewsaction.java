package Action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.components.Else;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.util.ValueStack;

import Entity.News;
import Service.NewsService;
import Util.PageBean;

public class Shownewsaction {
	private int page;
	private NewsService newsService;
	private int newsid;
	

	public int getNewsid() {
		return newsid;
	}

	public void setNewsid(int newsid) {
		this.newsid = newsid;
	}

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
	public String shownews(){
		PageBean pageBean=newsService.getcurrentnews(this.page);
		List<News> news=pageBean.getList();
		List<News> news1=new ArrayList<News>();
		List<News> news2=new ArrayList<News>();
		List<News> news3=new ArrayList<News>();
		for (News a : news) {
			if(a.getNewstype().equals("国际新闻")){
				news1.add(a);
			}else if(a.getNewstype().equals("体育新闻")){
				news2.add(a);
			}else{
				news3.add(a);
			}
		}
		ValueStack vStack=ActionContext.getContext().getValueStack();
		vStack.setValue("#session.news1", news1);
		vStack.setValue("#session.news2", news2);
		vStack.setValue("#session.news3", news3);
		HttpServletRequest request = ServletActionContext.getRequest();        
        request.setAttribute("pageBean", pageBean);
        request.setAttribute("boolean", "false");
		return "success";
	}
	
	public String newsinfo(){
		News news=newsService.getnewsbyid(newsid);
		ValueStack vStack=ActionContext.getContext().getValueStack();
		vStack.setValue("#session.newsinfo",news);
		return "success";
		
	}
}
