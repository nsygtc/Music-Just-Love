package cn.itcast.service;

import java.util.List;

import cn.itcast.entity.music;

/**
 * music业务逻辑层 接口设计
 * @author ADMIN
 *
 */
public interface ImusicService {
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


		music queryByNameOrId(String name, int id);
		
		music queryByName(String name);
		
		music queryById(int id);

}
