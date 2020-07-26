package cn.itcast.service.impl;

import java.util.List;

import cn.itcast.dao.ImusicDao;
import cn.itcast.entity.music;
import cn.itcast.factory.BeanFactory;
import cn.itcast.impl.musicDao;
import cn.itcast.service.ImusicService;

/**
 * ҵ���߼���ӿ�ʵ��
 * @author ADMIN
 *
 */
public class MusicService implements ImusicService{
	
	//����dao
	//	private ImusicDao imusicDao=new musicDao();//����Ĵ�������д��
    //���ù����ĵ���   ��������,��������ת��
	
	private ImusicDao imusicDao = BeanFactory.getInstance("iMusicDao", ImusicDao.class);

	@Override
	public void update(music music_id) {
		try {
			  imusicDao.update(music_id);
		}catch(Exception e) {
			throw new RuntimeException(e);
			
		}

		
	}

	@Override
	public void delete(int music_id) {
		try {
			 imusicDao.delete(music_id);
		}catch(Exception e) {
			throw new RuntimeException(e);
		}

		
	}

	@Override
	public music findById(int music_id) {

		try {
			 return imusicDao.findById(music_id);
		}catch(Exception e) {
			throw new RuntimeException(e);
		}

	}

	@Override
	public List<music> getAll() {

		try {
			 return imusicDao.getAll();
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
	}

	
	
	

	@Override
	public  void add(music music_name) {
			
			try {
				  imusicDao.add(music_name);
			}catch(Exception e) {
				throw new RuntimeException(e);
			}
		
	}

	@Override
	public music queryByNameOrId(String name, int id) {
		try {
			  return imusicDao.queryByNameOrId(name,id);
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
		
	}
	
	public music queryByName(String name) {
		try {
			  return imusicDao.queryByName(name);
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
		
	}
	
	public music queryById(int id) {
		try {
			  return imusicDao.queryById(id);
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
		
	}

	
	
}
