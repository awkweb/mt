package com.mt.bean;

import java.util.ArrayList;
import java.util.HashMap;

public class Position {
	
	private String symbol;
	private int quantity;
	private double avgPrice;
	private HashMap<String, ArrayList<Order>> ordersByStatus;
	
	public Position(String symbol, int quantity, double avgPrice, HashMap<String, ArrayList<Order>> ordersByStatus) {
		this.symbol = symbol;
		this.quantity = quantity;
		this.avgPrice = avgPrice;
		this.ordersByStatus = ordersByStatus;
	}
	
	public String getSymbol() {
		return symbol;
	}
	
	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}
	
	public int getQuantity() {
		return quantity;
	}
	
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	public double getAvgPrice() {
		return avgPrice;
	}
	
	public void setAvgPrice(double avgPrice) {
		this.avgPrice = avgPrice;
	}
	
	public HashMap<String, ArrayList<Order>> getOrders() {
		return ordersByStatus;
	}
	
	public void setOrders(HashMap<String, ArrayList<Order>> ordersByStatus) {
		this.ordersByStatus = ordersByStatus;
	}	
	
	public double getPercentage(int totalPortfolioQuantity){
		return ((double)this.quantity / (double)totalPortfolioQuantity) * 100.00;
	}
	
}
