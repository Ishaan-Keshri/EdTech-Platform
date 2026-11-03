package master.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import master.dao.UserCourseDao;
import master.dto.UserCourseDto;

/**
 * Servlet implementation class UserCourseDelServer
 */
@WebServlet("/UserCourseDelServer")
public class UserCourseDelServer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");

        String cid = request.getParameter("cid");
        String uname = request.getParameter("uname");
        UserCourseDto ucdto = new UserCourseDto();
        ucdto.setCid(cid);
        ucdto.setUname(uname);
        UserCourseDao ucdao = new UserCourseDao();
        int result = ucdao.deleteData(ucdto);
        HttpSession session = request.getSession();
		session.setAttribute("username", uname);
        if (result > 0) {
        	response.sendRedirect("UserCourseDeleted.jsp");
            //response.getWriter().println("<h3 style='color:green'>Course Deleted Successfully!</h3>");
        } else {
            response.getWriter().println("<h3 style='color:red'>Failed to Delete course. Check server logs.</h3>");
        }
	}

}
