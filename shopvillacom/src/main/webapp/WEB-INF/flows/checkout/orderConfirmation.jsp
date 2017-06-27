<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="now" class="java.util.Date" />
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <title>shopping palace</title>
    <!-- BOOTSTRAP CORE STYLE  -->
    <link href="resources/css/bootstrap.css" rel="stylesheet" />
	  <!-- CUSTOM STYLE  -->
    <link href="resources/css/custom-style.css" rel="stylesheet" />
    <!-- GOOGLE FONTS -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css' />


</head>
<body>
 <div class="container text-center">
  
    <h1>ORDER RECEIPT</h1>      
    </div>
 
 <div class="container">
     

     <div class="row pad-top-botm ">
         <div class="col-lg-6 col-md-6 col-sm-6 ">
            <img src="<c:url value="/resources/images/M.jpg" />" style="padding-bottom:20px;" /> 
         </div>
          <div class="col-lg-6 col-md-6 col-sm-6">
            
               <strong>KYARA house of fashion</strong>
              <br />
                  <i>Address :</i> 245/908 , Bandra Lane,
              <br />
                  Forth Street , Mumbai,
              <br />
                 India
               <h4>  <strong>Shipping Date: </strong></h4> <fmt:formatDate type="date" value="${now}"/>
        <br />
         </div>
     </div>
     <div  class="row text-center contact-info">
         <div class="col-lg-12 col-md-12 col-sm-12">
             <hr />
             <span>
                 <strong>Email : </strong>  info@yourdomain.com 
             </span>
             <span>
                 <strong>Call : </strong>  +95 - 890- 789- 9087 
             </span>
              <span>
                 <strong>Fax : </strong>  +012340-908- 890 
             </span>
             
             <hr />
         </div>
     </div>

           <div  class="row pad-top-botm client-info">
         <div class="col-lg-6 col-md-6 col-sm-6">
            <form:form commandName="order" >

            <h4>  <strong>shipping address</strong></h4>
              <br />
                  <b>street name :</b>  ${order.cart.customer.shippingAddress.streetName}
              <br />
               <b>Apartment number :</b>${order.cart.customer.shippingAddress.apartmentNumber}
               <br />
               <b>city :</b>${order.cart.customer.shippingAddress.city}
                 <br />
                 <b>state:</b>${order.cart.customer.shippingAddress.state}
                 <br />
                <b>country :</b>${order.cart.customer.shippingAddress.country}
                    <br />
                <b>zipcode :</b> ${order.cart.customer.shippingAddress.zipCode}                        
                      </div>       
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                       <h4>  <strong>Billing Address </strong></h4>
                                       <br />
                                     <b>street name :</b>   ${order.cart.customer.billingAddress.streetName}
                                   <br />
               <b>Apartment number :</b> ${order.cart.customer.billingAddress.apartmentNumber}
                  <br />
               <b>city :</b>${order.cart.customer.billingAddress.city} 
               
                  <br />
                 <b>state:</b>${order.cart.customer.billingAddress.state}                 
                       <br />
                <b>country :</b>${order.cart.customer.billingAddress.country}
                 <br />
                <b>zipcode :</b>${order.cart.customer.billingAddress.zipCode}
                                    </div>  
                                </div>
                        <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12">
                                <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">

                                <thead>
                                <tr>
                                    <th>Product</th>
                                    <th>Price</th>
                                    <th>each price</th>
                                    <th>total sub price</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="cartItem" items="${order.cart.cartItems}" >
                                    <tr>
                                        <td >${cartItem.product.productName}</td>
                                        <td >${cartItem.quantity}</td>
                                        <td >${cartItem.product.productPrice}</td>
                                        <td >${cartItem.totalPrice}</td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        
                        </div>
                         <hr />
                           <div class="ttl-amts">
                           <h5>  Total Amount : <strong>Rs. ${order.cart.grandTotal}</strong></h5>
             </div>
                <hr />
              <div class="ttl-amts">
                  <h4> <strong>Bill Amount :Rs. ${order.cart.grandTotal} </strong> </h4>
             </div>
         </div>
     </div>
      <div class="row">
         <div class="col-lg-12 col-md-12 col-sm-12">
            <strong> Important: </strong>
             <ol>
                  <li>
                    This is an electronic generated invoice so doesn't require any signature.

                 </li>
                 <li>
                     Please read all terms and polices on  www.yourdomaon.com for returns, replacement and other issues.

                 </li>
             </ol>
             </div>
         </div>
                           
                                  
                       <div class="row pad-top-botm">
         <div class="col-lg-12 col-md-12 col-sm-12">
             <hr />

                        <button class="btn btn-primary btn-lg" name="_eventId_backToCollectShippingDetail">Back</button>
                        <input type="submit" value="Submit Order" class="btn btn-success btn-lg"
                               name="_eventId_orderConfirmed"/>
                        <button class="btn btn-danger btn-lg" name="_eventId_cancel">Cancel</button>
                    </div>
                </form:form>

            </div>
        </div>


        
