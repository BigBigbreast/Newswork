package Dao;

import java.util.List;

import Entity.News;

public interface NewsDao {
	public News insertNews(News news);
	public int getallrows();
	public List<News> getcurrentnews(int cuurentpage);
}
