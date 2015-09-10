package com.mt.bean;

public class Order {
	
	private int id;
	private int side_id;
	private int order_type_id;
	private String symbol;
	private int quantity;
	private String side;
	private String type;
	private double price;
	private int trader;
	private String notes;
	private int block_order_id;
	
	public Order(int id, int side_id, int order_type_id, String symbol, 
			int quantity, String side, String type, 
			double price, int trader,
			String notes, int block_order_id) {
		super();
		this.id = id;
		this.side_id = side_id;
		this.order_type_id = order_type_id;
		this.symbol = symbol;
		this.quantity = quantity;
		this.side = side;
		this.type = type;
		this.price = price;
		this.trader = trader;
		this.notes = notes;
		this.block_order_id = block_order_id;
	}

	public int getBlock_order_id() {
		return block_order_id;
	}

	public void setBlock_order_id(int block_order_id) {
		this.block_order_id = block_order_id;
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

	public int getTrader() {
		return trader;
	}

	public void setTrader(int trader) {
		this.trader = trader;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public int getSide_id() {
		return side_id;
	}

	public void setSide_id(int side_id) {
		this.side_id = side_id;
	}
	
	public int getOrder_type_id() {
		return order_type_id;
	}

	public void setOrder_type_id(int order_type_id) {
		this.order_type_id = order_type_id;
	}


}
