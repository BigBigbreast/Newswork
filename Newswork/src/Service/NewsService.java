package Service;

import Entity.News;
import Util.PageBean;

public interface NewsService {
	public News insertNews(News news);
	public PageBean getcurrentnews(int currentpage);
	public News getnewsbyid(int id);
	
	//获取当前的待审核的那一页数据
	public PageBean getcurrentchecknews(int currentpage);
	
	//处理审核事件
	public void updatecheckstate(News news);
	//处理审核事件
	public void updatecheckstate2(News news);
	
	//获取当前的待编辑的那一页数据
	public PageBean getcurrenteditnews(int currentpage);
}
