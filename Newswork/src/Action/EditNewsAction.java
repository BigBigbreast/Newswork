package Action;

import static org.hamcrest.CoreMatchers.nullValue;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
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
	private String newsid;
	private int id;
	private String newstitle;
	private String newstype;
	private String newssource;
	private String newswriter;
	private String newsissuer;
	private String newsdate;
	private String newskeys;
	private String newsbody;
	private String key;
	
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	
	public String showeditnewsinfo(){
		News news=newsService.getnewsbyid(id);
		ValueStack vStack=ActionContext.getContext().getValueStack();
		vStack.setValue("#session.editnewsinfo", news);
		return "success";
	}
	public String updateeditnewsinfo(){
		ValueStack vStack=ActionContext.getContext().getValueStack();
		News news=(News) vStack.findValue("#session.editnewsinfo");
		news.setNewsid(newsid);
		news.setNewsissuer(newsissuer);
		news.setNewsbody(newsbody);
		news.setNewsdate(newsdate);
		news.setNewskeys(newskeys);
		news.setNewssource(newssource);
		news.setNewstitle(newstitle);
		news.setNewstype(newstype);
		news.setNewswriter(newswriter);
		newsService.updateeditnewsinfo(news);
		return "success";
	}
	
	public String deletenewsinfo(){
		newsService.deletenews(id);
		return "success";		
	}
	
	public String selectnews() throws UnsupportedEncodingException{
		String name = java.net.URLDecoder.decode(key, "utf-8");
		PageBean pageBean=newsService.getselectNews(this.page, name);
		List<News> news=pageBean.getList();
		List<News> selectnews1=new ArrayList<News>();
		List<News> selectnews2=new ArrayList<News>();
		List<News> selectnews3=new ArrayList<News>();
		for (News a : news) {
			if(a.getNewstype().equals("国际新闻")){
				selectnews1.add(a);
			}else if(a.getNewstype().equals("体育新闻")){
				selectnews2.add(a);
			}else{
				selectnews3.add(a);
			}
		}
		ValueStack vStack=ActionContext.getContext().getValueStack();
		vStack.setValue("#session.selectnews1", selectnews1);
		vStack.setValue("#session.selectnews2", selectnews2);
		vStack.setValue("#session.selectnews3", selectnews3);
		vStack.setValue("#session.selectkey", key);
		HttpServletRequest request = ServletActionContext.getRequest();        
        request.setAttribute("pageBean", pageBean);
		return "success";
	}
}
