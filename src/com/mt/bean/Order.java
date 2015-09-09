package com.mt.bean;

public class Order {
	
	private int id;
	private String symbol;
	private int quantity;
	private String side;
	private String type;
	private double price;
	private String trader;
	private String notes;
	
	public Order(int id, String symbol, int quantity, String side, String type, double price, String trader,
			String notes) {
		super();
		this.id = id;
		this.symbol = symbol;
		this.quantity = quantity;
		this.side = side;
		this.type = type;
		this.price = price;
		this.trader = trader;
		this.notes = notes;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public String getSide() {
		return side;
	}

	public void setSide(String side) {
		this.side = side;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getTrader() {
		return trader;
	}

	public void setTrader(String trader) {
		this.trader = trader;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

}
