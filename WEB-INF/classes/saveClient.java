package activities;

import activities.db.*;
import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class saveClient extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException{
        doPost(req,res);
    }

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException{
        
        HttpSession session = req.getSession();
        
        try {
            DBInteraction db = new DBInteraction();
            db.addusr((String)session.getAttribute("login"), (String)session.getAttribute("password"), 
                (String)session.getAttribute("name"),(String)session.getAttribute("surname"),
                (String)session.getAttribute("address"), (String)session.getAttribute("phone"));
        } catch (Exception e) {
            
        }
	    RequestDispatcher rd = req.getRequestDispatcher("clientSaved.jsp");
	    rd.include(req, res);
	}
}
