import activities.db.*;
import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class selectedActivityUnsubscribe extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException {
        doPost(req,res);
    }

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        
        HttpSession session = req.getSession(true);
        session.setAttribute("message","");
        
        try {
            DBInteraction db = new DBInteraction();
            int activitiesLength = db.listallact().size();
            int counter = 0;
            for(int i=1; i <= activitiesLength; i++){
                if(req.getParameter(""+i) != null){
                    counter++;
                    db.unregactivity((String)session.getAttribute("login"),""+i);
                }
            }

            if(activitiesLength>0){
                session.setAttribute("message","You were unregistered of " + counter + " activities.");
            }
        }catch(Exception e){

        }

	    RequestDispatcher rd = req.getRequestDispatcher("application.jsp");
	    rd.include(req, res);
	}
}
