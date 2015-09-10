package com.mt.bean;

import java.util.ArrayList;

public class TraderManager extends User {
	
	private ArrayList<Integer> blockIds;
	private ArrayList<Block> blocks;
	private ArrayList<Order> orders; 

	public TraderManager(int id, String username, String fname, String lname,
			String role) {
		super(id, username, fname, lname, role);
	}

	public ArrayList<Integer> getBlockIds() {
		return blockIds;
	}

	public void setBlockIds(ArrayList<Integer> blockIds) {
		this.blockIds = blockIds;
	}

	public ArrayList<Block> getBlocks() {
		return blocks;
	}

	public void setBlocks(ArrayList<Block> blocks) {
		this.blocks = blocks;
	}

	public ArrayList<Order> getOrders() {
		return orders;
	}

	public void setOrders(ArrayList<Order> orders) {
		this.orders = orders;
	}
	
}
