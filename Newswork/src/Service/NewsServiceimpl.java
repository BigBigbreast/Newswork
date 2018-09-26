package Service;

import java.util.List;

import org.hibernate.Transaction;

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
		PageBean pageBean=new PageBean();
		int allrows=newsDao.getallrows();
		int totalPage=pageBean.getTotalPages(12, allrows);
		int page=pageBean.getCurPage(currentpage);
		int offset=pageBean.getCurrentPageOffset(12, page);
		List<News> news=newsDao.getcurrentnews(offset);
		pageBean.setList(news);
		pageBean.setAllRows(allrows);
	    pageBean.setCurrentPage(page);
	    pageBean.setTotalPage(totalPage);
		return pageBean;
	}

	@Override
	public News getnewsbyid(int id) {
		return newsDao.getnewsbyid(id);
	}

	@Override
	public PageBean getcurrentchecknews(int currentpage) {
		PageBean pageBean=new PageBean();
		int allrows=newsDao.getallneedcheckrows();
		int totalPage=pageBean.getTotalPages(8, allrows);
		int page=pageBean.getCurPage(currentpage);
		int offset=pageBean.getCurrentPageOffset(8, page);
		List<News> news=newsDao.getcurrentchecknews(offset);
		pageBean.setList(news);
		pageBean.setAllRows(allrows);
	    pageBean.setCurrentPage(currentpage);
	    pageBean.setTotalPage(totalPage);
		return pageBean;
	}

	@Override
	public void updatecheckstate(News news) {
		newsDao.updatecheckstate(news);
	}
	
}
