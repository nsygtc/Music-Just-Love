package cn.itcast.entity;


/**
 * 实体类设计
 * 
 * @author ADMIN
 *
 */
public class music {
	
			 private  int music_id;
			 private  String music_name;  
			 private  int music_type;  
			 private  int music_host; 
			 private  String music_singer;
			 
			 
			@Override
			public String toString() {
				return "music_name="+music_name+",music_type="+music_type+",music_host="+music_host+",music_singer="+music_singer;
			}
			public  int getMusic_id() {
				return music_id;
			}
			public void setMusic_id(int music_id) {
				this.music_id = music_id;
			}
			public  String getMusic_name() {
				return music_name;
			}
			public void setMusic_name(String music_name) {
				this.music_name = music_name;
			}
			public  int getMusic_type() {
				return music_type;
			}
			public void setMusic_type(int music_type) {
				this.music_type = music_type;
			}
			public  int getMusic_host() {
				return music_host;
			}
			public void setMusic_host(int music_host) {
				this.music_host = music_host;
			}
			public  String getMusic_singer() {
				return music_singer;
			}
			public void setMusic_singer(String music_singer) {
				this.music_singer = music_singer;
			}

			 
			 

}
