package Dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
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
		ArrayList<News> lists=(ArrayList<News>) hibernateTemplate.find("from News");
		
		return lists.size();
	}

	@Override
	public List<News> getcurrentnews(int cuurentpage) {
		final int begin=cuurentpage;
		
		List<News> lists=getHibernateTemplate().executeFind(
				new  HibernateCallback() {
				           public Object doInHibernate(Session session)
				             throws HibernateException, SQLException {
				            Query query = session.createQuery("from News");
				            query.setFirstResult(begin);
				            query.setMaxResults(4);
				            List<News>lists = query.list();
				            return lists;
				           }
				          });
		return lists;
	}

	@Override
	public News getnewsbyid(int id) {
		News news=(News)hibernateTemplate.get(News.class, id);
		
		return news;
	}
}
