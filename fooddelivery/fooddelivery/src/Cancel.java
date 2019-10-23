

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Cancel
 */
@WebServlet("/Cancel")
public class Cancel extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter pw=res.getWriter();
		res.setContentType("text/html");
		String a=req.getParameter("order");
		System.out.println(a);
		
		RequestDispatcher rd=req.getRequestDispatcher("/Delivery.jsp");

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn=DriverManager.getConnection
					("jdbc:oracle:thin:@localhost:1521:xe","system","123456789");
		
		
				PreparedStatement st= conn.prepareStatement("delete from order1 where orderno=?");
				st.setString(1, a);
				
				st.execute();
				
				res.sendRedirect("Cancel.jsp");
				rd.forward(req, res);
				
				pw.close();
				
				
		}
			
			catch(Exception ae){
				ae.printStackTrace();
				
			}
	}

}
