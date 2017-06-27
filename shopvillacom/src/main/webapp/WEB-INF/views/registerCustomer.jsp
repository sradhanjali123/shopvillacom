<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
        <title> Registration Form</title>
        
    </head>
    <style>
    {
    padding: 0;
    margin: 0;
    border: 0;
}
body, html {
    color: #373C40;
    font-family: Verdana,Arial, Helvetica, sans-serif;
    height: 100%;
    background-color: #f0f0f0;
    margin:10px;
}
body {
    font-size: 70%;
}
p {
    padding: 7px 0 7px 0;
    font-weight: 500;
    font-size: 10pt;
}
a {
    color: #656565;
    text-decoration:none;
}
a:hover{
    color: #abda0f;
    text-decoration: none;
}
h1 {
    font-weight:200;
    color: #888888;
    font-size:16pt;
    background: transparent url(../img/h1.png) no-repeat center left;
    padding-left:33px;
    margin:7px 5px 8px 8px;
}
h4 {
    padding:1px;
    color: #ACACAC;
    font-size:9pt;
    font-weight:100;
    text-transform:uppercase;
}
form.register{
    width:800px;
    margin: 20px auto 0px auto;
    height:530px;
    background-color:#fff;
    padding:5px;
    -moz-border-radius:20px;
    -webkit-border-radius:20px;
}
form p{
    font-size: 8pt;
    clear:both;
    margin: 0;
    color:gray;
    padding:4px;
}
form.register fieldset.row1
{
    width:770px;
    padding:5px;
    float:left;
    border-top:1px solid #F5F5F5;
    margin-bottom:15px;
}
form.register fieldset.row1 label{
    width:140px;
    float: left;
    text-align: right;
    margin-right: 6px;
    margin-top:2px;
}
form.register fieldset.row2
{
    border-top:1px solid #F1F1F1;
    border-right:1px solid #F1F1F1;
    height:220px;
    padding:5px;
    float:left;
}
form.register fieldset.row3
{
    border-top:1px solid #F1F1F1;
    padding:5px;
    float:left;
    margin-bottom:15px;
    width:400px;
}
form.register fieldset.row4
{
    border-top:1px solid #F1F1F1;
    border-right:1px solid #F1F1F1;
    padding:5px;
    float:left;
    clear:both;
    width:500px;
}
form.register .infobox{
    float:right;
    margin-top:20px;
    border: 1px solid #F1F1F1;
    padding:5px;
    width:380px;
    height:98px;
    font-size:9px;
    background: #FDFEFA url(../img/bg_infobox.gif) repeat-x top left;
}
form.register legend
{
    color: #abda0f;
    padding:2px;
    margin-left: 14px;
    font-weight:bold;
    font-size: 14px;
    font-weight:100;
}
form.register label{
    color:#444;
    width:98px;
    float: left;
    text-align: right;
    margin-right: 6px;
    margin-top:2px;
}
form.register label.optional{
    float: left;
    text-align: right;
    margin-right: 6px;
    margin-top:2px;
    color: #A3A3A3;
}
form.register label.obinfo{
    float:right;
    padding:3px;
    font-style:italic;
}
form.register input{
    width: 140px;
    color: #505050;
    float: left;
    margin-right: 5px;
}
form.register input.long{
    width: 247px;
    color: #505050;
}
form.register input.short{
    width: 40px;
    color: #505050;
}
form.register input[type=radio]
{
    float:left;
    width:15px;
}
form.register label.gender{
    margin-top:-1px;
    margin-bottom:2px;
    width:34px;
    float:left;
    text-align:left;
    line-height:19px;
}
form.register input[type=text]
{
    border: 1px solid #E1E1E1;
    height: 18px;
}
form.register input[type=password]
{
    border: 1px solid #E1E1E1;
    height: 18px;
}
.button
{
    background: #abda0f url(../img/overlay.png) repeat-x;
    padding: 8px 10px 8px;
    color: #fff;
    text-decoration: none;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    -moz-box-shadow: 0 1px 3px rgba(0,0,0,0.5);
    -webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.5);
    text-shadow: 0 -1px 1px rgba(0,0,0,0.25);
    cursor: pointer;
    float:left;
    font-size:18px;
    margin:10px;
}
form.register input[type=text].year
{
    border: 1px solid #E1E1E1;
    height: 18px;
    width:30px;
}
form.register input[type=checkbox] {
    width:14px;
    margin-top:4px;
}
form.register select
{
    border: 1px solid #E1E1E1;
    width: 130px;
    float:left;
    margin-bottom:3px;
    color: #505050;
    margin-right:5px;
}
form.register select.date
{
    width: 40px;
}
input:focus, select:focus{
    background-color: #efffe0;
}
p.info{
    font-size:7pt;
    color: gray;
}
p.agreement{
    margin-left:15px;
}
p.agreement label{
    width:390px;
    text-align:left;
    margin-top:3px;
}



    
    </style>
    <body>    
         <form:form action="${pageContext.request.contextPath}/register" method="post" commandName="customer">
        
            <h1>Registration</h1>
            <fieldset class="row1">
                <legend><b>Account Details</b>
                </legend>
                <p>
                     <label for="email">Email</label><span style="color: #ff0000">${emailMsg}</span><form:errors
                path="customerEmail" cssStyle="color: #ff0000"/>
            <form:input path="customerEmail" id="email"  value="" pattern="[A-Za-z0-9_]{1,15}@[a-z]{1,15}.[a-z]{1,15}" placeholder="name@(a-z).com"  />
                    </p>
                <p>
                   <label for="password">Password</label><form:errors path="password" cssStyle="color: #ff0000"/>
            <form:password path="password" id="password" />
              <label class="obinfo">* obligatory fields
                    </label>
                </p>
                 <p>
                  <label for="username">Username</label><span style="color: #ff0000">${usernameMsg}</span><form:errors
                path="username" cssStyle="color: #ff0000"/>
            <form:input path="Username" id="username" pattern="[A-Za-z]{1,30}" placeholder="name(a-z)"/>
                    
                    <label class="obinfo">* obligatory fields
                    </label>
                </p>
            </fieldset>
            <fieldset class="row2">
                <legend><b>Personal Details(with billing address)</b>
                </legend>
                <p>
                   <label for="name">Name</label><form:errors path="customerName" cssStyle="color: #ff0000"/>
            <form:input path="customerName" id="name"  pattern="[A-Za-z\s]{1,30}+" placeholder="name(a-z)" />
                   
                </p>
                <p>
                    <label for="phone">Phone</label>
            <form:input path="customerPhone" id="phone"  pattern="[0-9]{1,30}" placeholder="number" maxlength="11" />
                    
                </p>
                <p>
                      <label for="billingApartmentNumber">Apartment Number</label>
            <form:input path="billingAddress.apartmentNumber" id="billingApartmentNumber" />
                    

                </p>
                
                <p>
                    <label for="billingStreet">Street Name</label>
            <form:input path="billingAddress.streetName" id="billingStreet"/>
                    
                </p>
                <p>
                   <label for="billingCity">City</label>
            <form:input path="billingAddress.city" id="billingCity" pattern="[A-Za-z\s]{1,30}+" placeholder="city(a-z)"/>
                    
                </p>
                 <p>
                  <label for="billingState">State</label>
            <form:input path="billingAddress.state" id="billingState" pattern="[A-Za-z\s]{1,30}+" placeholder="state(a-z)"/>
                    
                </p>
                <p>
                    <label for="billingCountry">Country</label>
            <form:input path="billingAddress.country" id="billingCountry" pattern="[A-Za-z\s]{1,30}+" placeholder="country(a-z)"/>
                </p>
                 <p>
                   <label for="billingZip">Zipcode</label>
            <form:input path="billingAddress.zipCode" id="billingZip"  pattern="[0-9]{1,30}" placeholder="number"/>
                </p>
                
            </fieldset>
            <fieldset class="row3">
                <legend><b>Further Information for shipping address</b>
                </legend>
                <p>
                     <label for="shippingStreet">Street Name</label>
            <form:input path="shippingAddress.streetName" id="shippingStreet" />
                </p>
                <p>
                    <label for="shippingApartmentNumber">Apartment Number</label>
            <form:input path="shippingAddress.apartmentNumber" id="shippingApartmentNumber" />
                </p>
                <p>
                    <label for="shippingCity">City</label>
            <form:input path="shippingAddress.city" id="shippingCity"  pattern="[A-Za-z\s]{1,30}+" placeholder="city(a-z)"/>
                </p>
                <p>
                    <label for="shippingState">State</label>
            <form:input path="shippingAddress.state" id="shippingState" pattern="[A-Za-z\s]{1,30}+" placeholder="state(a-z)"/>
                </p>
                <p>
                   <label for="shippingCountry">Country</label>
            <form:input path="shippingAddress.country" id="shippingCountry"  pattern="[A-Za-z\s]{1,30}+" placeholder="country(a-z)"/>
                </p>
                <p>
                   <label for="shippingZip">Zipcode</label>
            <form:input path="shippingAddress.zipCode" id="shippingZip" pattern="[0-9]{1,30}" placeholder="number"/>
                </p>
               
                   
            
        </div>
                </p>
                <p>
                    <label>Children *
                    </label>
                    <label class="checkbox-inline"><form:radiobutton path="children" id="children"
                                                             value="yes" />yes</label>
            <label class="checkbox-inline"><form:radiobutton path="children" id="children"
                                                             value="no" />no</label>
                </p>
                <div class="infobox"><h4>Helpful Information</h4>
                    <p>Here comes some explaining text, sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                </div>
            </fieldset>
            <fieldset class="row4">
                <legend><b>Terms and Mailing</b>
                </legend>
                <p class="agreement">
                    <input type="checkbox" value=""/>
                    <label>*  I accept the <a href="#">Terms and Conditions</a></label>
                </p>
                <p class="agreement">
                    <input type="checkbox" value=""/>
                    <label>I want to receive personalized offers by your site</label>
                </p>
                <p class="agreement">
                    <input type="checkbox" value=""/>
                    <label>Allow partners to send me personalized offers and related services</label>
                </p>
            </fieldset>
            <div><button class="button">Register &raquo;</button></div>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <div><a href="<c:url value="/" />"><button class="button">Cancel &raquo;</button></a></div>
        </form>
    </body>
</html>

</form:form>



      
