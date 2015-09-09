<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.mt.bean.PortfolioManager"%>
<%@page import="com.mt.bean.Portfolio"%>

<%! String pageTitle = "Login"; %>

<%! PortfolioManager pm; %> 
<% pm = ((PortfolioManager)request.getAttribute("pm")); %>   

<!DOCTYPE html>
<html>
<head>
	<%@include file="includes/head.jsp" %>
</head>
<body>
	<% for (Portfolio portfolio: pm.getPortfolios()) { %>
		<p>Portfolio <%= portfolio.getName() %></p>
	<% } %>
	
	<%@include file="orderForm.jsp" %>
</body>
</html>
