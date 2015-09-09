package com.mt.bean;

import java.sql.DriverManager;
import java.sql.SQLException;

import java.sql.Connection;

public class DBConnector {


	public static Connection getConnection(String driver, String url, String user, String password) throws SQLException{
		try{
			Class.forName(driver);
		}
		catch(ClassNotFoundException e){
			e.printStackTrace();
		}
		return DriverManager.getConnection(url, user, password);
	}

	public void closeConnection(){

	}

}
