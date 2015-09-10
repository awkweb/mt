<!-- <th>Type</th> --><table class="table table-bordered table-hover">
	<tr>
		<th style="text-align:center">Order ID</th>
		<th style="text-align:center">Portfolio Manager</th>
		<th style="text-align:center"> Creation Time</th>
		
		<th style="text-align:center">Quantity             </th>
		<th>          </th>
	</tr>
	<tr id="1">
		<td><input type="checkbox" name="checkboxOptions" id="checkbox1"
			value="row1">A101</td>
		<td style="text-align:center">Paul Graham</td>
		
		<td style="text-align:center">02/24/14 10:30 am</td>
		<td style="text-align:center">100 <button id=row1 type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal1">Modify</button></td>
		<td style="text-align:center"><button id=deleteorder1 type="button" class="btn btn-default" data-toggle="popover" data-target="#Delete">Delete</button></td>

		
	</tr>
	<tr id="2">
	<td><input type="checkbox" name="checkboxOptions" id="checkbox1"
			value="row2" > A121</td>
		
		<td style="text-align:center">Vivek Sharma</td>
		<td style="text-align:center">04/21/14 12:30 pm</td>
		<td style="text-align:center">200 <button id=row2 type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal1" title="Modify Quantity">Modify</button></td>
		<td style="text-align:center"><button id=deleteorder2 type="button" class="btn btn-default" data-toggle="popover" data-target="#Delete">Delete</button></td>
	
	</tr>
	<tr id="3">
		<td><input type="checkbox" name="checkboxOptions" id="checkbox1"
			value="row3" > B345</td>

		<td style="text-align:center">John Smith</td>
		<td style="text-align:center">06/11/14 2:30 pm</td>
		<td style="text-align:center">150 <button id=row1 type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal1">Modify</button></td>
		<td style="text-align:center"><button id=deleteorder1 type="button" class="btn btn-default" data-toggle="popover" data-target="#Delete">Delete</button></td>
		
	</tr>
	
</table>

 <%@include file="Modify-modal.jsp" %>



