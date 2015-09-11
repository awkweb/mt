package com.mt.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class OrderDisplayServlet
 */
@WebServlet("/orderDisplayServlet")
public class OrderDisplayServlet extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;
       
    public OrderDisplayServlet() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String destination = "/pmOrders.jsp";             
		HttpSession session = request.getSession();
		if(session.getAttribute("pm") == null){
			request.setAttribute("error", true);
			destination = "/login.jsp";
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(destination);
		rd.forward(request, response);
	}

}
