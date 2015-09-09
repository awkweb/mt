package com.mt.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mt.bean.Order;
import com.mt.bean.PortfolioManager;
import com.mt.manager.QueryManager;

/**
 * Servlet implementation class NewOrderServlet
 */
@WebServlet("/newOrder")
public class NewOrderServlet extends DBConnectorServlet {
	private static final long serialVersionUID = 1L;
	private Connection connection;
	private QueryManager qm;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewOrderServlet() {
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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String symbol = request.getParameter("symbol");		
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		String side = request.getParameter("side");
		String type = request.getParameter("type");
		double price = Double.parseDouble(request.getParameter("price"));
		String pName = request.getParameter("portfolio");
		int pmId = Integer.parseInt(request.getParameter("pmId"));
		String trader = request.getParameter("trader");
		String notes = request.getParameter("notes");
		
		try{
			if(connection.isClosed()){
				connection = getConnection();
			}
			int id = qm.getNewOrderId();
			int portfolioId = qm.getPortfolioId(pName, pmId);
			System.out.println("portfolioId: " + portfolioId);
			Order order = new Order(id, symbol, quantity, side, type, price, trader, notes);
			qm.createOrder(portfolioId, order);
		}catch (SQLException e) {
			e.printStackTrace();
		} finally{
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

}
