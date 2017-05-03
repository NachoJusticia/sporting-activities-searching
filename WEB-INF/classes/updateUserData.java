import activities.db.*;
import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class updateUserData extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException{
        doPost(req,res);
    }

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException{
        
        HttpSession session = req.getSession(true);
        session.setAttribute("message","");

        try {
            DBInteraction db = new DBInteraction();
            db.updateUser((String)session.getAttribute("login"), 
                (String)session.getAttribute("name"),(String)session.getAttribute("surname"),
                (String)session.getAttribute("address"), (String)session.getAttribute("phone"));
        } catch (Exception e) {
            
        }
        session.setAttribute("message","Your profile information was successfully updated");
	    RequestDispatcher rd = req.getRequestDispatcher("application.jsp");
	    rd.include(req, res);
	}
}
