package cn.itcast.impl;

import java.util.List;

import org.apache.commons.dbutils.handlers.*;

import cn.itcast.dao.ImusicDao;
import cn.itcast.entity.music;
import cn.itcast.utils.JdbcUtils;

/**
 * music dao µœ÷
 * @author ADMIN
 *
 */
public class musicDao implements ImusicDao{

	@Override
	public void add(music music) {
		
		String sql="insert into music(music_name,music_type,music_host,music_singer) values(?,?,?,?);";
		try {
			JdbcUtils.getQuerrRunner().update(sql,music.getMusic_name(),music.getMusic_type(),music.getMusic_host(),music.getMusic_singer());
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
		
	}

	@Override
	public void update(music music) {
		String sql="update music set music_name=?,music_type=?,music_host=?,music_singer=? where music_id=?;";
		try {
			JdbcUtils.getQuerrRunner().update(sql,music.getMusic_name(),music.getMusic_type(),music.getMusic_host(),music.getMusic_singer(),music.getMusic_id());
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
	}

	@Override
	public  void delete(int music) {
		String sql="delete from music where music_id=? ";
		try {
			JdbcUtils.getQuerrRunner().update(sql,music);
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
		
	}

	@Override
	public music findById(int music_id) {
		String sql="select * from music where music_id=?";
		try {
			return JdbcUtils.getQuerrRunner().query(sql,new BeanHandler<music>(music.class),music_id);
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
	}

	@Override
	public List<music> getAll() {
		String sql="select * from music;";
		

		try {
			return JdbcUtils.getQuerrRunner().query(sql,new BeanListHandler<music>(music.class));
			
		}catch(Exception e) {
			throw new RuntimeException(e);
		}	
	}

	public List<music> getAll(String music_name) {
		String sql="select * from music where music_name like ?;";
		try {
			return JdbcUtils.getQuerrRunner().query(sql,new BeanListHandler<music>(music.class),"%"+music_name+"%");
		}catch(Exception e) {
			throw new RuntimeException(e);
		}	

		
	}

	@Override
	public music queryByNameOrId(String name, int id) {
		String sql="select * from music where music_id=? or music_name = ?";
		try {
			return JdbcUtils.getQuerrRunner().query(sql,new BeanHandler<music>(music.class),id,name);
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
		
	}
	
	
	public music queryByName(String name) {
		String sql="select * from music where music_name = ?";
		try {
			return JdbcUtils.getQuerrRunner().query(sql,new BeanHandler<music>(music.class),name);
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	public music queryById(int id) {
		String sql="select * from music where music_id=?";
		try {
			return JdbcUtils.getQuerrRunner().query(sql,new BeanHandler<music>(music.class),id);
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
	}

}
