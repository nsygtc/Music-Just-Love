package cn.itcast.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.entity.Theory;
import cn.itcast.factory.BeanFactory;
import cn.itcast.service.ITheoryService;
import cn.itcast.service.impl.TheoryService;

public class TheoryServlet extends HttpServlet{

	// µ÷ÓÃµÄMusic Service
	private ITheoryService theoryService = BeanFactory.getInstance("theoryService", ITheoryService.class);

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
		if ("addTheory".equals(method)) {
			// Ìí¼Ó
			addTheory(request, response);

		}

		else if ("displayAll".equals(method)) {
			// ÁÐ±íÕ¹Ê¾
			displayAll(request, response);

		}

		else if ("updateTheory".equals(method)) {
			// ¸üÐÂ
			updateTheory(request, response);
		}

		else if ("deleteTheory".equals(method)) {
			// 
			deleteTheory(request, response);
		}

		else if ("viewUpdate".equals(method)) {
			// 
			viewUpdate(request, response);
		}
		else if ("queryByOthers".equals(method)) {
			// δʵ��
			System.out.println("dsfsafsfd");
			queryByOthers(request, response);
		}

	}


	private void queryByOthers(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}


	// Ìí¼Ómusic
	public void addTheory(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			// »ñÈ¡ÇëÇóÊý¾Ý·â×°
			Theory m = new Theory();
			// 1.½ÓÊÕ²ÎÊý


			String musicTheory_id = request.getParameter("musicTheory_id");
			m.setMusicTheory_id(Integer.valueOf(musicTheory_id));
			String musicTheory_name = request.getParameter("musicTheory_name");
			m.setMusicTheory_name(musicTheory_name);
			String musicTheory_content = request.getParameter("musicTheory_content");
			m.setMusicTheory_content(musicTheory_content);
			String musicTheory_host = request.getParameter("musicTheory_host");
			m.setMusicTheory_host(Integer.valueOf(musicTheory_host));

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
			theoryService.add(m);
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

	private void deleteTheory(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			int musicTheory_id = Integer.parseInt(request.getParameter("musicTheory_id"));
			theoryService.delete(musicTheory_id);

			// Ìø×ª(×ª·¢ ÖØ¶¨Ïò js)
			displayAll(request, response);

		} catch (Exception e) {
			e.printStackTrace();
			uri = "/error/error.jsp";
			request.getRequestDispatcher(uri).forward(request, response);
		}
	}

	private void updateTheory(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			Theory m = new Theory();

			String musicTheory_id = request.getParameter("musicTheory_id");
			m.setMusicTheory_id(Integer.valueOf(musicTheory_id));
			String musicTheory_name = request.getParameter("musicTheory_name");
			m.setMusicTheory_name(musicTheory_name);
			String musicTheory_content = request.getParameter("musicTheory_content");
			m.setMusicTheory_content(musicTheory_content);
			String musicTheory_host = request.getParameter("musicTheory_host");
			m.setMusicTheory_host(Integer.valueOf(musicTheory_host));
			
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

			theoryService.update(m);

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
			List<Theory> list = theoryService.getAll();

			for (Theory m : list) {

			}
			// ±£´æ
			request.setAttribute("displayTheory", list);
			// uriÂ·¾¶ Ìø×ªµ½MusicManagementÒ³Ãæ
			uri = "/ManageSystem/public/MusicTheoryManagement.jsp";
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
			String musicTheory_id = request.getParameter("musicTheory_id");
			// ¸ù¾Ýid²éÑ¯¶ÔÏó
			Theory im = theoryService.findById(Integer.parseInt(musicTheory_id));
			// ±£´æ
			request.setAttribute("Theory", im);
			// Ìø×ª
			uri = "public/updateTheory.jsp";
		} catch (Exception e) {
			e.printStackTrace();
			uri = "/error/error.jsp";
		}
		request.getRequestDispatcher(uri).forward(request, response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		this.doGet(request, response);
	}
}
