package Service;

import Dao.UserDao;

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

}
