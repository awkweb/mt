<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>

<%@page import="com.mt.bean.PortfolioManager"%>
<%@page import="com.mt.bean.Portfolio"%>
<%@page import="com.mt.bean.Position"%>
<%@page import="com.mt.bean.Order"%>
    
<%! int firstCollapse = 0; %>
<%! ArrayList<Position> positions; %>
<%! ArrayList<Order> orders; %>
		
<div class="row">
	<div class="col-sm-12">
		<ul class="nav nav-tabs" role="tablist">
			<li role="presentation" class="active"><a href="#open"
				aria-controls="open" role="tab" data-toggle="tab">Open</a></li>
			<li role="presentation"><a href="#sentForExecution"
				aria-controls="sentForExecution" role="tab" data-toggle="tab">Sent for Execution</a></li>
			<li role="presentation"><a href="#successful"
				aria-controls="successful" role="tab" data-toggle="tab">Successful</a></li>
			<li role="presentation"><a href="#failed"
				aria-controls="failed" role="tab" data-toggle="tab">Failed</a></li>
			<li role="presentation"><a href="#partiallyFilled"
				aria-controls="partiallyFilled" role="tab" data-toggle="tab">Partially Filled</a></li>
			<li role="presentation"><a href="#cancelled"
				aria-controls="cancelled" role="tab" data-toggle="tab">Cancelled</a></li>
		</ul>
	</div>
</div>

<div class="row">
	<div class="col-sm-12">
		<div class="tab-content">
			<br>
			<% for (Portfolio portfolio: pm.getPortfolios()) { %>
				<% positions = portfolio.getPositions(); %>
				<% for (Position pos : positions) { %>
					<%! HashMap<String, ArrayList<Order>> map; %>
					<% map = pos.getOrders(); %>
					<% orders = map.get("open"); %>		
					<div role="tabpanel" class="tab-pane fade in active" id="open">
						<%@ include file="orderPanel.jsp"%>
					</div>
					<% firstCollapse++; %>
				<% } %>
			<% } %>
		</div>
	</div>
</div>
