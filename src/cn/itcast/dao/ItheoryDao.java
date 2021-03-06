package cn.itcast.dao;

import java.util.List;

import cn.itcast.entity.Theory;

public interface ItheoryDao {
	/**
	 * ×¢²á
	 */
	void add(Theory theory);
	
	/**
	 * ¸üÐÂ
	 */
	void update(Theory theory);
	
	/**
	 * É¾³ý
	 */
	void delete(int theory_id);
	
	/**
	 * ¸ù¾ÝÖ÷¼ü²éÑ¯
	 */
	Theory findById(int theory_id);
	
	/**
	 * ²éÑ¯È«²¿
	 */
	List<Theory>getAll();
	
	/**
	 * °´ÕÕÒôÀÖÃû³Æ²éÑ¯
	 */


	List<Theory> getByName(String theory_name);

	List<Theory> getByID(int theory_id);

	List<Theory> getByContent(String theory_content);

}
