import activities.db.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class access extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException{
    
        // Redirect to the home page if the user is not authenticated but tries to access the application
        res.sendRedirect("inicio.html");
    }

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException{
        
        boolean authenticated = false;
        
        try { 
            DBInteraction db = new DBInteraction();
            authenticated = db.authentication((String)req.getParameter("login"),(String)req.getParameter("password"));
        } catch(Exception e) {

        }
        HttpSession session = req.getSession(true);

        if(authenticated) {
            session.setAttribute("login",(String)req.getParameter("login"));
            RequestDispatcher rd = req.getRequestDispatcher("application.jsp");
            rd.include(req, res);
        } else{
            int tries = 0;
            if(session.getAttribute("tries") != null){
                tries = (Integer) session.getAttribute("tries");
            }
            if(tries>=2){
               res.sendRedirect("inicio.html");
            } else {
                tries = tries + 1;
                session.setAttribute("tries",tries);

                RequestDispatcher rd = req.getRequestDispatcher("badCredentials.jsp");
                rd.include(req, res);
            }
        }
	}
}
