package master.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import master.dao.CourseDao;
import master.dto.CourseDto;

/**
 * Servlet implementation class CourseDelServe
 */
@WebServlet("/CourseDelServe")
public class CourseDelServe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String cid=request.getParameter("cid");
		CourseDto cdto = new CourseDto();
		cdto.setCid(cid);
		CourseDao cdao = new CourseDao();
		cdao.deleteData(cdto);
		response.sendRedirect("Del.jsp");
	}

}
