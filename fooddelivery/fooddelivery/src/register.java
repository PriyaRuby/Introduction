import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


@WebServlet("/register")
public class register extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try {
			
			HttpSession session = req.getSession(true);
			res.setContentType("text/html");
			PrintWriter pw=res.getWriter();
			//pw.println("This is eg of include");
			res.setContentType("text/html");
			//PrintWriter pw=res.getWriter();
			String s=req.getParameter("usrnm");
			String t=req.getParameter("num");
			
			session.setAttribute("name", s);
			session.setAttribute("numb", t);
			res.sendRedirect("restaurants.jsp");
			
			
			
			pw.close();
		}
		catch(Exception ae) {
		
	}


	}

}
