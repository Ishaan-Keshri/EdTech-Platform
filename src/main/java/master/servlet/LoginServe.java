package master.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import master.dao.RegisterDao;

/**
 * Servlet implementation class LoginServe
 */
@WebServlet("/LoginServe")
public class LoginServe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		RegisterDao rdao=new RegisterDao();
		boolean flag=rdao.CheckLogin(uname, pass);
		System.out.println(flag);
		if(uname.equals("admin") && pass.equals("admin"))
		{
			response.sendRedirect("AdminDashboard.jsp");
		}
		else
		{
			if(flag==true)
			{
				HttpSession session = request.getSession();
				session.setAttribute("username", uname);
				response.sendRedirect("UserDashboard.jsp");
			}
			else
			{
				response.sendRedirect("error.jsp");
			}
		}
	}

}
