package Dao;

import static org.hamcrest.CoreMatchers.nullValue;

import java.util.ArrayList;

import org.springframework.orm.hibernate3.HibernateTemplate;

import Entity.User;

public class UserDaoimpl implements UserDao {
	private HibernateTemplate hibernatetemplate;
	
	public HibernateTemplate getHibernatetemplate() {
		return hibernatetemplate;
	}

	public void setHibernatetemplate(HibernateTemplate hibernatetemplate) {
		this.hibernatetemplate = hibernatetemplate;
	}

	@Override
	public void register(String username, String password) {
		User user=new User();
		user.setUsername(username);
		user.setPassword(password);
		hibernatetemplate.save(user);
	}

	@Override
	public User checklogin(String username, String password) {
		ArrayList<User> users=(ArrayList<User>) hibernatetemplate.find("from User as u where u.username=? and u.password=?", username,password);
		if (users.size()==0) {
			return null;
		}
		return users.get(0);
	}

	@Override
	public String checkname(String username) {
		ArrayList<User> users=(ArrayList<User>) hibernatetemplate.find("from User as u where u.username=?", username);
		if (users.size()==0) {
			return null;
		}
		return username;
	}

}
