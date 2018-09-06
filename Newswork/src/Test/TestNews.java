package Test;

import java.util.List;

import org.apache.taglibs.standard.tag.common.core.ForEachSupport;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import Dao.NewsDao;
import Dao.NewsDaoimpl;
import Dao.UserDao;
import Dao.UserDaoimpl;
import Entity.News;

public class TestNews {
	ApplicationContext applicationContext=new ClassPathXmlApplicationContext("/applicationContext.xml");
	@Test
	public void test1(){
		NewsDao userDao=(NewsDaoimpl)applicationContext.getBean("newsDao");
		int a=userDao.getallrows();
		System.out.println(a+"");
	}
	@Test
	public void test2(){
		NewsDao userDao=(NewsDaoimpl)applicationContext.getBean("newsDao");
		List<News> news=userDao.getcurrentnews(0);
		for (News news2 : news) {
			System.out.println(news2.getNewstitle());
		}
	}
	
}
