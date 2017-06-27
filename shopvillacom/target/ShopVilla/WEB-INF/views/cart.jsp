<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js" > </script>
      
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-social/4.10.1/bootstrap-social.css" rel="stylesheet" >
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h2><font color="blue">Cart</font></h2>

                    <p>All the selected products in shopping cart</p>
                </div>
            </div>
        </section>

        <section class="container" ng-app="cartApp">
            <div ng-controller = "cartCtrl" ng-init="initCartId('${cartId}')">
            <div>
                 <a href="#" class="btn btn-danger pull-left" ng-click="clearCart()"><span
                        class="glyphicon glyphicon-remove-sign"></span>Clear Cart</a>  
                <a href="<spring:url value="/order/${cartId}"/>"
                   class="btn btn-success pull-right"><span class="glyphicon-shopping-cart glyphicon"></span> Check out
                </a>
            </div>

            <table class="table table-hover">
            
                <tr>
                	
                    <th><font color="blue">Product Name</font></th>
                    <th><font color="blue">Unit Price(in Rs.)</font></th>
                    <th><font color="blue">Quantity</font></th>
                    <th><font color="blue">Price(in Rs.)</font></th>
                    <th><font color="red">Action</font></th>
                    
                </tr>
                <tr ng-repeat = "item in cart.cartItems">
                    <th><font color="magenta">{{item.product.productName}}</font></th>
                    <th><font color="magenta">{{item.product.productPrice}}</font></th>
                    <th><font color="magenta">{{item.quantity}}</font></th>
                    <th><font color="magenta">{{item.totalPrice}}</font></th>
                    <th><a href="#" class="label label-danger" ng-click="removeFromCart(item.product.productId)">
                        <span class="glyphicon glyphicon-remove"></span>remove</a></th>
                </tr>
                <tr>
                	<th></th>
                    <th>Total Items:</th>
                    <th><font color="bue">{{calCount()}}</font></th>
                    <th>Grand Total</th>
                    <th><font color="red"><b>Rs. {{calGrandTotal()}}</b></font></th>
                    <th></th>
                </tr>
            </table>
			<a href="<spring:url value="/product/productList/all" />" class="btn btn-default">Continue Shopping</a>
            </div>
        </section>

    </div>
</div>




<script language="javascript" type="text/javascript">

var cartApp = angular.module ("cartApp", []);

cartApp.controller("cartCtrl", function ($scope, $http){

    $scope.refreshCart = function () {
        $http.get('/proj/rest/cart/'+$scope.cartId).success(function (data) {
           $scope.cart=data;
        });
    };

   $scope.clearCart = function () {
        $http.put('/proj/rest/cart/'+$scope.cartId).success(function (data) {
        	alert("Clearing cart");
            $scope.refreshCart();
    });
   };

    $scope.initCartId = function (cartId) {
        $scope.cartId = cartId;
        $scope.refreshCart(cartId);
    };

    $scope.addToCart = function addToCart(productId) {
        $http.put('/proj/rest/cart/add/'+productId).success(function () {
            alert("Product successfully added to the cart!")
        });
    };

    $scope.removeFromCart = function (productId) {
        $http.put('/proj/rest/cart/remove/'+productId).success(function (data) {
        	alert("Product successfully removed from the cart!")
            $scope.refreshCart();
        });
    };

    $scope.calGrandTotal = function () {
        var grandTotal=0;
        
        for (var i=0; i<$scope.cart.cartItems.length; i++) 
        {
            grandTotal+=$scope.cart.cartItems[i].totalPrice;
           
        }

        return grandTotal;
    };
    $scope.calCount = function () {
        var count=0;
        
        for (var i=0; i<$scope.cart.cartItems.length; i++) 
        {
            count+=$scope.cart.cartItems[i].quantity;
           
        }

        return count;
    };
   
});



</script>






<%@include file="/WEB-INF/views/template/footer.jsp" %>