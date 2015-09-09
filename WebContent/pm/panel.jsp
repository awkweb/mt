<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<div class="panel-group" id="accordion" role="tablist"
	aria-multiselectable="true">
	
	<% if (firstCollapse <= 0) { %>
	<div class="panel panel-default">
		<div class="panel-heading" role="tab" id="headingOne">
			<h4 class="panel-title">
				<a role="button" data-toggle="collapse" data-parent="#accordion"
					href="#collapseOne" aria-expanded="true"
					aria-controls="collapseOne"> Portfolio <%= pName %></a>
					<% if (pageTitle.equals("Positions")) { %>
					<small> Market Value $516,800</small>
					<% } %>
			</h4>
		</div>
		<div id="collapse<%=pName%>" class="panel-collapse collapse in"
			role="tabpanel" aria-labelledby="headingOne">
			<% if (pageTitle.equals("Positions")) { %>
			<%@include file="../pm/positionsTable.jsp"%>
			<% } else { %>
			<%@include file="../pm/ordersTable.jsp"%>
			<% } %>
		</div>
	</div>
	<% } else { %>
	<div class="panel panel-default">
		<div class="panel-heading" role="tab" id="heading<%=pName%>">
			<h4 class="panel-title">
				<a class="collapsed" role="button" data-toggle="collapse"
					data-parent="#accordion" href="#collapse<%=pName%>" aria-expanded="false"
					aria-controls="collapse<%=pName%>"><%=pName%></a>
					<% if (pageTitle.equals("Positions")) { %>
					<small> Market Value $516,800</small>
					<% } %>
			</h4>
		</div>
		<div id="collapse<%=pName%>" class="panel-collapse collapse" role="tabpanel"
			aria-labelledby="heading<%=pName%>">
			<% if (pageTitle.equals("Positions")) { %>
			<%@include file="../pm/positionsTable.jsp"%>
			<% } else { %>
			<%@include file="../pm/ordersTable.jsp"%>
			<% } %>
		</div>
	</div>
	<% } %>
	
</div>