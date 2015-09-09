package com.mt.bean;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

public class Position {
	
	private String symbol;
	private int quantity;
	private double avgPrice;
	
	public Position(String symbol, int quantity, double avgPrice) {
		this.symbol = symbol;
		this.quantity = quantity;
		this.avgPrice = avgPrice;		
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
	
	public double getPercentage(int totalPortfolioQuantity){
		return ((double)this.quantity / (double)totalPortfolioQuantity) * 100.00;
	}
	
}
