<div class="panel-group" id="accordion1">
 
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


  
  


</div>