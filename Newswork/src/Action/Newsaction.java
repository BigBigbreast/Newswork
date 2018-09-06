package Action;

import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.util.ValueStack;

import Entity.News;
import Service.NewsService;

public class Newsaction {
	private String newsid;
	private String newstitle;
	private String newstype;
	private String newssource;
	private String newswriter;
	private String newsissuer;
	private String newsdate;
	private String newskeys;
	private String newsbody;
	private NewsService newsService;
	
	public NewsService getNewsService() {
		return newsService;
	}
	public void setNewsService(NewsService newsService) {
		this.newsService = newsService;
	}
	public String getNewsid() {
		return newsid;
	}
	public void setNewsid(String newsid) {
		this.newsid = newsid;
	}
	public String getNewstitle() {
		return newstitle;
	}
	public void setNewstitle(String newstitle) {
		this.newstitle = newstitle;
	}
	public String getNewstype() {
		return newstype;
	}
	public void setNewstype(String newstype) {
		this.newstype = newstype;
	}
	public String getNewssource() {
		return newssource;
	}
	public void setNewssource(String newssource) {
		this.newssource = newssource;
	}
	public String getNewswriter() {
		return newswriter;
	}
	public void setNewswriter(String newswriter) {
		this.newswriter = newswriter;
	}
	public String getNewsissuer() {
		return newsissuer;
	}
	public void setNewsissuer(String newsissuer) {
		this.newsissuer = newsissuer;
	}
	public String getNewsdate() {
		return newsdate;
	}
	public void setNewsdate(String newsdate) {
		this.newsdate = newsdate;
	}
	
	public String getNewskeys() {
		return newskeys;
	}
	public void setNewskeys(String newskeys) {
		this.newskeys = newskeys;
	}
	public String getNewsbody() {
		return newsbody;
	}
	public void setNewsbody(String newsbody) {
		this.newsbody = newsbody;
	}
	
	public String insertnews(){
		News news=new News();
		news.setNewsid(newsid);
		news.setNewsissuer(newsissuer);
		news.setNewsbody(newsbody);
		news.setNewsdate(newsdate);
		news.setNewskeys(newskeys);
		news.setNewssource(newssource);
		news.setNewstitle(newstitle);
		news.setNewstype(newstype);
		news.setNewswriter(newswriter);
		news.setNewsclick(0);
		news.setNewsstate("未审核");
		news.setNewsdeletestate("未删除");
		newsService.insertNews(news);
		ValueStack valueStack=ActionContext.getContext().getValueStack();
		valueStack.setValue("#session.news",news);
		return "success";
	}

}
