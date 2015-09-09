<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="com.mt.bean.PortfolioManager"%>
<%@page import="com.mt.bean.Portfolio"%>

<%! String pageTitle = "Orders";%>

<%! PortfolioManager pm; %> 
<% pm = ((PortfolioManager)session.getAttribute("pm")); %> 

<!DOCTYPE html>
<html>
<head>
	<%@include file="includes/head.jsp"%>
</head>
<body>
	<%@include file="includes/navbar.jsp"%>
	
	<div class="container">
		<%@include file="includes/pageHeader.jsp"%>
		
		<%@include file="includes/toolbar.jsp"%>
		
		<%@include file="pm/formModal.jsp"%>
		
		<br>
		
		<%-- <%@include file="pm/orders.jsp"%> --%>
	</div>
</body>
</html>
