package Servlet;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Server extends HttpServlet{
	
	@Override
	public void init() {
		
	}
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		String parola = (String) req.getParameter("parola");
		req.setAttribute("parola", parola);
		System.out.println(parola);
		System.out.println("ciakkoo");
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");	
		rd.forward(req, resp);
		return;
	}

}
