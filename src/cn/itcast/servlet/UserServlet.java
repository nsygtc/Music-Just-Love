package cn.itcast.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.entity.User;
import cn.itcast.factory.BeanFactory;
import cn.itcast.service.IUserService;
import cn.itcast.service.impl.UserService;

public class UserServlet extends HttpServlet {
	

	private IUserService userService = BeanFactory.getInstance("userService", IUserService.class);

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
		if ("addUser".equals(method)) {
			// ���
			addUser(request, response);

		}

		else if ("displayAll".equals(method)) {
			// չʾ

			displayAll(request, response);

		}

		else if ("updateUser".equals(method)) {
			// ����
			updateUser(request, response);
		}

		else if ("deleteUser".equals(method)) {
			// ɾ��
			deleteUser(request, response);
		}

		else if ("viewUpdate".equals(method)) {
			// �������ҳ��
			viewUpdate(request, response);
		}
		else if ("queryBy".equals(method)) {
			queryBy(request, response);
		}

	}
	
	// ���music
		public void addUser(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			try {
				System.out.println("add user ___________-");
				// ��ȡ�������ݷ�װ
				User m = new User();
				// 1.���ղ���

				String user_name = request.getParameter("user_name");
				m.setUser_name(user_name);
				String user_id = request.getParameter("user_id");
				m.setUser_id(Integer.valueOf(user_id));
				String user_password = request.getParameter("user_password");
				m.setUser_password(user_password);
				String user_contact = request.getParameter("user_contact");
				m.setUser_contact(user_contact);
				int user_attribute;
				if("2017061630".equals(user_id)) {
					user_attribute=1;
					uri = "/MusicJustLoveSystem/ManageSystem/public/index.jsp";
				}else {
					user_attribute=0;
					uri = "/MusicJustLoveSystem/FrontPage/mjl/first.jsp";
				}
				m.setUser_attribute(user_attribute);
				userService.add(m);
			} catch (Exception e) {
				e.printStackTrace();
				uri = "/error/error.jsp";
				
			}
			// 3.�����������ǰ��
			response.sendRedirect(uri);
			//request.getRequestDispatcher(uri).forward(request, response);
			// �ض���

		}
		
		// �б�չʾ��������
		public void displayAll(HttpServletRequest request, HttpServletResponse response)

				throws ServletException, IOException {

			try {
				// ����Service��ѯ�������
				List<User> list = userService.getAll();

				for (User m : list) {

				}
				// ����
				request.setAttribute("displayUser", list);
				// uri·�� ��ת��MusicManagementҳ��
				uri = "/ManageSystem/public/UserManagement.jsp";
			} catch (Exception e) {
				e.printStackTrace();
				uri = "/error/error.jsp";
			}

			// 3.�����������ǰ��

			request.getRequestDispatcher(uri).forward(request, response);
			// �ض���

		}

		// ����
		private void updateUser(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			try {

				int user_id = Integer.parseInt(request.getParameter("user_id"));
				//String user_name = request.getParameter("user_name");
				//String user_password = request.getParameter("user_password");
				int user_attribute = Integer.parseInt(request.getParameter("user_attribute"));
				//String user_contact = request.getParameter("user_contact");
				System.out.println("attribute "+user_attribute);

				User im = new User();
				//im.setUser_password(user_password);
				//im.setUser_name(user_name);
				im.setUser_attribute(Integer.valueOf(user_attribute));
				im.setUser_id(Integer.valueOf(user_id));
				//im.setUser_contact(user_contact);

				userService.update(im);

				// ��ת(ת�� �ض��� js)
				displayAll(request, response);

			} catch (Exception e) {
				e.printStackTrace();
				uri = "/error/error.jsp";
				request.getRequestDispatcher(uri).forward(request, response);
			}

		}

	
	private void deleteUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			int user_id = Integer.parseInt(request.getParameter("user_id"));
			System.out.println("user id "+user_id);
			userService.delete(user_id);

			// ��ת(ת�� �ض��� js)
			displayAll(request, response);

		} catch (Exception e) {
			e.printStackTrace();
			uri = "/error/error.jsp";
			request.getRequestDispatcher(uri).forward(request, response);
		}
	}



	// �������ҳ��
	private void viewUpdate(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			// ��ȡid
			String user_id = request.getParameter("user_id");
			
			// ����id��ѯ����
			User im = userService.findById(Integer.parseInt(user_id));

			// ����
			request.setAttribute("User", im);
			// ��ת
			uri = "public/updateUser.jsp";
		} catch (Exception e) {
			e.printStackTrace();
			uri = "/error/error.jsp";
		}
		request.getRequestDispatcher(uri).forward(request, response);

	}

	private void queryBy(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("queryName");
		String id = request.getParameter("queryID");
		
        User m = null;
		if (!"".equals(name)) {
			if (!"".equals(id)) {
				m= userService.queryBy(Integer.valueOf(id));
			} else {
				userService.queryBy(name);
			}
		} else {
			if (!"".equals(id)) {
				userService.queryBy(Integer.valueOf(id));
			} else {
				
			}
		}
		request.setAttribute("music", m);
		System.out.println("�ɹ��ߵ�������");
		request.getRequestDispatcher("").forward(request, response);

	}

	

	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		this.doGet(request, response);
	}
}

	


