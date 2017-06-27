<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<html>

<head><meta charset="utf-8">
<style type="text/css">

body

{

    font-family:Arial;

    font-size:12px;

}

.valid

{

    color:#000000;

}

.invalid

{

    color:#FF0000;

}

</style>
</head>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Add Product</h1>

            <p class="lead">Fill up details to add a product:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/addProduct" method="post" commandName="product" enctype="multipart/form-data">
        <div class="form-group">
            <label for="name">Name</label> <form:errors path="productName" cssStyle="color: #ff0000;" />
            <form:input path="productName" id="name" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="category">Category</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="jeans" />jeans</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="kurta" />kurta</label>
              <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="salwar" />salwar</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="ethenic wear" />ethenic wear</label>                                                                                              
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="gown" />gown</label>
           <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="saree" />saree</label>
          <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="anarkali" />anarkali</label>         
        </div>

        <div class="form-group">
            <label for="description">Description</label>
            <form:textarea path="productDescription" id="description" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="price">Price</label>  <form:errors path="productPrice" cssStyle="color: #ff0000;" />
            <form:input path="productPrice" id="price" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="condition">Condition</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition"
                                                             value="new" />New</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition"
                                                             value="used" />Used</label>
        </div>

        <div class="form-group">
            <label for="status">Status</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status"
                                                             value="active" />Active</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status"
                                                             value="inactive" />Inactive</label>
        </div>

        <div class="form-group">
            <label for="unitInStock">Unit In Stock</label>  <form:errors path="unitInStock"
                                                                         cssStyle="color: #ff0000;" />
            <form:input path="unitInStock" id="unitInStock" class="form-Control" type="number" required="true"  min="1" oninput="validate(this)"/>
        </div>

        <div class="form-group">
            <label for="manufacturer">Manufacturer/brand</label>
            <form:input path="productManufacturer" id="manufacturer" class="form-Control"/>
        </div>

        <div class="form-group">
            <label class="control-label" for="productImage">Upload Picture</label>
            <form:input id="productImage" path="productImage" type="file" class="form:input-large" />
        </div>

        <br><br>
        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Cancel</a>
        </form:form>
<div id="validateMsg"></div>

<div id="validity"></div>

<script>

function validate(input) {

    

        input.setCustomValidity('');

    }

    //document.getElementById('validateMsg').innerHTML = 'Validation Message: "' + input.validationMessage + '"';

    //document.getElementById('validity').innerHTML = 'checkValidity function output: "' + input.checkValidity() + '"';



</script>
        <%@include file="/WEB-INF/views/template/footer.jsp" %>
