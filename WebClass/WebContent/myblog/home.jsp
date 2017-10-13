<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Welcome to Lim's Blog</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" 
    integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    
    <link rel= "stylesheet" type="text/css" href="/WebClass/css/sty.css">
</head>
<body>
	<!-- 메뉴바 -->
     <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
     <a class="navbar-brand" href="main.html">Home</a>
     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
       <span class="navbar-toggler-icon"></span>
     </button>
   
     <div class="collapse navbar-collapse" id="navbarSupportedContent">
       <ul class="navbar-nav mr-auto">
         <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
           <a class="nav-link" href="loginF.html">Vision <span class="sr-only">(current)</span></a>
         </li>
         <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
           <a class="nav-link" href="loginF.html">Interest</a>
         </li>
         <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
           <a class="nav-link" href="loginF.html">Heroes of the Storm</a>
         </li>
         <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
           <a class="nav-link" href="signIn.html">Register</a>
         </li>
       </ul>
       <% if(session.getAttribute("id") == null) { %>
       <form class="form-inline my-2 my-lg-0" id="loginForm" action="/WebClass/bloglogin" method="post">
         <input class="form-control mr-sm-2" type="text" placeholder="ID" aria-label="ID" id="id" name ="id" required>
         <input class="form-control mr-sm-2" type="password" placeholder="Password" aria-label="Password" id="pwd" name="pwd" required>
         <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Log In</button>
       </form>
       <% } else { %>
       <div class="nav-item dropdown">
	      <a class="nav-item nav-link dropdown-toggle mr-md-2" href="#" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    	임형준님
	      </a>
	      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="bd-versions">
	      	<form class="signout" action="/WebClass/bloglogout" method="post">
	      		<button type="submit" class="dropdown-item" >Sign out</button>
	      	</form>
	       	<div class="dropdown-divider"></div>
	      </div>
	    </div>
	    <% } %>
     </div>
   </nav>
    <div class="container">
       <h1>Hello, Bootstrap</h1>
       <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>
    </div>
    
    <!-- Modal 창 -->
    <div class="modal" id="myModal">
     <div class="modal-dialog" role="myModal">
       <div class="modal-content">
         <div class="modal-header">
           <h5 class="modal-title">로그인 결과</h5>
           <button type="button" class="close" data-dismiss="modal" aria-label="Close">
             <span aria-hidden="true">&times;</span>
           </button>
         </div>
         <div class="modal-body">
           <p></p>
         </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal" >Close</button>
         </div>
       </div>
     </div>
   </div>
    
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
   <script>
   <% if("error".equals(request.getAttribute("msg"))) { %>
	document.getElementById('id').value = <%= request.getAttribute("w_id") %>;
	document.getElementById('pwd').value = <%= request.getAttribute("w_pwd") %>;
   
   	var myModal = $('#myModal');
	myModal.find('.modal-title').text('Login Error');
	myModal.find('.modal-body').text('Invalid username or password');
	myModal.modal();
	<% } %>
   </script>
</body>
</html>