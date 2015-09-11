<div class="row">
	<div class="col-sm-4">
		<div class="input-group">
			<input type="text" class="form-control" placeholder="Search">
			<span class="input-group-btn">
				<button class="btn btn-default" type="button" disabled="disabled">Search</button>
			</span>
		</div>
	</div>
	<div class="col-sm-3 col-sm-offset-5">
			
		<div class="btn-group btn-group-justified" role="group"
			aria-label="...">
			<div class="btn-group" role="group">
				<button id="Add to Block" type="button" class="btn btn-default" data-toggle="modal"
					data-target="#myModal2"><%=toolbarButtonTitle%></button>
			</div>
		</div>
		<br>
		<div class="btn-group btn-group-justified" role="group"
			aria-label="...">
			<div class="btn-group" role="group">
				<form method="post" action="ExportToExcelServlet">
					<button type="submit" id="Add to Block" class="btn btn-default">Export to Excel</button>
				</form>
			</div>
		</div>
		
	</div>
</div>

    	<%@include file="AddToBlockModal.jsp" %>