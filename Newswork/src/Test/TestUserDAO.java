package Test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import Dao.UserDao;
import Dao.UserDaoimpl;
import Entity.User;
import Service.UserService;

public class TestUserDAO {
	ApplicationContext applicationContext=new ClassPathXmlApplicationContext("/applicationContext.xml");
	@Test
	public void testregister(){
		UserDao userDao=(UserDaoimpl)applicationContext.getBean("userdao");
		userDao.register("Ztf", "65564564");
	}
	@Test
	public void testServiceregister(){
		UserService userService=(UserService)applicationContext.getBean("userService");
		userService.register("zzz", "123456");
	}
}
