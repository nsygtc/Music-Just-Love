package cn.itcast.dao;

import java.util.List;

import cn.itcast.entity.User;

public interface IuserDao {
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


	List<User> getByName(String user_name);

	List<User> getByID(int user_id);

	List<User> getByContact(String user_contact);

	User queryBy(int id);
	
    User queryBy(String name);

}
