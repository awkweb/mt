package com.mt.bean;

import java.util.ArrayList;
import java.util.HashMap;

public class Block {
	
	private int block_id;
	private String symbol;
	private String status;
	private int open_quantity;
	private int total_quantity;
	private int exec_quantity;
	private double limit_price;
	private double stop_price;
	private ArrayList<Order> blockOrders;
	private HashMap<Integer, ArrayList<Order>> blockOrderMap;

	public Block(int block_id, String symbol, String status, 
			int open_quantity, int total_quantity, int exec_quantity, 
				double limit_price , double stop_price, 
				ArrayList<Order> blockOrders, 
				HashMap<Integer, ArrayList<Order>> blockOrderMap) {
		super();
		this.block_id = block_id;
		this.symbol = symbol;
		this.status = status;
		this.open_quantity = open_quantity;
		this.exec_quantity = exec_quantity;
		this.total_quantity = total_quantity;
		this.limit_price = limit_price;
		this.stop_price = stop_price;
		this.blockOrders = blockOrders;
		this.blockOrderMap = blockOrderMap;
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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
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
	
	// Jai and Cato
	public void addOrderToBlock() {
		// need some way to keep track of which orders belong to
		// a block
	}
	
	// Cato and Jai
	public void updateBlockOrderHashMap() {
		
	}
}
