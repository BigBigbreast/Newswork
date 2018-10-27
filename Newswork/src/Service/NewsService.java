package Service;

import java.util.List;

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
	
	//更新新闻信息
	public void updateeditnewsinfo(News news);
	
	//删除新闻
	public void deletenews(int id);
	
	//模糊查询
	public PageBean getselectNews(int currentpage,String key);
}
