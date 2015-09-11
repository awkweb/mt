<%@page import="com.mt.bean.TraderManager"%>
<%@page import="com.mt.bean.Order"%>

<%!String pageTitle = "Blocks";%>
<%!String toolbarButtonTitle = "Remove from Block";%>
<%!String modalTitle = toolbarButtonTitle;%>

<%! TraderManager trader; %> 
<% trader = ((TraderManager)session.getAttribute("trader")); %>
<%! ArrayList<Integer> blockIds; %>
<% blockIds = trader.getBlockIds(); %>
<%! ArrayList<Block> blocks; %>
<% blocks = trader.getBlocks(); %>
<%! TreeMap<String,Block> Tree; %>
<% Tree = new TreeMap<String,Block>(); %>

<%! Block firstBlock; %>
<% firstBlock = blocks.get(0); %>
<%! ArrayList<String> symbols; %>
<% symbols = new ArrayList<String>(); %>

<!DOCTYPE html>
<html>
<head>
	    	<%@include file="includes/head.jsp" %>
</head>
<body>
	
	
	
		    	<%@include file="includes/traderNavbar.jsp" %>
	
	
	<div class="container">
		
		
		
			  <%@include file="includes/pageHeader.jsp" %>
			  <%@include file="Trader/toolbar2.jsp"%>
			  
		<br>
		
			 <%@include file="Trader/BlocksStatusTabs.jsp" %>
		
	</div>
</body>
</html>
