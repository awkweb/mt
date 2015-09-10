<div>

  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#open" aria-controls="open" role="tab" data-toggle="tab">Open</a></li>
    <li role="presentation"><a href="#sentForExecution" aria-controls="sentForExecution" role="tab" data-toggle="tab">Sent for Excecution</a></li>
    <li role="presentation"><a href="#successful" aria-controls="successful" role="tab" data-toggle="tab">Successful</a></li>
    <li role="presentation"><a href="#failed" aria-controls="failed" role="tab" data-toggle="tab">Failed</a></li>
    <li role="presentation"><a href="#partiallyFilled" aria-controls="partiallyFilled" role="tab" data-toggle="tab">Partially Filled</a></li>
    <li role="presentation"><a href="#cancelled" aria-controls="cancelled" role="tab" data-toggle="tab">Cancelled</a></li>
    <li role="presentation"><a href="#all" aria-controls="all" role="tab" data-toggle="tab">All</a></li>
  </ul>

  <div class="tab-content">
  	<br>
    <div role="tabpanel" class="tab-pane fade in active" id="open1">
    	<%@include file="OrdersCollapse.jsp" %>
    </div>
    <div role="tabpanel" class="tab-pane  fade" id="sentForExecution1">
    	    	<%@include file="OrdersCollapse.jsp" %>
    </div> 
   <div role="tabpanel" class="tab-pane  fade" id="successful1">
        	<%@include file="OrdersCollapse.jsp" %>
    </div>
    <div role="tabpanel" class="tab-pane  fade" id="failed1">
        	<%@include file="OrdersCollapse.jsp" %>
    </div>
    <div role="tabpanel" class="tab-pane  fade" id="partiallyFilled1">
    	    	<%@include file="OrdersCollapse.jsp" %>
    </div>
    <div role="tabpanel" class="tab-pane  fade" id="cancelled1">
    	<%@include file="OrdersCollapse.jsp" %>
    	    </div>
    <div role="tabpanel" class="tab-pane  fade" id="all1">
    	    	<%@include file="OrdersCollapse.jsp" %>
    </div>  
  </div>

</div>
