package Dao;

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

}
