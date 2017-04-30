import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class editData extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException{
        doPost(req,res);
    }

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException{

        HttpSession session = req.getSession();

	    RequestDispatcher rd = req.getRequestDispatcher("editData.jsp");
	    rd.include(req, res);
	}
}
