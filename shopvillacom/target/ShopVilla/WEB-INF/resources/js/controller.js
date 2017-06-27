/**
 * Created by Le on 1/11/2016.
 */

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

