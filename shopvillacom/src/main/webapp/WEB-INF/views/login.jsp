<%@include file="/WEB-INF/views/template/header.jsp" %>

<!DOCTYPE html>
<html>
<style>
form {
    border: 3px solid #f1f1f1;
}

input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>
<body>

<h2>Login Form</h2>

<div class="imgcontainer">
    <img src="<c:url value="/resources/images/user.png" />"  alt="Avatar" class="avatar"  style="width:20%" >
  </div>
  <c:if test="${not empty msg}">
                <div class="msg">${msg}</div>
            </c:if>
  <form name="loginForm" action="<c:url value="/j_spring_security_check" />" method="post">
                <c:if test="${not empty error}">
                    <div class="error" style="color: #ff0000;">${error}</div>
                </c:if>
                <div class="container">
                    <label for="username"><b>Username </b></label>
                    <input type="text" id="username" name="username" />
                
                
                    <label for="password"><b>password</b></label>
                    <input type="password" id="password" name="password"  />
                
                <button type="submit"><b>Login</b></button>
                 <input type="checkbox" checked="checked"> Remember me
                </div>
                
                <div class="container" style="background-color:#f1f1f1">
   
                  <a href="<c:url value="/" />" class="cancelbtn"><font color="black"><b>Cancel</b></font></a>
                 
                </div>

               

                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            </form>

        </div>
    </div>
</div>

<%@include file="/WEB-INF/views/template/footer.jsp" %>
