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
 * musicManagement Servlet���� a.����¸��� b��musicManagementҳ��չʾ Servlet
 * implementation class MusicServlet
 */

public class MusicServlet extends HttpServlet {
	/* private static final long serialVersionUID = 1L; */

	// ���õ�Music Service
	private ImusicService musicService = BeanFactory.getInstance("musicService", ImusicService.class);

	// ��ת��Դ
	private String uri;

	/**
	 * 
	 * 1.���ղ��� 2.����ҵ���߼����� 3.���������ǰ��
	 * 
	 * 
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		System.out.println("թƭ��");
		// ���ñ���
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		// 1.���ܲ���
		response.getWriter().append("Served at: ").append(request.getContextPath());
		// ��ȡ����������
		String method = request.getParameter("method");
		// 2.Ϊ����Ѱ�Һ��ʵ�serclet������

		// �ж�����һ�ֲ���
		if ("addMusic".equals(method)) {
			// ���
			addMusic(request, response);

		}

		else if ("displayAll".equals(method)) {
			// �б�չʾ
			displayAll(request, response);

		}

		else if ("updateMusic".equals(method)) {
			// ����
			updateMusic(request, response);
		}

		else if ("deleteMusic".equals(method)) {
			// ɾ��
			deleteMusic(request, response);
		}

		else if ("viewUpdate".equals(method)) {
			// �������ҳ��
			viewUpdate(request, response);
		}
		else if ("queryByOthers".equals(method)) {
			// �������ҳ��
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
			// ����Service��ѯ�������
			List<music> list = new ArrayList<music>();
			list.add(m);
			// ����
			request.setAttribute("displayMusic", list);
			// uri·�� ��ת��MusicManagementҳ��
			uri = "/ManageSystem/public/MusicManagement.jsp";
		} catch (Exception e) {
			e.printStackTrace();
			uri = "/error/error.jsp";
		}
	
		// 3.�����������ǰ��
	
		request.getRequestDispatcher(uri).forward(request, response);

	}

	// �������ҳ��
	private void viewUpdate(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			// ��ȡid
			String music_id = request.getParameter("music_id");
			// ����id��ѯ����
			music im = musicService.findById(Integer.parseInt(music_id));
			// ����
			request.setAttribute("music", im);
			// ��ת
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

			// ��ת(ת�� �ض��� js)
			displayAll(request, response);

		} catch (Exception e) {
			e.printStackTrace();
			uri = "/error/error.jsp";
			request.getRequestDispatcher(uri).forward(request, response);
		}
	}

	// ����
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

			// ��ת(ת�� �ض��� js)
			displayAll(request, response);

		} catch (Exception e) {
			e.printStackTrace();
			uri = "/error/error.jsp";
			request.getRequestDispatcher(uri).forward(request, response);
		}

	}

	// ���music
	public void addMusic(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			// ��ȡ�������ݷ�װ
			music m = new music();
			// 1.���ղ���
			// ����name
			String music_name = request.getParameter("music_name");
			m.setMusic_name(music_name);
			// ���ܸ�����Ϣ
			String music_singer = request.getParameter("music_singer");
			m.setMusic_singer(music_singer);
			// ��������
			String music_type = request.getParameter("music_type");
			m.setMusic_type(Integer.valueOf(music_type));
			// ����ѧ��
			String music_host = request.getParameter("music_host");
			m.setMusic_host(Integer.valueOf(music_host));
			// 2.ҵ���߼�����
			// ����service����ҵ���߼�
			musicService.add(m);

			// ��ת(ת�� �ض��� js)
			displayAll(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			uri = "/error/error.jsp";
			request.getRequestDispatcher(uri).forward(request, response);
		}
		// 3.�����������ǰ��

		// �ض���

	}

	// �б�չʾ��������
	public void displayAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			// ����Service��ѯ�������
			List<music> list = musicService.getAll();

			for (music m : list) {

			}
			// ����
			request.setAttribute("displayMusic", list);
			// uri·�� ��ת��MusicManagementҳ��
			uri = "/ManageSystem/public/MusicManagement.jsp";
		} catch (Exception e) {
			e.printStackTrace();
			uri = "/error/error.jsp";
		}

		// 3.�����������ǰ��

		request.getRequestDispatcher(uri).forward(request, response);

		// �ض���

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		this.doGet(request, response);
	}

}
