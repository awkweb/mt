

 <%@page import="java.util.ArrayList"%>
 
  <%@page import="java.util.ArrayList"%>
<%@page import="java.util.TreeMap"%>
<%@page import="java.util.NavigableMap"%>
<div class="panel-group" id="accordion1">

    <%ArrayList<String> collapseIds = new ArrayList<String>();%>
    <%collapseIds.add("collapseTwo");%>
    <%collapseIds.add("collapseTwo1");%>
    <%collapseIds.add("collapseTwo11");%>
    
    <%ArrayList<String> InnercollapseIds = new ArrayList<String>();%>  
    <%InnercollapseIds.add("collapseInnerOne");%>
    <%InnercollapseIds.add("collapseInnerTwo");%>
    <%InnercollapseIds.add("collapseInnerOne2");%>
    <%InnercollapseIds.add("collapseInnerTwo2");%>
    <%InnercollapseIds.add("collapseInnerOne1");%>
    <%InnercollapseIds.add("collapseInnerTwo1");%>
    
    <%ArrayList<String> dataParent = new ArrayList<String>();%>
    <%dataParent.add("#accordion1");%>
    <%dataParent.add("#accordion11");%>
    <%dataParent.add("#accordion111");%>

    <%ArrayList<String> InnerdataParent = new ArrayList<String>();%>
    <%InnerdataParent.add("#accordion2");%>
    <%InnerdataParent.add("#accordion2");%>
    <%InnerdataParent.add("#accordion21");%>
    <%InnerdataParent.add("#accordion21");%>
    <%InnerdataParent.add("#accordion211");%>
    <%InnerdataParent.add("#accordion211");%>
    
    <%ArrayList<String> href = new ArrayList<String>();%>
	<%href.add("#collapseTwo");%>
    <%href.add("#collapseTwo1");%>
    <%href.add("#collapseTwo11");%>
    
    <%ArrayList<String> innerhref = new ArrayList<String>();%>
    <%innerhref.add("#collapseInnerOne");%>
    <%innerhref.add("#collapseInnerTwo");%>
    <%innerhref.add("#collapseInnerOne2");%>
    <%innerhref.add("#collapseInnerTwo2");%>
    <%innerhref.add("#collapseInnerOne1");%>
    <%innerhref.add("#collapseInnerTwo1");%>
    
  <%ArrayList<String> names= new ArrayList<String>();
    names.add("Sarah O'Reilly");
    names.add("James Sinnott");
    names.add("Tom Meagher");

   ArrayList<String> ids= new ArrayList<String>();
    ids.add("123");
    ids.add("345");
    ids.add("567");
    
    ArrayList<String> symbols= new ArrayList<String>();
    symbols.add("APPL");
    symbols.add("NET");
    symbols.add("ELP");
    
    ArrayList<String> timestamp= new ArrayList<String>();
    timestamp.add("12/13/14");
    timestamp.add("14/15/16");
    timestamp.add("16/17/18");
    
    ArrayList<String> totalQty= new ArrayList<String>();
    totalQty.add("100");
    totalQty.add("200");
    totalQty.add("300");
    
    
    ArrayList<String> namesSell= new ArrayList<String>();
    namesSell.add("Anthony Cato");
    namesSell.add("Kenny Fong");
    namesSell.add("Jai Surya");

   ArrayList<String> idsSell= new ArrayList<String>();
    idsSell.add("111");
    idsSell.add("333");
    idsSell.add("555");
    
    ArrayList<String> timestampSell= new ArrayList<String>();
    timestampSell.add("12/13/14");
    timestampSell.add("14/15/16");
    timestampSell.add("16/17/18");
    
    ArrayList<String> totalQtySell= new ArrayList<String>();
    totalQtySell.add("111");
    totalQtySell.add("222");
    totalQtySell.add("333");
    
    TreeMap<String,ArrayList<String>> totalQtySellTree= new TreeMap<String,ArrayList<String>>();
    
/*     totalQtySell.add("111");
    totalQtySell.add("222");
    totalQtySell.add("333"); */
    %>
    
 	 <%int k = 0;%>
  <% for (int j = 0; j < symbols.size(); j ++){ %>

  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title"><a class="panel-toggle" data-toggle="collapse" data-parent=<%=dataParent.get(j)%> href=<%=href.get(j)%>>
       <%=symbols.get(j)%>
      </a></h4>
    </div>
    <div id=<%=collapseIds.get(j)%> class="panel-body collapse">
      <div class="panel-inner">

        <!-- Here we insert another nested accordion -->

        <div class="panel-group" id="accordion2">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"><a class="panel-toggle" data-toggle="collapse" data-parent=<%=InnerdataParent.get(k)%> href=<%=innerhref.get(k)%>>
              BUY
              </a></h4>
            </div>
            <div id=<%=InnercollapseIds.get(k)%> class="panel-body collapse">
              <div class="panel-inner">
              <!-- <th>Type</th> -->
				<table class="table table-bordered table-hover">
					<tr>
						<th style="text-align: center">Order ID</th>
						<th style="text-align: center">Portfolio Manager</th>
						<th style="text-align: center">Creation Time</th>
				
						<th style="text-align: center">Quantity</th>
						<th></th>
					</tr>

					<%  for (int i = 0; i < names.size(); i ++){ %> 
						<tr id=<%=i%>>
						<td><input type="checkbox" name="checkboxOptions" id="checkbox1"
							value="row1"><%=ids.get(i)%></td>
						<td style="text-align: center"><%=names.get(i)%></td>
				
						<td style="text-align: center"><%=timestamp.get(i)%></td>
						<td style="text-align: center"><%=totalQty.get(i)%>
							<button id=row1 type="button" class="btn btn-default"
								data-toggle="modal" data-target="#myModal1">Modify</button>
						</td>
						<td style="text-align: center"><button id=deleteorder1
								type="button" class="btn btn-default" data-toggle="popover"
								data-target="#Delete">Delete</button></td>
				
				
					</tr>
						
						
					<% }%>
				
				</table>
												
				<%@include file="Modify-modal.jsp"%> 
              </div>
            </div>
          </div>
        <% k=k+1;%> 
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"><a class="panel-toggle" data-toggle="collapse" data-parent=<%=InnerdataParent.get(k)%> href=<%=innerhref.get(k)%>>
               SELL
              </a></h4>
            </div>        
           <div id=<%=InnercollapseIds.get(k)%> class="panel-body collapse">
            <!-- <div id="collapseInnerTwo" class="panel-body collapse"> -->
              <div class="panel-inner">
                           <!-- <th>Type</th> -->
				<table class="table table-bordered table-hover">
					<tr>
						<th style="text-align: center">Order ID</th>
						<th style="text-align: center">Portfolio Manager</th>
						<th style="text-align: center">Creation Time</th>
				
						<th style="text-align: center">Quantity</th>
						<th></th>
					</tr>

						<%  for (int i = 0; i < namesSell.size(); i ++){ %> 
							<tr id=<%=i%>>
							<td><input type="checkbox" name="checkboxOptions" id="checkbox1"
								value="row1"><%=idsSell.get(i)%></td>
							<td style="text-align: center"><%=namesSell.get(i)%></td>
					
							<td style="text-align: center"><%=timestampSell.get(i)%></td>
							<td style="text-align: center"><%=totalQtySell.get(i)%>
								<button id=row1 type="button" class="btn btn-default"
									data-toggle="modal" data-target="#myModal1">Modify</button>
							</td>
							<td style="text-align: center"><button id=deleteorder1
									type="button" class="btn btn-default" data-toggle="popover"
									data-target="#Delete">Delete</button></td>
				
				
					</tr>
						
						
					<% }%>
				
				</table>
												
				<%@include file="Modify-modal.jsp"%>             
              </div>
            </div>
          </div>
        </div>

        <!-- Inner accordion ends here -->



      </div>
    </div>
  </div>
   <% k=k+1;%>
 	<% }%>   


</div>


<%-- <div class="panel-group" id="accordion1">
 
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title"><a class="panel-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseTwo">
       AAPL
      </a></h4>
    </div>
    <div id="collapseTwo" class="panel-body collapse">
      <div class="panel-inner">

        <!-- Here we insert another nested accordion -->

        <div class="panel-group" id="accordion2">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"><a class="panel-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseInnerOne">
              BUY
              </a></h4>
            </div>
            <div id="collapseInnerOne" class="panel-body collapse">
              <div class="panel-inner">
              <%@include file="traderOrdersTable.jsp" %>
              </div>
            </div>
          </div>
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"><a class="panel-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseInnerTwo">
               SELL
              </a></h4>
            </div>
            <div id="collapseInnerTwo" class="panel-body collapse">
              <div class="panel-inner">
             <%@include file="traderOrdersTable.jsp" %>
                
              </div>
            </div>
          </div>
        </div>

        <!-- Inner accordion ends here -->



      </div>
    </div>
  </div>
  
  






 <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title"><a class="panel-toggle" data-toggle="collapse" data-parent="#accordion11" href="#collapseTwo1">
       HD
      </a></h4>
    </div>
    <div id="collapseTwo1" class="panel-body collapse">
      <div class="panel-inner">

        <!-- Here we insert another nested accordion -->

        <div class="panel-group" id="accordion21">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"><a class="panel-toggle" data-toggle="collapse" data-parent="#accordion21" href="#collapseInnerOne2">
                              BUY
              </a></h4>
            </div>
            <div id="collapseInnerOne2" class="panel-body collapse">
              <div class="panel-inner">
              <%@include file="traderOrdersTable.jsp" %>
              </div>
            </div>
          </div>
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"><a class="panel-toggle" data-toggle="collapse" data-parent="#accordion21" href="#collapseInnerTwo2">
                                   SELL       </a></h4>
            </div>
            <div id="collapseInnerTwo2" class="panel-body collapse">
              <div class="panel-inner">
             <%@include file="traderOrdersTable.jsp" %>
                
              </div>
            </div>
          </div>
        </div>

        <!-- Inner accordion ends here -->



      </div>
    </div>
  </div>




 <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title"><a class="panel-toggle" data-toggle="collapse" data-parent="#accordion111" href="#collapseTwo11">
       GE
      </a></h4>
    </div>
    <div id="collapseTwo11" class="panel-body collapse">
      <div class="panel-inner">

        <!-- Here we insert another nested accordion -->

        <div class="panel-group" id="accordion211">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"><a class="panel-toggle" data-toggle="collapse" data-parent="#accordion211" href="#collapseInnerOne1">
                               BUY
              </a></h4>
            </div>
            <div id="collapseInnerOne1" class="panel-body collapse">
              <div class="panel-inner">
             <%@include file="traderOrdersTable.jsp" %>
              </div>
            </div>
          </div>
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"><a class="panel-toggle" data-toggle="collapse" data-parent="#accordion211" href="#collapseInnerTwo1">
                                SELL
              </a></h4>
            </div>
            <div id="collapseInnerTwo1" class="panel-body collapse">
              <div class="panel-inner">
             <%@include file="traderOrdersTable.jsp" %>
                
              </div>
            </div>
          </div>
        </div>

        <!-- Inner accordion ends here -->



      </div>
    </div>
  </div>


  
  


</div> --%>