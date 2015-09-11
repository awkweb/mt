<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
       
        <% if (pageTitle.equals("Orders")) { %>
       	<h3 class="modal-title" id="modalTitle"><strong>Add to Block</strong></h3>
        <% } else { %>
        <h3 class="modal-title" id="modalTitle"><strong>Remove from Block</strong></h3>
        <% } %>
        
        
         </div>
    
    
    	
      <div class="modal-body">
              <h3>Selected Orders(3)</h3>
      
      	 <!-- <th>Type</th> --><table class="table table-bordered table-hover">
	<tr>
		<th style="text-align:center">Order ID</th>
		<th style="text-align:center">Portfolio Manager</th>
		<th style="text-align:center"> Creation Time</th>
		
		<th style="text-align:center">Quantity             </th>
	
	</tr>
	<tr id="1">
		<td style="text-align:center">A101</td>
		<td style="text-align:center">Paul Graham</td>
		
		<td style="text-align:center">02/24/14 10:30 am</td>
		<td style="text-align:center">100</td>
		

		
	</tr>
	<tr id="2">
	<td style="text-align:center">A121</td>
		
		<td style="text-align:center">Vivek Sharma</td>
		<td style="text-align:center">04/21/14 12:30 pm</td>
		<td style="text-align:center">200 </td>
		
	
	</tr>
	<tr id="3">
		<td style="text-align:center">B345</td>

		<td style="text-align:center">John Smith</td>
		<td style="text-align:center">06/11/14 2:30 pm</td>
		<td style="text-align:center">150</td>
		
	</tr>
	
</table>
		<% if (pageTitle.equals("Orders")) { %>
        <%@include file="AddToBlockForm.jsp" %>
              <%} %>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Submit</button>
      </div>
    </div>
  </div>
</div>
  	