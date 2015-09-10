package com.mt.bean;

import java.util.ArrayList;

public class TraderManager extends User {
	
	private ArrayList<Integer> blockIds;
	private ArrayList<Block> blockList; 

	public TraderManager(int id, String username, String fname, String lname,
			String role, ArrayList<Integer> blockIds, ArrayList<Block> blockList) {
		super(id, username, fname, lname, role);
		this.blockIds = blockIds;
		this.blockList = blockList;
	}

	public ArrayList<Integer> getBlockIds() {
		return blockIds;
	}

	public void setBlockIds(ArrayList<Integer> blockIds) {
		this.blockIds = blockIds;
	}

	public ArrayList<Block> getBlockList() {
		return blockList;
	}

	public void setBlockList(ArrayList<Block> blockList) {
		this.blockList = blockList;
	}
	
}
