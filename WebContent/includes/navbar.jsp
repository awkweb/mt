<nav class="navbar navbar-default">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">MoneyTree</a>
		</div>

		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li
					class="<%if (pageTitle.equals("Positions")) {%>active<%}%>"><a
					href="/mt/pmPositions.jsp">Positions<span class="sr-only">(current)</span></a></li>
				<li
					class="<%if (pageTitle.equals("Orders")) {%>active<%}%>"><a
					href="/mt/orderDisplayServlet">Orders</a></li>
				<%@include file="notifications.jsp"%>
				<li><p class="navbar-text">
						User:
						<%= pm.getFname() + " " + pm.getLname() %></p></li>
				<li><li><a href="/mt/logoutServlet">Log Out</a></li></li>
			</ul>
		</div>
	</div>
</nav>
