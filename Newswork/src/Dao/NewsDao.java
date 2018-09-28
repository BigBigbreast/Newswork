package Dao;

import java.util.List;

import Entity.News;

public interface NewsDao {
	public News insertNews(News news);
	public int getallrows();
	public List<News> getcurrentnews(int currentpage);
	public News getnewsbyid(int id);
	
	//获取待审核的新闻的数量
	public int getallneedcheckrows();
	//获取待审核的当前新闻的数据
	public List<News> getcurrentchecknews(int currentpage);
	
	//处理审核事件
	public void updatecheckstate(News news);
	//处理审核事件2
	public void updatecheckstate2(News news);
	
	//获取编辑的新闻的数量
	public int getalleditnews();
	//获取待编辑的当前新闻的数据
	public List<News> getcurrenteditnews(int currentpage);
	
	
}
