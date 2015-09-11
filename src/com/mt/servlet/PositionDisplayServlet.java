package com.mt.servlet;

import java.io.IOException;
import java.sql.Connection;
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

@WebServlet("/positionDisplayServlet")
public class PositionDisplayServlet extends DBConnectorServlet {
	private static final long serialVersionUID = 1L;
	private Connection connection;
	private QueryManager qm;
       
    public PositionDisplayServlet() {
        super();
    }
    
    public void init(ServletConfig config) throws ServletException {
		super.init(config);
		connection = getConnection();
		qm = new QueryManager(connection);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String destination = "/pmPositions.jsp";             
		HttpSession session = request.getSession();
		if(session.getAttribute("pm") == null){
			request.setAttribute("error", true);
			destination = "/login.jsp";
		}
		else{
			PortfolioManager pm = (PortfolioManager)session.getAttribute("pm");
			int userId = pm.getId();
			String username = pm.getUsername();
			String fname = pm.getFname();
			String lname = pm.getLname();
			String role = pm.getRole();
			ArrayList<Integer> portfolioIds = qm.getPortfolioIds(userId);
			ArrayList<Portfolio> portfolios = new ArrayList<Portfolio>();
			try {
				if(connection.isClosed()){
					connection = getConnection();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			for(int pId : portfolioIds){
				portfolios.add(qm.getPortfolio(pId));
			}				
			pm = new PortfolioManager(userId, username, fname, lname, role, portfolioIds, portfolios);
			session=request.getSession();  
	        session.setAttribute("pm",pm);
		}
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher(destination);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		this.doGet(request, response);
	}
	

}
