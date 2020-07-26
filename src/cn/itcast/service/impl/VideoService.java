package cn.itcast.service.impl;

import java.util.List;

import cn.itcast.dao.IvideoDao;
import cn.itcast.entity.Video;
import cn.itcast.factory.BeanFactory;
import cn.itcast.service.IUserService;
import cn.itcast.service.IVideoService;

public class VideoService implements IVideoService{

	private IvideoDao videoDao = BeanFactory.getInstance("videoDao", IvideoDao.class);


	@Override
	public void add(Video video) {
		try {
			videoDao.add(video);
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
	}

	@Override
	public void update(Video video) {
		try {
			videoDao.update(video);
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
	}

	@Override
	public void delete(int video_id) {
		try {
			videoDao.delete(video_id);
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
	}

	@Override
	public Video findById(int video_id) {
		try {
			return videoDao.findById(video_id);
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
	}

	@Override
	public List<Video> getAll() {
		try {
			return videoDao.getAll();
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
	}

	@Override
	public List<Video> getByName(String video_name) {
		try {
			return videoDao.getByName(video_name);
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
	}

	@Override
	public List<Video> getByID(int video_id) {
		try {
			return videoDao.getByID(video_id);
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
	}

	@Override
	public List<Video> getByType(int video_type) {
		try {
			return videoDao.getByType(video_type);
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
	}

}
