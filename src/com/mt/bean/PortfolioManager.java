package com.mt.bean;

import java.util.ArrayList;

public class PortfolioManager extends User {
	
	private ArrayList<Integer> portfolioIds;
	private ArrayList<Portfolio> portfolios;

	public PortfolioManager(int id, String username, String fname, String lname, String role,
			ArrayList<Integer> portfolioIds, ArrayList<Portfolio> portfolios) {
		super(id, username, fname, lname, role);
		this.portfolioIds = portfolioIds;
		this.portfolios = portfolios;
	}

	public ArrayList<Integer> getPortfolioIds() {
		return portfolioIds;
	}

	public void setPortfolioIds(ArrayList<Integer> portfolioIds) {
		this.portfolioIds = portfolioIds;
	}

	public ArrayList<Portfolio> getPortfolios() {
		return portfolios;
	}

	public void setPortfolios(ArrayList<Portfolio> portfolios) {
		this.portfolios = portfolios;
	}

}
