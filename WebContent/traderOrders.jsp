<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="com.mt.bean.TraderManager"%>
<%@page import="com.mt.bean.Order"%>

<%!String pageTitle = "Orders";%>
<%!String toolbarButtonTitle = "Add to Block";%>
<%!String modalTitle = toolbarButtonTitle;%>

<%! TraderManager trader; %> 
<% trader = ((TraderManager)session.getAttribute("trader")); %>

<%! ArrayList<String> symbols; %>
<% symbols = new ArrayList<String>(); %>

<%! ArrayList<Order> orders; %>
<% orders = trader.getOrders(); %>
<%! TreeMap<String,Order> Tree; %>
<% Tree = new TreeMap<String,Order>(); %>

<%! int k = 0;%>
 	 
<!DOCTYPE html>
<html>
<head>
 	<%@ include file="includes/head.jsp"%> 
</head>
<body>
		<%@include file="../includes/traderNavbar.jsp"%>
		<div class="container">
		<%@include file="../includes/pageHeader.jsp"%>
		
		<%@include file="Trader/toolbar2.jsp"%>
		

		<br>
		<%@include file="Trader/OrderStatusTabs.jsp"%>
	</div> 
</body>
</html>