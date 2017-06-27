<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<div class="container-wrapper">
    <div class="container">
            <section class="container" ng-app="cartApp">
            	<div ng-controller = "cartCtrl" ng-init="initCartId('${cartId}')">
            		<table class="table table-hover">
                     <tr>
                         <th><font color="blue">Quantity</font></th>
                     </tr>
                	<tr>
                		<th>Total Items:</th>
                    	<th><font color="bue">{{calCount()}}</font></th>
                    	<th>Grand Total</th>
                    	<th><font color="red"><b>Rs. {{calGrandTotal()}}</b></font></th>
                    </tr>
            		</table>
			   </div>
			</section>
    </div>
</div>