<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="com.mt.bean.Portfolio"%>    
<%@page import="com.mt.bean.Order"%>

<table class="table table-bordered table-hover rowlink" data-link="row">
	<tr>
		<th>Symbol</th>
		<th>Quantity</th>
		<th>Average Price</th>
		<th>Value</th>
		<th>Percentage</th>
	</tr>
	
	<% for (Order pos : positions) { %>
	<tr>
		<td><%= pos.getSymbol() %></td>
		<td><%= pos.getQuantity() %></td>
		<td>$<%= (Math.round(pos.getPrice() * 100.0) / 100.0) %></td>
		<td>$<%= (Math.round(pos.getQuantity() * pos.getPrice() * 100.0) / 100.0) %></td>
		<td><%= (Math.round(pos.getPercentage(portfolio.getTotalQuantity()) * 100.0) / 100.0) %>%</td>
	</tr>
	<% } %>
</table>
