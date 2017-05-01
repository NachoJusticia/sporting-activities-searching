import activities.db.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

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
        HttpSession session = req.getSession();

        if(authenticated) {
            session.setAttribute("login",(String)req.getParameter("login"));
            RequestDispatcher rd = req.getRequestDispatcher("application.jsp");
            rd.include(req, res);
        } else{
            PrintWriter out = res.getWriter();
            int tries = (Integer) session.getAttribute("tries");
            if(tries>=2){
                res.sendRedirect("index.html");
            } else{
                tries = tries + 1;
                out.println("<p>Authentication error. Please, try again...</p>");
                RequestDispatcher rd = req.getRequestDispatcher("access.jsp");
                rd.include(req, res);
            }
            /*int tries = 0;
            tries = (Integer) session.getAttribute("tries");
            if(session.getAttribute("tries")!=null){
                tries = tries + 1;
            }else{
                tries = 0;
            }
            
            session.setAttribute("tries",tries);

            RequestDispatcher rd = req.getRequestDispatcher("access.jsp");
            rd.include(req, res);*/
        }
	}
}
