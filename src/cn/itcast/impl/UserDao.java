package cn.itcast.impl;

import java.util.List;

import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import cn.itcast.dao.IuserDao;
import cn.itcast.entity.User;
import cn.itcast.entity.music;
import cn.itcast.utils.JdbcUtils;

public class UserDao implements IuserDao{

	@Override
	public void add(User user) {
		String sql="insert into user(user_id,user_password,user_name,user_contact,user_attribute) values(?,?,?,?,?);";
		try {
			JdbcUtils.getQuerrRunner().update(sql,user.getUser_id(),user.getUser_password(),user.getUser_name(),user.getUser_contact(),user.getUser_attribute());
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
		
		
	}

	@Override
	public void update(User user) {
		String sql="update user set user_attribute=? where user_id=?;";
		try {
			JdbcUtils.getQuerrRunner().update(sql,user.getUser_attribute(),user.getUser_id());
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
		
		
	}

	@Override
	public void delete(int user_id) {
		String sql="delete from user where user_id=? ";
		try {
			JdbcUtils.getQuerrRunner().update(sql,user_id);
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
		
		
	}

	@Override
	public User findById(int user_id) {
		
		String sql="select * from user where user_id=?";
		try {
			return JdbcUtils.getQuerrRunner().query(sql,new BeanHandler<User>(User.class),user_id);
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
	}

	@Override
	public List<User> getAll() {
		
		String sql="select * from user;";
		
		try {
			return JdbcUtils.getQuerrRunner().query(sql,new BeanListHandler<User>(User.class));
			
		}catch(Exception e) {
			throw new RuntimeException(e);
		}	
	}

	@Override
	public List<User> getByName(String user_name) {
		String sql="select * from user where user_name like ?;";
		try {
			JdbcUtils.getQuerrRunner().query(sql,new BeanListHandler<User>(User.class),"%"+user_name+"%");
		}catch(Exception e) {
			throw new RuntimeException(e);
		}	

		
		return null;
	}

	@Override
	public List<User> getByContact(String user_contact) {
		String sql="select * from user where user_name like ?;";
		try {
			JdbcUtils.getQuerrRunner().query(sql,new BeanListHandler<User>(User.class),"%"+user_contact+"%");
		}catch(Exception e) {
			throw new RuntimeException(e);
		}	

		
		return null;
	}

	@Override
	public List<User> getByID(int user_id) {
		String sql="select * from user where user_id=?;";
		try {
			return null;
		}catch(Exception e) {
			throw new RuntimeException(e);
		}	

		
		
	}

	@Override
	public User queryBy(String name) {
		String sql="select * from user where user_name like ?;";
		try {
			return JdbcUtils.getQuerrRunner().query(sql,new BeanHandler<User>(User.class),"%"+name+"%");
		}catch(Exception e) {
			throw new RuntimeException(e);
		}	
	}
	
	public User queryBy(int id) {
		String sql="select * from user where user_id=?;";
		try {
			return JdbcUtils.getQuerrRunner().query(sql,new BeanHandler<User>(User.class),id);
		}catch(Exception e) {
			throw new RuntimeException(e);
		}	
	}

}
