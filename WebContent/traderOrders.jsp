<!DOCTYPE html>
<html>
<head>
 <%@ include file="includes/head.jsp"%> 
</head>
<body>
in trader page
	 <%!String pageTitle = "Orders";%>
	<%!String toolbarButtonTitle = "Add to Block";%>
	<%!String modalTitle = toolbarButtonTitle;%>

	<%@include file="../includes/traderNavbar.jsp"%>
	<div class="container">
		<%@include file="../includes/pageHeader.jsp"%>




		<jsp:include page="Trader/toolbar2.jsp">
			<jsp:param name="toolbarButtonTitle" value="<%=toolbarButtonTitle%>" />
		</jsp:include>

		<br>
		<%@include file="Trader/OrderStatusTabs.jsp"%>
	</div> 
</body>
</html>