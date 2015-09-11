<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="com.mt.bean.TraderManager"%>
<%@page import="com.mt.bean.Order"%>

<%!String pageTitle = "Orders";%>
<%!String toolbarButtonTitle = "Add to Block";%>
<%!String modalTitle = toolbarButtonTitle;%>

<%! TraderManager trader; %> 
<% trader = ((TraderManager)session.getAttribute("trader")); %>  

<!DOCTYPE html>
<html>
<head>
 <%@ include file="includes/head.jsp"%> 
</head>
<body>
	<%@include file="../includes/traderNavbar.jsp"%>
	<div class="container">
		<%@include file="../includes/pageHeader.jsp"%>
		
		<jsp:include page="Trader/toolbar2.jsp">
			<jsp:param name="toolbarButtonTitle" value="<%=toolbarButtonTitle%>" />
		</jsp:include>
		
<%-- 		<%= trader.getBlocks() %>
		<%= trader.getBlockIds() %>
		<%= trader.getOrders() %> --%>

		<br>
		<%@include file="Trader/OrderStatusTabs.jsp"%>
	</div> 
</body>
</html>