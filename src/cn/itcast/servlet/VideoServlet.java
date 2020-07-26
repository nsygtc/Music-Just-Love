package cn.itcast.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.entity.Video;
import cn.itcast.factory.BeanFactory;
import cn.itcast.service.IVideoService;
import cn.itcast.service.impl.VideoService;

public class VideoServlet extends HttpServlet{
	
	// µ÷ÓÃµÄMusic Service
	private IVideoService videoService = BeanFactory.getInstance("videoService", IVideoService.class);

	// Ìø×ª×ÊÔ´
	private String uri;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		System.out.println("Õ©Æ­´ó");
		// ÉèÖÃ±àÂë
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		// 1.½ÓÊÜ²ÎÊý
		response.getWriter().append("Served at: ").append(request.getContextPath());
		// »ñÈ¡²Ù×÷µÄÀàÐÍ
		String method = request.getParameter("method");
		// 2.ÎªÇëÇóÑ°ÕÒºÏÊÊµÄserclet´¦Àí·½·¨

		// ÅÐ¶ÏÊÇÄÄÒ»ÖÖ²Ù×÷
		if ("addVideo".equals(method)) {
			// Ìí¼Ó
			addVideo(request, response);

		}

		else if ("displayAll".equals(method)) {
			// ÁÐ±íÕ¹Ê¾
			displayAll(request, response);
		}

		else if ("updateVideo".equals(method)) {
			// ¸üÐÂ
			updateVideo(request, response);
		}

		else if ("deleteVideo".equals(method)) {
			// É¾³ý
			deleteVideo(request, response);
		}

		else if ("viewUpdate".equals(method)) {
			// ½øÈë¸üÐÂÒ³Ãæ
			viewUpdate(request, response);
		}
		else if ("queryByOthers".equals(method)) {
			// ½øÈë¸üÐÂÒ³Ãæ
			System.out.println("dsfsafsfd");
			queryByOthers(request, response);
		}

	}



	private void queryByOthers(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}



	// Ìí¼Ómusic
	public void addVideo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			// »ñÈ¡ÇëÇóÊý¾Ý·â×°
			Video m = new Video();
			// 1.½ÓÊÕ²ÎÊý

	 		String video_id = request.getParameter("video_id");
	 		m.setVideo_id(Integer.valueOf(video_id));
	 		String video_name = request.getParameter("video_name");
	 		m.setVideo_name(video_name);
	 		String video_type = request.getParameter("video_type");  
	 		m.setVideo_type(Integer.valueOf(video_type));
	 		String video_host = request.getParameter("video_host"); 
	 		m.setVideo_host(Integer.valueOf(video_host));
	 		String video_score = request.getParameter("video_score");
	 		m.setVideo_score(Integer.valueOf(video_score));


			// String user_name = request.getParameter("user_name");
			// m.setUser_name(user_name);
			// String user_id = request.getParameter("user_id");
			// m.setUser_id(Integer.valueOf(user_id));
			// String user_attribute1 = request.getParameter("user_attribute");
			// int user_attribute=Integer.valueOf(user_attribute1);
			// m.setUser_attribute(user_attribute);
			// String user_password = request.getParameter("user_password");
			// m.setUser_password(user_password);
			// String user_contact = request.getParameter("user_contact");
			// m.setUser_contact(user_contact);
			// 2.ÒµÎñÂß¼­´¦Àí
			// µ÷ÓÃservice´¦ÀíÒµÎñÂß¼­

			videoService.add(m);
			// uri = "/FrontPage/mjl/yemianzhanshi/first.jsp";
			// Ìø×ª(×ª·¢ ÖØ¶¨Ïò js)
			displayAll(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			uri = "/error/error.jsp";
			request.getRequestDispatcher(uri).forward(request, response);
		}
		// 3.½«½á¹û·¢ËÍÖÁÇ°¶Ë
		// ÖØ¶¨Ïò

	}

	private void deleteVideo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			int video_id = Integer.parseInt(request.getParameter("video_id"));
			videoService.delete(video_id);

			// Ìø×ª(×ª·¢ ÖØ¶¨Ïò js)
			displayAll(request, response);

		} catch (Exception e) {
			e.printStackTrace();
			uri = "/error/error.jsp";
			request.getRequestDispatcher(uri).forward(request, response);
		}
	}

	private void updateVideo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			Video m = new Video();

	 		String video_id = request.getParameter("video_id");
	 		m.setVideo_id(Integer.valueOf(video_id));
	 		String video_name = request.getParameter("video_name");
	 		m.setVideo_name(video_name);
	 		String video_type = request.getParameter("video_type");  
	 		m.setVideo_type(Integer.valueOf(video_type));
	 		String video_host = request.getParameter("video_host"); 
	 		m.setVideo_host(Integer.valueOf(video_host));
	 		String video_score = request.getParameter("video_score");
	 		m.setVideo_score(Integer.valueOf(video_score));
			
			// int music_id = Integer.parseInt(request.getParameter("music_id"));
			// String music_name = request.getParameter("music_name");
			// String music_singer = request.getParameter("music_singer");
			// String music_type = request.getParameter("music_type");
			// String music_host = request.getParameter("music_host");

			// music im = new music();
			// im.setMusic_id(music_id);
			// im.setMusic_name(music_name);
			// im.setMusic_singer(music_singer);
			// im.setMusic_type(Integer.valueOf(music_type));
			// im.setMusic_host(Integer.valueOf(music_host));

			videoService.update(m);

			// Ìø×ª(×ª·¢ ÖØ¶¨Ïò js)
			displayAll(request, response);

		} catch (Exception e) {
			e.printStackTrace();
			uri = "/error/error.jsp";
			request.getRequestDispatcher(uri).forward(request, response);
		}

	}

	// ÁÐ±íÕ¹Ê¾ËùÓÐÒôÀÖ
	public void displayAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			// µ÷ÓÃService²éÑ¯ËùÓÐÀà±ð
			List<Video> list = videoService.getAll();

			for (Video m : list) {

			}
			// ±£´æ
			request.setAttribute("displayVideo", list);
			// uriÂ·¾¶ Ìø×ªµ½MusicManagementÒ³Ãæ
			uri = "/ManageSystem/public/VideoManagement.jsp";
		} catch (Exception e) {
			e.printStackTrace();
			uri = "/error/error.jsp";
		}

		// 3.½«½á¹û·¢ËÍÖÁÇ°¶Ë

		request.getRequestDispatcher(uri).forward(request, response);

		// ÖØ¶¨Ïò

	}

	private void viewUpdate(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			// »ñÈ¡id
			String video_id = request.getParameter("video_id");
			// ¸ù¾Ýid²éÑ¯¶ÔÏó
			Video im = videoService.findById(Integer.parseInt(video_id));
			// ±£´æ
			request.setAttribute("Video", im);
			// Ìø×ª
			uri = "public/updateVideo.jsp";
		} catch (Exception e) {
			e.printStackTrace();
			uri = "/error/error.jsp";
		}
		request.getRequestDispatcher(uri).forward(request, response);

	}

}
