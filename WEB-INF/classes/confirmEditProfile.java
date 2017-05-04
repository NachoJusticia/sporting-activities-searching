import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class confirmEditProfile extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException{
        doPost(req,res);
    }

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException{
        
        HttpSession session = req.getSession(true);

        String name = req.getParameter("name");
        String surname = req.getParameter("surname");
        String address = req.getParameter("address");
        String phone = req.getParameter("phone");

        session.setAttribute("name",name);
        session.setAttribute("surname",surname);
        session.setAttribute("address",address);
        session.setAttribute("phone",phone);
        
	    RequestDispatcher rd = req.getRequestDispatcher("confirmEditProfile.jsp");
	    rd.include(req, res);
	}
}
