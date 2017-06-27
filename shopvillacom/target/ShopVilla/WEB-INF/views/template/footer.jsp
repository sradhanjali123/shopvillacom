<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <!--<meta charset="utf-8">-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-social/4.10.1/bootstrap-social.css" rel="stylesheet" >
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <!-- Angular JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js" > </script>
    <script type="text/javascript" src="<c:url value="/resources/js/controller.js" />"></script>
    

    <%--Jquery--%>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.4.min.js"></script>

    <%--Data Table--%>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">

    <!-- Carousel CSS -->
    <link href="<c:url value="/resources/css/carousel.css" />" rel="stylesheet">

    <!-- Main CSS -->
    <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">

    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-social/4.10.1/bootstrap-social.css" rel="stylesheet" >
<style>
footer{
	background-color: #222328;
}

footer ul{
	list-style: none;
	padding: 0px;
}

footer li{
	display: inline;
}


footer a:link {
    text-decoration: none;
}

footer a:hover{
	text-decoration: none;
}

footer a:visited {
    text-decoration: none;

}

.first-half a{
	color: white;
	font-size: 12px;
	font-family: "Montserrat"
}

.footnav{
	margin-left: 15px;
	margin-right: 15px;
}

footer .fa{
	font-size: 20px;
}

.fa-facebook{
	margin-right: 20px;
	margin-left: 20px;
}
.fa-youtube{
	margin-right: 20px;
	margin-left: 20px;
}
.fa-twitter{
	margin-right: 20px;
	margin-left: 20px;
}
.first-half{
	padding-top: 60px;
	padding-bottom: 60px;
	border-bottom: 1px solid #2d2e33;
}

.second-half{
	padding-top: 55px;
	padding-bottom: 55px;
}

.second-half p{
	color: #7f7f81;
	font-family: 'Crimson Text', serif;
	font-size: 16px;
}


.second-half a{
	color: #7f7f81;
	font-size: 12px;
	font-family: "Montserrat";
	font-weight: bold;

}


footer table{
	float: right;
}

.second-half ul{
	float: right;
	padding-top: 10px;
}

.middle-padding{
	padding-left: 30px;
}


@media only screen and (max-width: 1020px) {




}



@media screen and (max-width: 768px){

.footer-logo{
	float: none;
	margin-left: auto;
	margin-right: auto;
}

footer table{
	float: none;
	margin-left: auto;
	margin-right: auto;
}


.footer-navigation {
	margin-top: 20px;
	margin-bottom: 30px;
}

.second-half ul{
	float: none;
	margin-left: auto;
	margin-right: auto;
	margin-top: 30px;
}

.second-half p {
	text-align: center;
}

}




@media only screen and (max-width:455px){

 footer li{
 	display: block;
 }

.middle-padding{
	padding: 0px;
}

}
</style>
</head>
<body>
<footer>
  <div class="container first-half">
  <div class="row">

<div id="custom-search-input">
  <ul>
 <li><a href="#">To keep you in the loop of our latest news, register now for our email newsletter.</a></li>
</ul>
<div class="input-group col-md-6">
<input  type="text" class="form-control input-lg" placeholder="Your email address.." />
<span class="input-group-btn">
<button class="btn btn-primary btn-lg" type="button">search</button>
</span>
</div>
<hr>
  <div class="col-sm-8 text-center">
      <ul class="footer-navigation">
        <li class="footnav"><a href="#">HOME</a></li>
        <li class="footnav"><a href="#">SHOP</a></li>
        <li class="footnav"><a href="#">TEAM</a></li>
        <li class="footnav"><a href="#">ABOUT US</a></li>
        <li class="footnav"><a href="#">CONTACTS</a></li>
      </ul>

    </div>


    <div class="col-sm-2 text-center">
      <table>
        <tr>
		  <td>
            <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
          </td>
		 <td>
            <a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
          </td>
          <td>
           <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
          </td>
  		 <td>
		 <a href="https://www.ShopVilla.com"><i class="fa fa-3x fa-fw fa-instagram text-inverse"></i></a>
		 </td>
		 <td>
		 <a href="https://www.ShopVilla.com"><i class="fa fa-3x fa-fw fa-youtube text-inverse"></i></a>
         </td>
           
		  </tr>
      </table>

    </div>

  </div>

</div>
<div class="container second-half">
  <div class="row">
    <div class="col-sm-6">
      <p><em>Follow us and use the following social media platforms, to get in contact with us and to share your passion for the brand, products and services of ShopVilla.

</em></p>
    </div>
    <div class="col-sm-6 text-center">
       <ul>
        <li><a href="#">PRIVACY POLICY</a></li>
        <li class="middle-padding"><a href="#">TERMS AND CONDITIONS</a></li>
      </ul>
    </div>
  </div>
<ul>
 <li><a href="#">© Copyrights Reserved. ShopVilla India Private Limited 2016-2017</a></li>
</ul>
  </div>
  
</footer>
</body>
</html>