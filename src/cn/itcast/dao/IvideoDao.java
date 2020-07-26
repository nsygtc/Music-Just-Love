package cn.itcast.dao;

import java.util.List;

import cn.itcast.entity.Video;

public interface IvideoDao {
	/**
	 * ×¢²á
	 */
	void add(Video video);
	
	/**
	 * ¸üÐÂ
	 */
	void update(Video video);
	
	/**
	 * É¾³ý
	 */
	void delete(int video_id);
	
	/**
	 * ¸ù¾ÝÖ÷¼ü²éÑ¯
	 */
	Video findById(int video_id);
	
	/**
	 * ²éÑ¯È«²¿
	 */
	List<Video>getAll();
	
	/**
	 * °´ÕÕÒôÀÖÃû³Æ²éÑ¯
	 */


	List<Video> getByName(String video_name);

	List<Video> getByID(int video_id);

	List<Video> getByType(int video_type);
}
