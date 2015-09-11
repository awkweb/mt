package com.mt.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map.Entry;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mt.bean.Order;
import com.mt.bean.Portfolio;
import com.mt.bean.PortfolioManager;
import com.mt.bean.Position;
import com.mt.bean.TraderManager;
import com.mt.manager.QueryManager;

/**
 * Servlet implementation class ExportToExcelServlet
 */
@WebServlet("/ExportToExcelServlet")
public class ExportToExcelServlet extends DBConnectorServlet {
	private static final long serialVersionUID = 1L;
	private Connection connection;
	private QueryManager qm;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExportToExcelServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		connection = getConnection();
		qm = new QueryManager(connection);
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		
		qm = new QueryManager(connection);
		if (request.getSession().getAttribute("trader") != null) {
			TraderManager trader = (TraderManager)(request.getSession().getAttribute("trader"));
			System.out.println(trader.getId());
			System.out.println(trader.getOrders());
			qm.exportToExcel(trader.getId(), trader.getOrders());
		}
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/traderOrders.jsp");
        rd.forward(request, response);
				
	}

}
