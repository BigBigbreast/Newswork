package Dao;

import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;

import Entity.News;

public class NewsDaoimpl implements NewsDao{
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Override
	public News insertNews(News news) {
		hibernateTemplate.save(news);
		return news;
	}

	@Override
	public int getallrows() {
		List<News> lists=hibernateTemplate.find("from News");
		
		return lists.size();
	}

	@Override
	public List<News> getcurrentnews(int cuurentpage) {
		return null;
	}
}
