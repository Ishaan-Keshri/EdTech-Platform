package master.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import master.dao.CourseDao;
import master.dto.CourseDto;

@WebServlet("/CourseUpdateServe")
public class CourseUpdateServe extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        response.setContentType("text/html");

        String cid = request.getParameter("cid");
        String cname = request.getParameter("cname");
        String iname = request.getParameter("iname");
        String sname = request.getParameter("sname");
        String cdue = request.getParameter("cdue");
        String cdis = request.getParameter("cdis");
        String cmat = request.getParameter("cmat");
        String cvideo = request.getParameter("cvideo");
        // Create DTO
        CourseDto cdto = new CourseDto();
        cdto.setCid(cid);
        cdto.setCname(cname);
        cdto.setIname(iname);
        cdto.setSname(sname);
        cdto.setCdue(cdue);
        cdto.setCdis(cdis);
        cdto.setCmat(cmat);
        cdto.setCvideo(cvideo);

        // Save to database
        CourseDao cdao = new CourseDao();
        int result = cdao.updateData(cdto);
        if (result > 0) {
        	// Redirect to success page
            response.sendRedirect("Update.jsp");
        } else {
            response.getWriter().println("<h3 style='color:red'>Failed to Update course. Check server logs.</h3>");
        }
        
    }
}