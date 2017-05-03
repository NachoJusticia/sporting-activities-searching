import activities.db.*;
import java.sql.*;
import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class viewProfile extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException{
        doPost(req,res);
    }

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException{
        
        HttpSession session = req.getSession(true);
        session.setAttribute("message","");
        String login = (String) session.getAttribute("login");
        ArrayList data = new ArrayList();
        try {
            DBInteraction db = new DBInteraction();
            data = db.getUserData(login);
        }catch(Exception e){

        }

        /*
        User personal data: login, password, name, surname, address, phone */
        Client c = (Client) data.get(0);
        String name = c.getname();
        String surname = c.getsurname();
        String address = c.getaddress();
        String phone = c.getphone();
        RequestDispatcher rd = req.getRequestDispatcher("viewProfile.jsp?name="+name+"&surname="+surname+"&address="+address+"&phone="+phone);
        rd.include(req, res);
	}
}
