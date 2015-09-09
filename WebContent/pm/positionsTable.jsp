<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="com.mt.bean.Position"%>

<table class="table table-bordered table-hover rowlink" data-link="row">
	<tr>
		<th>Symbol</th>
		<th>Quantity</th>
		<th>Average Price</th>
		<th>Value</th>
		<th>Percentage</th>
	</tr>
	<% for (Position pos : positions) { %>
	<tr>
		<td><%= pos.getSymbol() %></td>
		<td><%= pos.getQuantity() %></td>
		<td><%= pos.getAvgPrice() %></td>
		<td><%= pos.getQuantity() * pos.getAvgPrice() %></td>
		<td>48.4%</td>
	</tr>
	<% } %>
</table>
