package cn.itcast.dao;

import java.util.List;

import cn.itcast.entity.User;

public interface IuserDao {
	/**
	 * 注册
	 */
	void add(User user);
	
	/**
	 * 更新
	 */
	void update(User user);
	
	/**
	 * 删除
	 */
	void delete(int user_id);
	
	/**
	 * 根据主键查询
	 */
	User findById(int user_id);
	
	/**
	 * 查询全部
	 */
	List<User>getAll();
	
	/**
	 * 按照音乐名称查询
	 */


	List<User> getByName(String user_name);

	List<User> getByID(int user_id);

	List<User> getByContact(String user_contact);

	User queryBy(int id);
	
    User queryBy(String name);

}
