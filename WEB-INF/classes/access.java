import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class access extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException{
        doPost(req,res);
    }

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException{
        
	    RequestDispatcher rd = req.getRequestDispatcher("access.jsp");
	    rd.include(req, res);
	}
}
