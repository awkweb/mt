package com.mt.bean;

import java.util.ArrayList;

public class Portfolio {
	
	private int id;
	private String name;
	private ArrayList<Position> positions;
	private int totalQuantity;
	private ArrayList<Order> openOrders;
	
	public ArrayList<Order> getOpenOrders() {
		return openOrders;
	}

	public void setOpenOrders(ArrayList<Order> openOrders) {
		this.openOrders = openOrders;
	}

	public Portfolio(int id, String name, ArrayList<Position> positions) {
		super();
		this.id = id;
		this.name = name;
		this.positions = positions;
	}
	
	public Portfolio(){
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public ArrayList<Position> getPositions() {
		return positions;
	}

	public void setPositions(ArrayList<Position> positions) {
		this.positions = positions;
	}
	
	public int getTotalQuantity(){
		int sum = 0;
		for(Position pos:positions){
			sum += pos.getQuantity();
		}
		return sum;
	}
	
	public double getTotalMarketValue() {
		int sum = 0;
		for(Position pos:positions){
			sum += (pos.getQuantity() * pos.getAvgPrice());
		}
		return sum;
	}
	
}
