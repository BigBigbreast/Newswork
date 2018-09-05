package Dao;

import Entity.User;

public interface UserDao {
	public void register(String username,String password);
	public User checklogin(String username,String password);
	public String checkname(String username);
}
