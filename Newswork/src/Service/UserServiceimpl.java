package Service;

import Dao.UserDao;
import Entity.User;

public class UserServiceimpl implements UserService{
	private UserDao userdao;
	
	public UserDao getUserdao() {
		return userdao;
	}

	public void setUserdao(UserDao userdao) {
		this.userdao = userdao;
	}
	@Override
	public void register(String username, String password) {
		userdao.register(username, password);
	}

	@Override
	public User checklogin(String username, String password) {
		return userdao.checklogin(username, password);
	}

	@Override
	public String checkname(String name) {
		return userdao.checkname(name);
	}

}
