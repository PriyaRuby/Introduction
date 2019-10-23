

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 * Servlet implementation class Data
 */
@WebServlet("/Data")
public class Data extends HttpServlet {

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter pw=res.getWriter();
		res.setContentType("text/html");
		HttpSession session= req.getSession(true);
		String a= (String) session.getAttribute("name");
		String b=(String) session.getAttribute("numb");
		int c=(int) session.getAttribute("total");
		String d=req.getParameter("addr");
		String e=req.getParameter("myField");
		long f=Long.parseLong(b);
		
		RequestDispatcher rd=req.getRequestDispatcher("/cart.jsp");

		try {
				
				Configuration cfg=new Configuration();
				SessionFactory sf=cfg.configure().buildSessionFactory();
				Session ss=sf.openSession();
				Pojo Pojo=new Pojo();
				Pojo.setName(a);
				Pojo.setPhone(f);
				Pojo.setAddress(d);
				Pojo.setBill(c);
				Pojo.setOrderno(e);
				
				Transaction tx=ss.beginTransaction();
				ss.save(Pojo);
				tx.commit();
				ss.close();
				res.sendRedirect("Delivery.jsp");
				rd.forward(req, res);
				
		}
			
			catch(Exception ae){
				ae.printStackTrace();
				
			}

	}

}
