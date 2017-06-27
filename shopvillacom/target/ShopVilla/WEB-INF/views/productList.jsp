<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<script>
$(document).ready(function(){
    var searchCondition = '${searchCondition}';

    $('.table').DataTable({
        "lengthMenu": [[1,2,5,10,-1], [1,2,5,10, "All"]],
        "oSearch": {"sSearch": searchCondition}
    });
});


</script>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h3>All Products</h3>

            <p class="lead">Products available now in Stock!</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
	            <tr class="bg-success">
    	            <th>Photo Thumb</th>
        	        <th>Product Name</th>
            	    <th>Category</th>
                	<th>Condition</th>
                	<th>Price (in Rs.)</th>
                	<th>Stock (in pcs)</th>
                	<th></th>
            	</tr>
            </thead>
            <c:forEach items="${products}" var="product" >
                <tr>
                	<c:if test="${product.productStatus=='active'}">   
						<th><img src="<c:url value="/resources/images/${product.productId}.jpg" /> " alt="image" style="width:100%"/></th>
						<th>${product.productName}</th>
						<th>${product.productCategory}</th>
						<th>${product.productCondition}</th>
						<th>${product.productPrice}</th>
						<th>${product.unitInStock}</th>
						<th><a href="<spring:url value="/product/viewProduct/${product.productId}" />"><span class="glyphicon glyphicon-info-sign"></span></a></th>
                    </c:if>
                </tr>
            </c:forEach>
        </table>

<%@include file="/WEB-INF/views/template/footer.jsp" %>
