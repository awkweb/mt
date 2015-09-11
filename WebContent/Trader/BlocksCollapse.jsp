
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.TreeMap"%>
<%@page import="java.util.NavigableMap"%>

  <%@page import="com.mt.bean.TraderManager"%>
<%@page import="com.mt.bean.Order"%>
<%@page import="com.mt.bean.Block"%>

  
  <%
  
	
	
	  for (int q = 0; q < blocks.size(); q ++){
		  if(!symbols.contains(blocks.get(q).getSymbol())){
			  symbols.add(blocks.get(q).getSymbol());
			  Tree.put(blocks.get(q).getSymbol(), blocks.get(q));
		  }
	  }
	
	
  %>

<div class="panel-group" id="accordion1">

<% for (int j = 0; j < symbols.size(); j ++){ %>
<div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title"><a class="panel-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseTwo<%=j%>">

       <%=symbols.get(j)%>
      </a></h4>
    </div>
     
    
  
    <div id="collapseTwo<%=j%>" class="panel-body collapse">
      <div class="panel-inner">
      <div class="panel-group" id="accordion2">

        <!-- Here we insert another nested accordion -->
       
 	<% int count = 0;
 	
 	for (Block block:blocks){ 
 	if (symbols.get(j).equals(block.getSymbol())){%> 
        
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"><a class="panel-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseInner<%=count%><%=j%>">
                Block <%=block.getBlock_id()%> Quantity: <%=block.getTotal_quantity()%>, Side: <%=block.getSide_id()%> <button>Execute</button>
              </a></h4>
            </div>
            <div id="collapseInner<%=count%><%=j%>" class="panel-body collapse">
              <div class="panel-inner">
             <table class="table table-bordered table-hover">
					<tr>
						<th style="text-align: center">Order ID</th>
						<th style="text-align: center">Portfolio Manager</th>
						<th style="text-align: center">Creation Time</th>
						<th style="text-align: center">Status</th>
						<th style="text-align: center">Quantity</th>
						<th></th>
					</tr>

					<% for (Order order: block.getBlockOrders()){  
						
						int count1 = 0;  
						if ((symbols.get(j).equals(order.getSymbol())) && (order.getSide().equals("buy"))){%>
							
						<tr id=<%=count%>>
						<td><input type="checkbox" name="checkboxOptions" id="checkbox1"
							value="row1"><%= order.getId()%></td>
						<td style="text-align: center"><%=order.getPmName()%></td>
				
						<td style="text-align: center"><%=order.getTimeStamp()%></td>
						<td style="text-align: center"><%=order. getStatus()%>
						<td style="text-align: center"><%=order.getQuantity()%>						
							<button id=row1 type="button" class="btn btn-default"
								data-toggle="modal" data-target="#myModal1">Modify</button>
						</td>
						<td style="text-align: center"><button id=deleteorder1
								type="button" class="btn btn-default" data-toggle="popover"
								data-target="#Delete">Delete</button></td>				
				
					</tr>
												
					<% count1++;}}%>
				
				</table>

              </div>
            </div>
          </div>
             <%count ++;}} %> 
        </div>

        <!-- Inner accordion ends here -->



      </div>
    </div>
  </div>
<% }%>


</div>