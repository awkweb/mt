package com.mt.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mt.bean.Block;
import com.mt.bean.Order;
import com.mt.bean.Portfolio;
import com.mt.bean.PortfolioManager;
import com.mt.bean.TraderManager;
import com.mt.manager.QueryManager;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends DBConnectorServlet {
	private static final long serialVersionUID = 1L;
	private Connection connection;
	private QueryManager qm;

    /**
     * Default constructor. 
     */
    public LoginServlet() {
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
		String username = request.getParameter("username");		
		String password = request.getParameter("password");
		String sql = "SELECT * FROM users WHERE username=? AND password=?";		
		boolean authenitcatedUser = false;
		boolean userPm = false;
	
		try {
			if(connection.isClosed()){
				connection = getConnection();
			}
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				int userId = rs.getInt("userid");
				String fname = rs.getString("fname");
				String lname = rs.getString("lname");
				String role = rs.getString("role");
				
				if(role.equals("pm")){
					ArrayList<Integer> portfolioIds = qm.getPortfolioIds(userId);
					ArrayList<Portfolio> portfolios = new ArrayList<Portfolio>();
					for(int pId : portfolioIds){
						portfolios.add(qm.getPortfolio(pId));
					}				
					PortfolioManager pm = new PortfolioManager(userId, username, fname, lname, role, portfolioIds, portfolios);
					HttpSession session=request.getSession();  
			        session.setAttribute("pm",pm);
			        userPm = true;
				}else{
					TraderManager trader = new TraderManager(userId, username, fname, lname, role);
					ArrayList<Integer> blockIds = qm.getBlockIDs(userId);
					trader.setBlockIds(blockIds);
					ArrayList<Block> blocks = qm.getBlocks(userId);
					trader.setBlocks(blocks);
					ArrayList<Order> orders = qm.getTraderOrdersForId(userId);
					trader.setOrders(orders);
					HttpSession session=request.getSession();  
			        session.setAttribute("trader",trader);
				}
		        authenitcatedUser = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		/*finally{
			try {
				connection.close();
				System.out.println("Connection closed");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}*/
		
		if (authenitcatedUser) {
			if(userPm){				
				RequestDispatcher rd = request.getRequestDispatcher("pmPositions.jsp");
				rd.forward(request, response);
			}else{
				RequestDispatcher rd = request.getRequestDispatcher("traderOrders.jsp");
				rd.forward(request, response);
			}
		} else {
			request.setAttribute("error", true);
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}
		
	}

}
