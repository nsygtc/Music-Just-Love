package cn.itcast.service;

import java.util.List;

import cn.itcast.entity.User;
import cn.itcast.entity.music;

public interface IUserService {
	/**
	 * ע��
	 */
	void add(User user);
	
	/**
	 * ����
	 */
	void update(User user);
	
	/**
	 * ɾ��
	 */
	void delete(int user_id);
	
	/**
	 * ����������ѯ
	 */
	User findById(int user_id);
	
	/**
	 * ��ѯȫ��
	 */
	List<User>getAll();
	
	/**
	 * �����������Ʋ�ѯ
	 */
	User queryBy(String name);
	
	User queryBy(int id);


}
