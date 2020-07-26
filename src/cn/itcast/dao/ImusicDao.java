package cn.itcast.dao;

import java.util.List;

import cn.itcast.entity.music;;
/**
 * music dao接口设计
 * 接口（对功能进行定义  不关注如何实现）
 * @author ADMIN
 *
 */

public interface ImusicDao {
	/**
	 * 添加
	 */
	void add(music music_name);
	
	/**
	 * 更新
	 */
	void update(music music_name);
	
	/**
	 * 删除
	 */
	void delete(int music_id);
	
	/**
	 * 根据主键查询
	 */
	music findById(int music_id);
	
	/**
	 * 查询全部
	 */
	List<music>getAll();
	
	/**
	 * 按照音乐名称查询
	 */
	public List<music> getAll(String music_name);
	
	music queryByNameOrId(String name, int id);	
	
	music queryByName(String name);
	
	music queryById(int id);
}
