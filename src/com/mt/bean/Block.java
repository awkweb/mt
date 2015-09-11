package com.mt.bean;

import java.util.ArrayList;
import java.util.HashMap;

public class Block {
	
	private int block_id;
	private int block_type_id;
	private int side_id;
	private String symbol;
	private String status;
	private int open_quantity;
	private int total_quantity;
	private int exec_quantity;
	private double limit_price;
	private double stop_price;
	private ArrayList<Order> blockOrders;
	private HashMap<Integer, ArrayList<Order>> blockOrderMap; // ?
	
	public Block(){
		// empty constructor
	}

	public Block(int block_id) {
		super();
		this.block_id = block_id;
	}

	public Block(int block_id, int block_type_id, int side_id, String symbol, 
			String status, int open_quantity, int total_quantity, int exec_quantity) {
		this.block_id = block_id;
		this.block_type_id = block_type_id;
		this.side_id = side_id;
		this.symbol = symbol;
		this.setStatus(status);
		this.open_quantity = open_quantity; 
		this.total_quantity = total_quantity;
		this.exec_quantity = exec_quantity;
	}

	public HashMap<Integer, ArrayList<Order>> getBlockOrderMap() {
		return blockOrderMap;
	}

	public void setBlockOrderMap(HashMap<Integer, ArrayList<Order>> blockOrderMap) {
		this.blockOrderMap = blockOrderMap;
	}

	public int getBlock_id() {
		return block_id;
	}

	public void setBlock_id(int block_id) {
		this.block_id = block_id;
	}

	public String getSymbol() {
		return symbol;
	}

	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}

	public int getOpen_quantity() {
		return open_quantity;
	}

	public void setOpen_quantity(int open_quantity) {
		this.open_quantity = open_quantity;
	}

	public int getTotal_quantity() {
		return total_quantity;
	}

	public void setTotal_quantity(int total_quantity) {
		this.total_quantity = total_quantity;
	}

	public int getExec_quantity() {
		return exec_quantity;
	}

	public void setExec_quantity(int exec_quantity) {
		this.exec_quantity = exec_quantity;
	}

	public double getLimit_price() {
		return limit_price;
	}

	public void setLimit_price(double limit_price) {
		this.limit_price = limit_price;
	}

	public double getStop_price() {
		return stop_price;
	}

	public void setStop_price(double stop_price) {
		this.stop_price = stop_price;
	}
	
	public ArrayList<Order> getBlockOrders() {
		return blockOrders;
	}

	public void setBlockOrders(ArrayList<Order> blockOrders) {
		this.blockOrders = blockOrders;
	}
	
	public int getSide_id() {
		return side_id;
	}

	public void setSide_id(int side_id) {
		this.side_id = side_id;
	}
	
	public int getBlock_type_id() {
		return block_type_id;
	}

	public void setBlock_type_id(int block_type_id) {
		this.block_type_id = block_type_id;
	}

	
	/*// Cato
	public void addOrderToBlock(Order order) {
		// need some way to keep track of which orders belong to
		// a block!!!
		if (this.symbol.equals(order.getSymbol()) &&
				this.side_id == order.getSide_id()) {
			this.blockOrders.add(order);
			this.updateBlockOrderHashMap(order);
		}
		else {
			System.out.println("Error! Cannot add order to block! + "+ " Side and Symbol must match");
		}

	}*/
	
	// Cato - need help
	public void updateBlockOrderHashMap(Order order) {
		order.setBlock_order_id(this.block_id);
	}
	
	public double getTotalPrice() {
		double avgPrice = 0;
		for (Order i : this.blockOrders) {
			avgPrice += i.getPrice();
		}
		if (!this.blockOrders.isEmpty()) 
			return avgPrice/=this.blockOrders.size();
		else
			return 0;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	
	
}
