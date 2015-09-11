<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.util.ArrayList"%>

<%@page import="com.mt.bean.PortfolioManager"%>
<%@page import="com.mt.bean.Portfolio"%>
<%@page import="com.mt.bean.Position"%>
<%@page import="com.mt.bean.Order"%>
    
<%! int firstCollapse = 0; %>
<%! ArrayList<Order> positions; %>

<div class="row">
	<div class="col-sm-12">
		
		<% for (Portfolio portfolio : pm.getPortfolios()) { %>
			<% positions = portfolio.getOpenOrders(); %>
			<%@ include file="panel.jsp"%>
			<% firstCollapse++; %>
		<% } %>
	</div>
</div>
