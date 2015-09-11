<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.util.ArrayList"%>

<%@page import="com.mt.bean.Order"%>

<table class="table table-bordered table-hover rowlink" data-link="row">
	<tr>
		<th>Order ID</th>
		<th>Symbol</th>
		<th>Side</th>
		<th>Quantity</th>
		<th>Price</th>
		<th>Trader</th>
		<!-- <th>Status</th> only display on all tab -->
		<th>Notes</th>
	</tr>
	
    <% for(Order o : ordersByStatus){
    	if(o != null && o.getStatus().equals("open")){
    		%>
    			<tr>
					<td><%= o.getId() %></td>
					<td><%= o.getSymbol() %></td>
					<td><%= o.getSide() %></td>
					<td><%= o.getQuantity() %></td>
					<td><%= o.getPrice() %></td>
					<td><%= o.getTrader() %></td>
					<td><a data-container="body" data-toggle="popover"
						data-placement="left" title="Notes"
						data-content="<%= o.getNotes() %>"> Display </a></td>
				</tr>
    		<%
    	}
    }%>

</table>
