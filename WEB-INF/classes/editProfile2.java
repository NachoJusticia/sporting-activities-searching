import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class editProfile2 extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException{
        doPost(req,res);
    }

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException{

        HttpSession session = req.getSession(true);

	    RequestDispatcher rd = req.getRequestDispatcher("editProfile2.jsp");
	    rd.include(req, res);
	}
}
