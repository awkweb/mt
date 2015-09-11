
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.TreeMap"%>
<%@page import="java.util.NavigableMap"%>

  <%@page import="com.mt.bean.TraderManager"%>
<%@page import="com.mt.bean.Order"%>
<%@page import="com.mt.bean.Block"%>
    
<%! TraderManager trader; %> 
<% trader = ((TraderManager)session.getAttribute("trader")); %> 

  
  <%
  
  ArrayList<Integer> blockIds = trader.getBlockIds();
  ArrayList<Block> blocks = trader.getBlocks();
  TreeMap<String,Block> Tree= new TreeMap<String,Block>();
  
	Block firstBlock = blocks.get(0);
	System.out.println(blockIds.get(0));
	 ArrayList<String> symbols= new ArrayList<String>();
	
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
 	for (Block block:blocks){ %> 
        
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"><a class="panel-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseInner<%=count%><%=j%>">
                Block <%=block.getBlock_id()%> Quantity: <%=block.getTotal_quantity()%>, Side: <%=block.getSide_id()%> <button>Execute</button>
              </a></h4>
            </div>
            <div id="collapseInner<%=count%><%=j%>" class="panel-body collapse">
              <div class="panel-inner">
             

              </div>
            </div>
          </div>
             <%count ++;} %> 
        </div>

        <!-- Inner accordion ends here -->



      </div>
    </div>
  </div>
<% }%>


</div>