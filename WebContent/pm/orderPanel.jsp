<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<div class="panel-group" id="accordion" role="tablist"
	aria-multiselectable="true">
	

	<div class="panel panel-default">
		<div class="panel-heading" role="tab" id="heading<%=portfolio.getName()%>">
			<h4 class="panel-title">
				<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion"
					href="#collapse<%=portfolio.getName()%>" aria-expanded="false"
					aria-controls="collapseOne"><%= portfolio.getName() %></a>
			</h4>
		</div>
		<div id="collapse<%=portfolio.getName()%>" class="panel-collapse collapse"
			role="tabpanel" aria-labelledby="heading<%=portfolio.getName()%>">
			<%@include file="../pm/ordersTable.jsp"%>
		</div>
	</div>
	
</div>
