<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.TreeMap"%>
<%@ page import="java.util.NavigableMap"%>
<%@ page import="com.moneytree.beans.Order"%>

<div class="row">
	<div class="col-sm-12">
		<%! int firstCollapse = 0; %>
		<% for (NavigableMap.Entry<Integer, ArrayList<Order>> entry : positions.entrySet()) { %>
			<%! int name; %>
			<% name = entry.getKey(); %>
			<%! ArrayList<Order> orders; %>
			<% orders = entry.getValue(); %>
			<%@ include file="panel.jsp"%>
			<% firstCollapse++; %>
		<% } %>	
	</div>
</div>
