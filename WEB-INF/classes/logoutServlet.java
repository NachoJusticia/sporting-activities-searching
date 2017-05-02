import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class logoutServlet extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException{
    
        doPost(req,res);
    }

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException{
        
        HttpSession session = req.getSession(true);
        session.invalidate();

        res.sendRedirect("inicio.html");
    }    
}