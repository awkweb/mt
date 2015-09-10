package com.mt.manager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import com.mt.bean.Order;
import com.mt.bean.Portfolio;
import com.mt.bean.Position;

public class QueryManager {
	
	private Connection connection;
	
	public QueryManager(Connection connection){
		this.connection = connection;
	}
	
	public void setConnection(Connection connection){
		this.connection = connection;
	}
	
	public ArrayList<Order> getPositionOrders(int portfolioId, String symbol, String status){		
		String sql = "SELECT * FROM orders WHERE port_id=? AND symbol =? AND status=?";
		ArrayList<Order> orders = new ArrayList<Order>();
		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setInt(1, portfolioId);
			ps.setString(2, symbol);
			ps.setString(3, status);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				if(rs.getString("symbol").equals(symbol)){
					int id = rs.getInt("id");
					int quantity = rs.getInt("quantity");
					String side = rs.getString("side");
					String type = rs.getString("type");
					double price = rs.getDouble("price");
					String trader = rs.getString("trader");
					String notes = rs.getString("notes");					
					String portfolio_manager=rs.getString("portfolio_manager");
					Order order = new Order(id, symbol, quantity, side, type, price, trader, notes,portfolio_manager,status);
					System.out.println(order);
					orders.add(order);
				}				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return orders;		
	}
	
	public ArrayList<Order> getTraderOrders(String traderName){		
		String sql = 
				 "SELECT u1.username,orders.trader `Trader ID`,u1.fname `Trader First Name`,u2.lname `Trader Last name`,orders.port_id `Portfolio Manager ID`,"
				 + "u2.fname,u2.lname,orders.symbol,orders.block_order_id,orders.quantity,orders.side,orders.type,"
				 + "orders.price,orders.notes,orders.status "
				 + "from orders INNER JOIN users AS u1 ON u1.userid = orders.trader "
				 + "INNER JOIN users AS u2 ON u2.userid=orders.port_id"
				 + "WHERE u1.username = ?";
		ArrayList<Order> orders = new ArrayList<Order>();
		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, traderName);
	
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				if(rs.getString("trader").equals(traderName)){
					int id = rs.getInt("id");
					
					
					String symbol=rs.getString("symbol");
					int quantity = rs.getInt("quantity");
					String side = rs.getString("side");
					String type = rs.getString("type");
					double price = rs.getDouble("price");
					String status = rs.getString("status");
					String notes = rs.getString("notes");
					
					String portfolio_manager_first_name =rs.getString("fname");
					String portfolio_manager_last_name =rs.getString("lname");
					String portfolio_manager = portfolio_manager_first_name.concat(" ");					
					portfolio_manager = portfolio_manager_first_name.concat(portfolio_manager_last_name);
					Order order = new Order(id, symbol, quantity, side, type, price, traderName, notes,portfolio_manager,status);
					System.out.println(order);
					orders.add(order);
				}				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return orders;		
	}
	
	public HashMap<String, ArrayList<Order>> getOrderMap(int portfolioId, String symbol){
		HashMap<String, ArrayList<Order>> map = new HashMap<String, ArrayList<Order>>();
		String[] statuses = {"open", "sent for execution", "successful", "failed", "partially filled", "cancelled"};
		for(int i=0; i<statuses.length;i++){
			map.put(statuses[i], getPositionOrders(portfolioId, symbol, statuses[i]));
		}
		return map;
	}
	
	public ArrayList<Position> getPortfolioPositions(int portfolioId){
		String sql = "SELECT symbol, SUM(quantity) as quantity, AVG(price) as price "
				+ "FROM orders WHERE port_id=? GROUP BY symbol";
		ArrayList<Position> positions = new ArrayList<Position>();
		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setInt(1, portfolioId);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				String symbol = rs.getString("symbol");
				int quantity = rs.getInt("quantity");
				double avgPrice = rs.getDouble("price");	
				Position position = new Position(symbol, quantity, avgPrice, getOrderMap(portfolioId, symbol));
				positions.add(position);
			}				
		} catch (Exception e) {
			e.printStackTrace();
		}
		return positions;	
	}
	
	public ArrayList<Integer> getPortfolioIds(int pmId){
		String sql = "SELECT id FROM portfolio WHERE pm_id = ?";
		ArrayList<Integer> portfolioIds = new ArrayList<Integer>();
		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setInt(1, pmId);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				portfolioIds.add(rs.getInt("id"));
			}				
		} catch (Exception e) {
			e.printStackTrace();
		}
		return portfolioIds;
	}
	
	public Portfolio getPortfolio(int portfolioId){
			
		String sql = "SELECT name FROM portfolio WHERE id = ?";
		Portfolio portfolio = new Portfolio();
		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setInt(1, portfolioId);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				ArrayList<Position> positions = getPortfolioPositions(portfolioId);
				portfolio.setPositions(positions);
				portfolio.setName(rs.getString("name"));
			}				
		} catch (Exception e) {
			e.printStackTrace();
		}
		return portfolio;
	}
	
	public int getNewOrderId(){
		String sql = "SELECT MAX(id) as id FROM orders";
		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				int lastId = rs.getInt("id");
				System.out.println("last id: " + lastId);
				return ++lastId;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public void createOrder(int portfolioId, Order order){
		String sql = "INSERT INTO `mtdb`.`orders` (`id`, `port_id`, `symbol`, `quantity`, `side`, `type`, `price`, `trader`, `notes`,`status`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?,?)";
		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setInt(1, getNewOrderId());
			ps.setInt(2, portfolioId);
			ps.setString(3, order.getSymbol());
			ps.setInt(4, order.getQuantity());
			ps.setString(5, order.getSide());
			ps.setString(6, order.getType());
			ps.setDouble(7, order.getPrice());
			ps.setString(8, order.getTrader());
			ps.setString(9, order.getNotes());
			ps.setString(10, "open");
			ps.execute();
				
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int getPortfolioId(String pName, int pmId){
		System.out.println("pname: " + pName);
		System.out.println("pmId: " + pmId);
		String sql = "SELECT id FROM portfolio WHERE name = ? AND pm_id = ?";
		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, pName);
			ps.setInt(2, pmId);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				return rs.getInt("id");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public ArrayList<Integer> getBlockIDs(int pmID) {
		return null;
		
	}
	
	// Cato and Jai
	public void createBlock() {
		// 
	}
	
	
	
	

}
