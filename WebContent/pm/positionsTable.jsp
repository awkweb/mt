<%@ page import="com.moneytree.beans.Order"%>

<table class="table table-bordered table-hover rowlink" data-link="row">
	<tr>
		<th>Symbol</th>
		<th>Quantity</th>
		<th>Average Price</th>
		<th>Value</th>
		<th>Percentage</th>
	</tr>
	<% for (Order o : orders) { %>
	<tr>
		<td><%= o.getSecurity().getSymbol() %></td>
		<td><%= o.getTotalQuantity() %></td>
		<td><%= o.getLimitPrice() %></td>
		<td><%= o.getTotalQuantity() * o.getLimitPrice() %></td>
		<td>48.4%</td>
	</tr>
	<% } %>
</table>
