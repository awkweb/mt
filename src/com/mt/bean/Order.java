package com.mt.bean;

public class Order {
	
	private int id;
	private String symbol;
	private int quantity;
	private String side;
	private String type;
	private double price;
	private int trader;
	private String notes;
	private int block_order_id;
	private String pmName;
	private String status;
	private String timeStamp;
	
	public Order(int id, String symbol, 
			int quantity, String side, String type, 
			double price, int trader,
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
		setTimeStamp("12/12/12");
		setPmName("Sarah O'Reilly");
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

	public String getPmName() {
		return pmName;
	}

	public void setPmName(String pmName) {
		this.pmName = pmName;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getTimeStamp() {
		return timeStamp;
	}

	public void setTimeStamp(String timeStamp) {
		this.timeStamp = timeStamp;
	}


}
