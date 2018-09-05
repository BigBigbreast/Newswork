package Service;

import Entity.User;

public interface UserService {
	public void register(String username,String password);
	public User checklogin(String username,String password);
	public String checkname(String name);
}
