package com.mt.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/positionDisplayServlet")
public class PositionDisplayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PositionDisplayServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String destination = "/loginServlet";
        RequestDispatcher rd = getServletContext().getRequestDispatcher(destination);
        rd.forward(request, response);
		response.sendRedirect("pmPositions.jsp");
	}

}
