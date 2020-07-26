package cn.itcast.service;

import java.util.List;

import cn.itcast.entity.music;

/**
 * musicҵ���߼��� �ӿ����
 * @author ADMIN
 *
 */
public interface ImusicService {
		/**
		 * ���
		 */
		void add(music music_name);
		
		/**
		 * ����
		 */
		void update(music music_name);
		
		/**
		 * ɾ��
		 */
		void delete(int music_id);
		
		/**
		 * ����������ѯ
		 */
		music findById(int music_id);
		
		/**
		 * ��ѯȫ��
		 */
		List<music>getAll();
		
		/**
		 * �����������Ʋ�ѯ
		 */


		music queryByNameOrId(String name, int id);
		
		music queryByName(String name);
		
		music queryById(int id);

}
