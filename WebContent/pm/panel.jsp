<div class="panel-group" id="accordion" role="tablist"
	aria-multiselectable="true">
	
	<% if (firstCollapse <= 0) { %>
	<div class="panel panel-default">
		<div class="panel-heading" role="tab" id="heading<%=name%>">
			<h4 class="panel-title">
				<a role="button" data-toggle="collapse" data-parent="#accordion"
					href="#collapse<%=name%>" aria-expanded="true"
					aria-controls="collapseOne"> Portfolio <%=name%></a>
					<% if (pageTitle.equals("Positions")) { %>
					<small> Market Value $516,800</small>
					<% } %>
			</h4>
		</div>
		<div id="collapse<%=name%>" class="panel-collapse collapse in"
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
		<div class="panel-heading" role="tab" id="heading<%=name%>">
			<h4 class="panel-title">
				<a class="collapsed" role="button" data-toggle="collapse"
					data-parent="#accordion" href="#collapse<%=name%>" aria-expanded="false"
					aria-controls="collapse<%=name%>">Portfolio <%=name%></a>
					<% if (pageTitle.equals("Positions")) { %>
					<small> Market Value $516,800</small>
					<% } %>
			</h4>
		</div>
		<div id="collapse<%=name%>" class="panel-collapse collapse" role="tabpanel"
			aria-labelledby="heading<%=name%>">
			<% if (pageTitle.equals("Positions")) { %>
			<%@include file="../pm/positionsTable.jsp"%>
			<% } else { %>
			<%@include file="../pm/ordersTable.jsp"%>
			<% } %>
		</div>
	</div>
	<% } %>
	
</div>