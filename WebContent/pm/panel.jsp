<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<div class="panel-group" id="accordion" role="tablist"
	aria-multiselectable="true">
	
	<% if (firstCollapse <= 0) { %>
	<div class="panel panel-default">
		<div class="panel-heading" role="tab" id="heading<%=portfolio.getName()%>">
			<h4 class="panel-title">
				<a role="button" data-toggle="collapse" data-parent="#accordion"
					href="#collapse<%=portfolio.getName()%>" aria-expanded="true"
					aria-controls="collapseOne"><%= portfolio.getName() %></a>
					<% if (pageTitle.equals("Positions")) { %>
					<small> Market Value $<%= portfolio.getTotalMarketValue() %></small>
					<% } %>
			</h4>
		</div>
		<div id="collapse<%=portfolio.getName()%>" class="panel-collapse collapse in"
			role="tabpanel" aria-labelledby="heading<%=portfolio.getName()%>">
			<% if (pageTitle.equals("Positions")) { %>
			<%@include file="../pm/positionsTable.jsp"%>
			<% } else { %>
			<%@include file="../pm/ordersTable.jsp"%>
			<% } %>
		</div>
	</div>
	<% } else { %>
	<div class="panel panel-default">
		<div class="panel-heading" role="tab" id="heading<%=portfolio.getName()%>">
			<h4 class="panel-title">
				<a class="collapsed" role="button" data-toggle="collapse"
					data-parent="#accordion" href="#collapse<%=portfolio.getName()%>" aria-expanded="false"
					aria-controls="collapse<%=portfolio.getName()%>"><%=portfolio.getName()%></a>
					<% if (pageTitle.equals("Positions")) { %>
					<small> Market Value $<%= portfolio.getTotalMarketValue() %></small>
					<% } %>
			</h4>
		</div>
		<div id="collapse<%=portfolio.getName()%>" class="panel-collapse collapse" role="tabpanel"
			aria-labelledby="heading<%=portfolio.getName()%>">
			<% if (pageTitle.equals("Positions")) { %>
			<%@include file="../pm/positionsTable.jsp"%>
			<% } else { %>
			<%@include file="../pm/ordersTable.jsp"%>
			<% } %>
		</div>
	</div>
	<% } %>
	
</div>