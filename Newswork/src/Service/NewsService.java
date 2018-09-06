package Service;

import Entity.News;
import Util.PageBean;

public interface NewsService {
	public News insertNews(News news);
	public PageBean getcurrentnews(int currentpage);
}
