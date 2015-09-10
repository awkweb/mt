package com.mt.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mt.bean.DBConnector;
import com.mt.manager.QueryManager;

/**
 * Servlet implementation class TraderModifyServlet
 */
@WebServlet("/traderRemoveFromBlockServlet")
public class TraderRemoveFromBlockServlet extends  DBConnectorServlet {
	private static final long serialVersionUID = 1L;
	 private Connection connection;
    public TraderRemoveFromBlockServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void destroy() {
		System.out.println("inside destroy");
		try {
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
    
    public void init(ServletConfig config) throws ServletException {
    	super.init(config);
		connection = getConnection();
		
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String block_id_string=request.getParameter("blockId");	
		int block_id=Integer.parseInt(block_id_string);
		
		String order_id_string=request.getParameter("orderId");
		int order_id=Integer.parseInt(order_id_string);
		
		String sql1 = "DELETE FROM Block WHERE blockId=? AND orderId=?";
		try{
			PreparedStatement ps1=connection.prepareStatement(sql1);
			ps1.setInt(1, block_id);
			ps1.setInt(2, order_id);
			ps1.executeQuery();
			
		}
		catch(SQLException e){
			e.printStackTrace();
		}
	
	}
}

