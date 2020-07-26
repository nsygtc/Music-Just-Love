package cn.itcast.service.impl;

import java.util.List;

import cn.itcast.dao.ImusicDao;
import cn.itcast.dao.IuserDao;
import cn.itcast.entity.User;
import cn.itcast.factory.BeanFactory;
import cn.itcast.service.IUserService;
import cn.itcast.service.ImusicService;

public class UserService implements IUserService{
	
	private IuserDao userDao = BeanFactory.getInstance("userDao", IuserDao.class);

	@Override
	public void add(User user) {
		try {
			  userDao.add(user);
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
		
	}

	@Override
	public void update(User user) {
		try {
			  userDao.update(user);
		}catch(Exception e) {
			throw new RuntimeException(e);
			
		}
		
		
	}

	@Override
	public void delete(int user_id) {
		try {
			 userDao.delete(user_id);
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
		
		
	}

	@Override
	public User findById(int user_id) {
		try {
			 return userDao.findById(user_id);
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
		
	}

	@Override
	public List<User> getAll() {
		try {
			 return userDao.getAll();
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
	}

	

	@Override
	public User queryBy(int id) {
		try {
			  return userDao.queryBy(id);
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	@Override
	public User queryBy(String name) {
		try {
			  return userDao.queryBy(name);
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
	}


	

}
