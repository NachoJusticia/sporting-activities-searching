import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import activities.db.*;

public class access extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException{
        doPost(req,res);
    }

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException{
        
        boolean authenticated = false;
        
        try { 
            DBInteraction db = new DBInteraction();
            authenticated = db.authentication((String)req.getParameter("login"),(String)req.getParameter("password"));
        } catch(Exception e) {

        }
        
        if(authenticated) {
            HTTPSession session = req.getSession(true);
            session.setAttribute("login",(String))req.getParameter("login"));
            RequestDispatcher rd = req.getRequestDispatcher("application.jsp");
            rd.include(req, res);
        } else{
            RequestDispatcher rd = req.getRequestDispatcher("access.jsp");
            rd.include(req, res);
        }
	}
}
