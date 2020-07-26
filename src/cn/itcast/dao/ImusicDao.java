package cn.itcast.dao;

import java.util.List;

import cn.itcast.entity.music;;
/**
 * music dao�ӿ����
 * �ӿڣ��Թ��ܽ��ж���  ����ע���ʵ�֣�
 * @author ADMIN
 *
 */

public interface ImusicDao {
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
	public List<music> getAll(String music_name);
	
	music queryByNameOrId(String name, int id);	
	
	music queryByName(String name);
	
	music queryById(int id);
}
