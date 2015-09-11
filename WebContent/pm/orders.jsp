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
<%! ArrayList<Order> ordersByStatus; %>
		
<div class="row">
	<div class="col-sm-12">
		<ul class="nav nav-tabs" role="tablist">
			<li role="presentation" class="active"><a href="#open"
				aria-controls="open" role="tab" data-toggle="tab">Open</a></li>
			<li role="presentation"><a href="#sentForExecution"
				aria-controls="sentForExecution" role="tab" data-toggle="tab">Sent for Execution</a></li>
			<li role="presentation"><a href="#successful"
				aria-controls="successful" role="tab" data-toggle="tab">Successful</a></li>
			<li role="presentation"><a href="#expired"
				aria-controls="expired" role="tab" data-toggle="tab">Expired</a></li>
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
			
			<div role="tabpanel" class="tab-pane active" id="open">
			<%
				for(Portfolio portfolio : pm.getPortfolios()){
					positions = portfolio.getPositions();
					
					%> <div class="panel-group" id="accordion" role="tablist"
							aria-multiselectable="true">
							

							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="heading<%=portfolio.getName()%>">
									<h4 class="panel-title">
										<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion"
											href="#collapse<%=portfolio.getName()%>open" aria-expanded="true"
											aria-controls="collapseOne"><%= portfolio.getName() %></a>
									</h4>
								</div>
								
								<div id="collapse<%=portfolio.getName()%>open" class="panel-collapse collapse in"
									role="tabpanel" aria-labelledby="heading<%=portfolio.getName()%>">
					
								<table class="table table-bordered table-hover rowlink" data-link="row">
									<tr>
										<th>Order ID</th>
										<th>Symbol</th>
										<th>Side</th>
										<th>Type</th>
										<th>Quantity</th>
										<th>Price</th>
										<th>Trader</th>
										<th>Notes</th>
									</tr> <%
					
					for(Position position : positions){
						HashMap<String, ArrayList<Order>> individualPositionOrdersMap = position.getOrders();
						ArrayList<Order> orderList = individualPositionOrdersMap.get("open");
						%>
							
						    <% for(Order o : orderList){
						    		%>
						    			<tr>
											<td><%= o.getId() %></td>
											<td><%= o.getSymbol() %></td>
											<td><%= o.getSide() %></td>
											<td><%= o.getType() %></td>
											<td><%= o.getQuantity() %></td>
											<td><%= o.getPrice() %></td>
											<td><%= o.getTrader() %></td>
											<td><% if (o.getNotes().length() != 0) { %><a data-container="body" data-toggle="popover"
												data-placement="left" title="Notes"
												data-content="<%= o.getNotes() %>"> Display </a><% } else {%>None<% } %></td>
										</tr>
						    		<%
						    }
					} %>
									</table> 
									</div>
					</div>
					
				</div>
					<%
				}
			
			
			%>
			</div>
			
			<div role="tabpanel" class="tab-pane" id="sentForExecution">
			<%
				for(Portfolio portfolio : pm.getPortfolios()){
					positions = portfolio.getPositions();
					
					%> <div class="panel-group" id="accordion" role="tablist"
							aria-multiselectable="true">
							

							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="heading<%=portfolio.getName()%>">
									<h4 class="panel-title">
										<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion"
											href="#collapse<%=portfolio.getName()%>sentForExecution" aria-expanded="true"
											aria-controls="collapseOne"><%= portfolio.getName() %></a>
									</h4>
								</div>
								
								<div id="collapse<%=portfolio.getName()%>sentForExecution" class="panel-collapse collapse in"
									role="tabpanel" aria-labelledby="heading<%=portfolio.getName()%>">
					
								<table class="table table-bordered table-hover rowlink" data-link="row">
									<tr>
										<th>Order ID</th>
										<th>Symbol</th>
										<th>Side</th>
										<th>Type</th>
										<th>Quantity</th>
										<th>Price</th>
										<th>Trader</th>
										<th>Notes</th>
									</tr> <%
					
					for(Position position : positions){
						HashMap<String, ArrayList<Order>> individualPositionOrdersMap = position.getOrders();
						ArrayList<Order> orderList = individualPositionOrdersMap.get("sent for execution");
						%>
							
						    <% for(Order o : orderList){
						    		%>
						    			<tr>
											<td><%= o.getId() %></td>
											<td><%= o.getSymbol() %></td>
											<td><%= o.getSide() %></td>
											<td><%= o.getType() %></td>
											<td><%= o.getQuantity() %></td>
											<td><%= o.getPrice() %></td>
											<td><%= o.getTrader() %></td>
											<td><% if (o.getNotes().length() != 0) { %><a data-container="body" data-toggle="popover"
												data-placement="left" title="Notes"
												data-content="<%= o.getNotes() %>"> Display </a><% } else {%>None<% } %></td>
										</tr>
						    		<%
						    }
					} %>
									</table> 
									</div>
					</div>
					
				</div>
					<%
				}
			
			
			%>
			</div>
			
			<div role="tabpanel" class="tab-pane" id="successful">
			<%
				for(Portfolio portfolio : pm.getPortfolios()){
					positions = portfolio.getPositions();
					
					%> <div class="panel-group" id="accordion" role="tablist"
							aria-multiselectable="true">
							

							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="heading<%=portfolio.getName()%>">
									<h4 class="panel-title">
										<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion"
											href="#collapse<%=portfolio.getName()%>successful" aria-expanded="true"
											aria-controls="collapseOne"><%= portfolio.getName() %></a>
									</h4>
								</div>
								
								<div id="collapse<%=portfolio.getName()%>successful" class="panel-collapse collapse in"
									role="tabpanel" aria-labelledby="heading<%=portfolio.getName()%>">
					
								<table class="table table-bordered table-hover rowlink" data-link="row">
									<tr>
										<th>Order ID</th>
										<th>Symbol</th>
										<th>Side</th>
										<th>Type</th>
										<th>Quantity</th>
										<th>Price</th>
										<th>Trader</th>
										<th>Notes</th>
									</tr> <%
					
					for(Position position : positions){
						HashMap<String, ArrayList<Order>> individualPositionOrdersMap = position.getOrders();
						ArrayList<Order> orderList = individualPositionOrdersMap.get("successful");
						%>
							
						    <% for(Order o : orderList){
						    		%>
						    			<tr>
											<td><%= o.getId() %></td>
											<td><%= o.getSymbol() %></td>
											<td><%= o.getSide() %></td>
											<td><%= o.getType() %></td>
											<td><%= o.getQuantity() %></td>
											<td><%= o.getPrice() %></td>
											<td><%= o.getTrader() %></td>
											<td><% if (o.getNotes().length() != 0) { %><a data-container="body" data-toggle="popover"
												data-placement="left" title="Notes"
												data-content="<%= o.getNotes() %>"> Display </a><% } else {%>None<% } %></td>
										</tr>
						    		<%
						    }
					} %>
									</table> 
									</div>
					</div>
					
				</div>
					<%
				}
			
			
			%>
			</div>
			
			<div role="tabpanel" class="tab-pane" id="expired">
			<%
				for(Portfolio portfolio : pm.getPortfolios()){
					positions = portfolio.getPositions();
					
					%> <div class="panel-group" id="accordion" role="tablist"
							aria-multiselectable="true">
							

							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="heading<%=portfolio.getName()%>">
									<h4 class="panel-title">
										<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion"
											href="#collapse<%=portfolio.getName()%>expired" aria-expanded="true"
											aria-controls="collapseOne"><%= portfolio.getName() %></a>
									</h4>
								</div>
								
								<div id="collapse<%=portfolio.getName()%>expired" class="panel-collapse collapse in"
									role="tabpanel" aria-labelledby="heading<%=portfolio.getName()%>">
					
								<table class="table table-bordered table-hover rowlink" data-link="row">
									<tr>
										<th>Order ID</th>
										<th>Symbol</th>
										<th>Side</th>
										<th>Type</th>
										<th>Quantity</th>
										<th>Price</th>
										<th>Trader</th>
										<th>Notes</th>
									</tr> <%
					
					for(Position position : positions){
						HashMap<String, ArrayList<Order>> individualPositionOrdersMap = position.getOrders();
						ArrayList<Order> orderList = individualPositionOrdersMap.get("expired");
						%>
							
						    <% for(Order o : orderList){
						    		%>
						    			<tr>
											<td><%= o.getId() %></td>
											<td><%= o.getSymbol() %></td>
											<td><%= o.getSide() %></td>
											<td><%= o.getType() %></td>
											<td><%= o.getQuantity() %></td>
											<td><%= o.getPrice() %></td>
											<td><%= o.getTrader() %></td>
											<td><% if (o.getNotes().length() != 0) { %><a data-container="body" data-toggle="popover"
												data-placement="left" title="Notes"
												data-content="<%= o.getNotes() %>"> Display </a><% } else {%>None<% } %></td>
										</tr>
						    		<%
						    }
					} %>
									</table> 
									</div>
					</div>
					
				</div>
					<%
				}
			
			
			%>
			</div>
			
			<div role="tabpanel" class="tab-pane" id="partiallyFilled">
			<%
				for(Portfolio portfolio : pm.getPortfolios()){
					positions = portfolio.getPositions();
					
					%> <div class="panel-group" id="accordion" role="tablist"
							aria-multiselectable="true">
							

							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="heading<%=portfolio.getName()%>">
									<h4 class="panel-title">
										<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion"
											href="#collapse<%=portfolio.getName()%>partiallyFilled" aria-expanded="true"
											aria-controls="collapseOne"><%= portfolio.getName() %></a>
									</h4>
								</div>
								
								<div id="collapse<%=portfolio.getName()%>partiallyFilled" class="panel-collapse collapse in"
									role="tabpanel" aria-labelledby="heading<%=portfolio.getName()%>">
					
								<table class="table table-bordered table-hover rowlink" data-link="row">
									<tr>
										<th>Order ID</th>
										<th>Symbol</th>
										<th>Side</th>
										<th>Type</th>
										<th>Quantity</th>
										<th>Price</th>
										<th>Trader</th>
										<th>Notes</th>
									</tr> <%
					
					for(Position position : positions){
						HashMap<String, ArrayList<Order>> individualPositionOrdersMap = position.getOrders();
						ArrayList<Order> orderList = individualPositionOrdersMap.get("partially filled");
						%>
							
						    <% for(Order o : orderList){
						    		%>
						    			<tr>
											<td><%= o.getId() %></td>
											<td><%= o.getSymbol() %></td>
											<td><%= o.getSide() %></td>
											<td><%= o.getType() %></td>
											<td><%= o.getQuantity() %></td>
											<td><%= o.getPrice() %></td>
											<td><%= o.getTrader() %></td>
											<td><% if (o.getNotes().length() != 0) { %><a data-container="body" data-toggle="popover"
												data-placement="left" title="Notes"
												data-content="<%= o.getNotes() %>"> Display </a><% } else {%>None<% } %></td>
										</tr>
						    		<%
						    }
					} %>
									</table> 
									</div>
					</div>
					
				</div>
					<%
				}
			
			
			%>
			</div>
			
			<div role="tabpanel" class="tab-pane" id="cancelled">
			<%
				for(Portfolio portfolio : pm.getPortfolios()){
					positions = portfolio.getPositions();
					
					%> <div class="panel-group" id="accordion" role="tablist"
							aria-multiselectable="true">
							

							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="heading<%=portfolio.getName()%>">
									<h4 class="panel-title">
										<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion"
											href="#collapse<%=portfolio.getName()%>cancelled" aria-expanded="true"
											aria-controls="collapseOne"><%= portfolio.getName() %></a>
									</h4>
								</div>
								
								<div id="collapse<%=portfolio.getName()%>cancelled" class="panel-collapse collapse in"
									role="tabpanel" aria-labelledby="heading<%=portfolio.getName()%>">
					
								<table class="table table-bordered table-hover rowlink" data-link="row">
									<tr>
										<th>Order ID</th>
										<th>Symbol</th>
										<th>Side</th>
										<th>Type</th>
										<th>Quantity</th>
										<th>Price</th>
										<th>Trader</th>
										<th>Notes</th>
									</tr> <%
					
					for(Position position : positions){
						HashMap<String, ArrayList<Order>> individualPositionOrdersMap = position.getOrders();
						ArrayList<Order> orderList = individualPositionOrdersMap.get("cancelled");
						%>
							
						    <% for(Order o : orderList){
						    		%>
						    			<tr>
											<td><%= o.getId() %></td>
											<td><%= o.getSymbol() %></td>
											<td><%= o.getSide() %></td>
											<td><%= o.getType() %></td>
											<td><%= o.getQuantity() %></td>
											<td><%= o.getPrice() %></td>
											<td><%= o.getTrader() %></td>
											<td><% if (o.getNotes().length() != 0) { %><a data-container="body" data-toggle="popover"
												data-placement="left" title="Notes"
												data-content="<%= o.getNotes() %>"> Display </a><% } else {%>None<% } %></td>
										</tr>
						    		<%
						    }
					} %>
									</table> 
									</div>
					</div>
					
				</div>
					<%
				}
			
			
			%>
			</div>
			
			
		</div>
	</div>
</div>
