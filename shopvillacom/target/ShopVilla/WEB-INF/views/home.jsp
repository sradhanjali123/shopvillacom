<%@include file="/WEB-INF/views/template/header.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<div class="container-fluid"></div>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
      <center>  <img src="resources/images/1.jpg" alt="images not found" height="450" width="900">
      </center>
      </div>

      <div class="item">
       <center>  <img src="resources/images/2.jpg" alt="images not found"  height="450" width="900">
      </center>
      </div>
    
      <div class="item">
        <center><img src="resources/images/3.jpg" alt="images not found" height="450" width="900">
      </center>
      </div>
      <div class="item">
       <center> <img src="resources/images/4.jpg" alt="images not found"  height="450" width="900">
      </center>
      </div>
</div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>


</body>
</html>

<br>
<br>
<%@include file="/WEB-INF/views/template/footer.jsp" %>