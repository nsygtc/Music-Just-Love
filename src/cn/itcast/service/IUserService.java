package cn.itcast.service;

import java.util.List;

import cn.itcast.entity.User;
import cn.itcast.entity.music;

public interface IUserService {
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
	User queryBy(String name);
	
	User queryBy(int id);


}
