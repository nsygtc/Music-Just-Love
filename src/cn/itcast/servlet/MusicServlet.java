package cn.itcast.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.entity.music;
import cn.itcast.factory.BeanFactory;
import cn.itcast.service.ImusicService;
import cn.itcast.service.impl.MusicService;

/**
 * musicManagement Servlet开发 a.添加新歌曲 b。musicManagement页面展示 Servlet
 * implementation class MusicServlet
 */

public class MusicServlet extends HttpServlet {
	/* private static final long serialVersionUID = 1L; */

	// 调用的Music Service
	private ImusicService musicService = BeanFactory.getInstance("musicService", ImusicService.class);

	// 跳转资源
	private String uri;

	/**
	 * 
	 * 1.接收参数 2.进行业务逻辑处理 3.将结果返回前端
	 * 
	 * 
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		System.out.println("诈骗大");
		// 设置编码
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		// 1.接受参数
		response.getWriter().append("Served at: ").append(request.getContextPath());
		// 获取操作的类型
		String method = request.getParameter("method");
		// 2.为请求寻找合适的serclet处理方法

		// 判断是哪一种操作
		if ("addMusic".equals(method)) {
			// 添加
			addMusic(request, response);

		}

		else if ("displayAll".equals(method)) {
			// 列表展示
			displayAll(request, response);

		}

		else if ("updateMusic".equals(method)) {
			// 更新
			updateMusic(request, response);
		}

		else if ("deleteMusic".equals(method)) {
			// 删除
			deleteMusic(request, response);
		}

		else if ("viewUpdate".equals(method)) {
			// 进入更新页面
			viewUpdate(request, response);
		}
		else if ("queryByOthers".equals(method)) {
			// 进入更新页面
			System.out.println("dsfsafsfd");
			queryByOthers(request, response);
		}

	}

	private void queryByOthers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("queryName");
		String qid = request.getParameter("queryID");
        music m = null;
        
		if (!"".equals(name)) {
			if (!"".equals(qid)) {
				System.out.println("query 1");
		        int id=Integer.valueOf(qid);
				m= musicService.queryByNameOrId(name,id);
			} else {
				System.out.println("query 2");
				m = musicService.queryByName(name);
			}
		} else {
			if (!"".equals(qid)) {
				System.out.println("query 3");
		        int id=Integer.valueOf(qid);
				m = musicService.queryById(id);
			} else {
				
			}
		}
		
		try {
			// 调用Service查询所有类别
			List<music> list = new ArrayList<music>();
			list.add(m);
			// 保存
			request.setAttribute("displayMusic", list);
			// uri路径 跳转到MusicManagement页面
			uri = "/ManageSystem/public/MusicManagement.jsp";
		} catch (Exception e) {
			e.printStackTrace();
			uri = "/error/error.jsp";
		}
	
		// 3.将结果发送至前端
	
		request.getRequestDispatcher(uri).forward(request, response);

	}

	// 进入更新页面
	private void viewUpdate(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			// 获取id
			String music_id = request.getParameter("music_id");
			// 根据id查询对象
			music im = musicService.findById(Integer.parseInt(music_id));
			// 保存
			request.setAttribute("music", im);
			// 跳转
			uri = "public/updateMusic.jsp";
		} catch (Exception e) {
			e.printStackTrace();
			uri = "/error/error.jsp";
		}
		request.getRequestDispatcher(uri).forward(request, response);

	}

	private void deleteMusic(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			int music_id = Integer.parseInt(request.getParameter("music_id"));

			musicService.delete(music_id);

			// 跳转(转发 重定向 js)
			displayAll(request, response);

		} catch (Exception e) {
			e.printStackTrace();
			uri = "/error/error.jsp";
			request.getRequestDispatcher(uri).forward(request, response);
		}
	}

	// 更新
	private void updateMusic(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			int music_id = Integer.parseInt(request.getParameter("music_id"));
			String music_name = request.getParameter("music_name");
			String music_singer = request.getParameter("music_singer");
			String music_type = request.getParameter("music_type");
			String music_host = request.getParameter("music_host");

			music im = new music();
			im.setMusic_id(music_id);
			im.setMusic_name(music_name);
			im.setMusic_singer(music_singer);
			im.setMusic_type(Integer.valueOf(music_type));
			im.setMusic_host(Integer.valueOf(music_host));

			musicService.update(im);

			// 跳转(转发 重定向 js)
			displayAll(request, response);

		} catch (Exception e) {
			e.printStackTrace();
			uri = "/error/error.jsp";
			request.getRequestDispatcher(uri).forward(request, response);
		}

	}

	// 添加music
	public void addMusic(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			// 获取请求数据封装
			music m = new music();
			// 1.接收参数
			// 接受name
			String music_name = request.getParameter("music_name");
			m.setMusic_name(music_name);
			// 接受歌手信息
			String music_singer = request.getParameter("music_singer");
			m.setMusic_singer(music_singer);
			// 接受类型
			String music_type = request.getParameter("music_type");
			m.setMusic_type(Integer.valueOf(music_type));
			// 接受学号
			String music_host = request.getParameter("music_host");
			m.setMusic_host(Integer.valueOf(music_host));
			// 2.业务逻辑处理
			// 调用service处理业务逻辑
			musicService.add(m);

			// 跳转(转发 重定向 js)
			displayAll(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			uri = "/error/error.jsp";
			request.getRequestDispatcher(uri).forward(request, response);
		}
		// 3.将结果发送至前端

		// 重定向

	}

	// 列表展示所有音乐
	public void displayAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			// 调用Service查询所有类别
			List<music> list = musicService.getAll();

			for (music m : list) {

			}
			// 保存
			request.setAttribute("displayMusic", list);
			// uri路径 跳转到MusicManagement页面
			uri = "/ManageSystem/public/MusicManagement.jsp";
		} catch (Exception e) {
			e.printStackTrace();
			uri = "/error/error.jsp";
		}

		// 3.将结果发送至前端

		request.getRequestDispatcher(uri).forward(request, response);

		// 重定向

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		this.doGet(request, response);
	}

}
