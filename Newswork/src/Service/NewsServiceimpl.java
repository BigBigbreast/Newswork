package Service;

import Dao.NewsDao;
import Entity.News;
import Util.PageBean;

public class NewsServiceimpl implements NewsService{
	private NewsDao newsDao;

	public NewsDao getNewsDao() {
		return newsDao;
	}

	public void setNewsDao(NewsDao newsDao) {
		this.newsDao = newsDao;
	}

	@Override
	public News insertNews(News news) {
		return newsDao.insertNews(news);
	}

	@Override
	public PageBean getcurrentnews(int currentpage) {
		return null;
	}
	
}
