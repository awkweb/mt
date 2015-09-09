package com.mt.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mt.bean.Portfolio;
import com.mt.bean.PortfolioManager;
import com.mt.manager.QueryManager;

/**
 * Servlet implementation class PMHomeServlet
 */
@WebServlet("/PMHomeServlet")
public class PMHomeServlet extends DBConnectorServlet {
	private static final long serialVersionUID = 1L;
	private Connection connection;
	private QueryManager qm;
       
	public void init(ServletConfig config) throws ServletException {
    	super.init(config);
		connection = getConnection();
		qm = new QueryManager(connection);
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			if(connection.isClosed()){
				connection = getConnection();
			}
			String sql = "SELECT * FROM users WHERE username=?";
			PreparedStatement ps = connection.prepareStatement(sql);
			HttpSession session=request.getSession();
			String username = (String) session.getAttribute("username");
			ps.setString(1, username);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				int pmId = rs.getInt("userid");
				String fname = rs.getString("fname");
				String lname = rs.getString("lname");
				String role = rs.getString("role");
				if(connection.isClosed()){
					connection = getConnection();
				}				
				ArrayList<Integer> portfolioIds = qm.getPortfolioIds(pmId);
				ArrayList<Portfolio> portfolios = new ArrayList<Portfolio>();
				for(int pId : portfolioIds){
					portfolios.add(qm.getPortfolio(pId));
				}				
				PortfolioManager pm = new PortfolioManager(pmId, username, fname, lname, role, portfolioIds, portfolios);
				request.setAttribute("pm", pm); 
		        session.setAttribute("pm",pm);
		        System.out.println("session pm: " + session.getAttribute("pm").toString());
		        RequestDispatcher rd = request.getRequestDispatcher("pmPositions.jsp");
				rd.forward(request, response);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally{
			try {
				connection.close();
				System.out.println("Connection closed");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
