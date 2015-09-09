<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<form class="form-horizontal" method="post" action="newOrder">
<div class="modal-body">
	<div class="form-group">
		<label for="inputSymbol" class="col-sm-2 control-label">Symbol</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="inputSymbol"
				placeholder="Symbol" name="symbol">
		</div>
	</div>
	<div class="form-group">
		<label for="inputQuantity" class="col-sm-2 control-label">Quantity</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="inputQuantity"
				placeholder="Quantity" name="quantity">
		</div>
	</div>
	<div class="form-group">
		<label for="inputSide" class="col-sm-2 control-label">Side</label>
		<div class="col-sm-10">
			<label class="radio-inline"> <input type="radio" id="inlineRadioBuy" value="buy" name="side">
				Buy
			</label> <label class="radio-inline"> <input type="radio"
				id="inlineRadioSell" value="sell" name="side" >
				Sell
			</label>
		</div>
	</div>
	<div class="form-group">
		<label for="inputSide" class="col-sm-2 control-label">Type</label>
		<div class="col-sm-10">
			<label class="radio-inline"> <input type="radio"
			id="inlineRadioMarket" value="market" name="type">
				Market Order
			</label> <label class="radio-inline"> <input type="radio"
			id="inlineRadioLimit" value="limit" name="type">
				Limit Order
			</label> <label class="radio-inline"> <input type="radio" id="inlineRadioLimit" 
			value="stop loss" name="type" >
				Stop Loss Order
			</label>
		</div>
	</div>
	<div class="form-group">
		<label for="inputPrice" class="col-sm-2 control-label">Price</label>
		<div class="col-sm-10">
			<div class="input-group">
				<span class="input-group-addon">$</span> <input type="text"
					class="form-control" id="inputPrice" placeholder="00.00" name="price">
			</div>
		</div>
	</div>
	<div class="form-group">
		<label for="inputPortfolioManager" class="col-sm-2 control-label">Portfolio
			Manager</label>
		<div class="col-sm-10">
			<p class="form-control-static"><%= pm.getFname() + " " + pm.getLname() %></p>
		</div>
	</div>
	
	<div class="form-group">
		<label for="inputPortfolio" class="col-sm-2 control-label">Portfolio</label>
		<div class="col-sm-10">
			<select id="selectPortfolio" class="form-control" name="portfolio">
				<option></option>
				<% for (Portfolio portfolio: pm.getPortfolios()) { %>
					<option><%= portfolio.getName() %></option>
				<% } %>
			</select>
		</div>
	</div>
	<input style="display:none;" type="text" class="form-control" name="pmId" value="<%= pm.getId() %>">
	
	<div class="form-group">
		<label for="inputTrader" class="col-sm-2 control-label">Trader</label>
		<div class="col-sm-10">
			<select class="form-control" name="trader">
				<option></option>
				<option>Sam Altman</option>
				<option>Thomas Meagher</option>
				<option>Jack Dorsey</option>
			</select>
		</div>
	</div>
	<div class="form-group">
		<label for="inputNotes" class="col-sm-2 control-label">Notes</label>
		<div class="col-sm-10">
			<textarea class="form-control" rows="3" name="notes"></textarea>
		</div>
	</div>
	</div>
	<div class="modal-footer">
		<!-- <button type="button" class="btn btn-danger pull-left">Delete</button> -->
		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		<button type="submit" class="btn btn-primary">Submit</button>
	</div>
</form>
