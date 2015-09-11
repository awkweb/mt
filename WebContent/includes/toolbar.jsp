<div class="row">
	<div class="col-sm-4">
		<form class="form-horizontal" method="get" action="searchServlet">
			<div class="input-group">
				<input type="text" class="form-control" placeholder="Search" name="searchString">
				<span class="input-group-btn">
					<button type="submit" class="btn btn-default" type="button" disabled="disabled">Search</button>
					<% if (request.getParameter("activeSearch") != null) { %>
					<button class="btn btn-default" type="button" onclick="window.location.reload();">Reset</button>
					<% } %>
				</span>
			</div>
		</form>
	</div>

	<div class="col-sm-3 col-sm-offset-5">
		<div class="btn-group btn-group-justified" role="group"
			aria-label="...">
			<div class="btn-group" role="group">
				<button id="Create Order" type="button" class="btn btn-default"
					data-toggle="modal" data-target="#myModal">Create Order</button>
			</div>
		</div>
	</div>
</div>
