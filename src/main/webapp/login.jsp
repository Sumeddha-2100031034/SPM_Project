<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://java.sun.com/jsf/facelets"
      xmlns:f="http://java.sun.com/jsf/core"
      xmlns:h="http://java.sun.com/jsf/html">
      <head>
      
      <style>
      
        * {
	box-sizing: border-box;
}

body {
	margin: 0;
	padding: 0;
	font-family: 'Verdana', sans-serif;
}

.mynavbar {
	overflow: hidden;
	width: 100%;
	background-color: transparent;
	color: #ecf0f1;
	padding: 0 40px;
}

.mynavbar-left {
	overflow: hidden;
	float: left;
}

.mynavbar-right {
	overflow: hidden;
	float: right;
	
}

.mynavbar-right ul {
	padding: 0;
	margin: 0;
	list-style-type: none;
	font-size:1.3rem;
}

.mynavbar-right ul li {
	float: left;
}

.mynavbar-right ul li a {
	display: inline-block;
	padding: 35px 30px;
	color: inherit;
	background-color: transparent;
	text-decoration: none;
	-webkit-transition: .3s;
	-moz-transition: .3s;
	transition: .3s;
}

.mynavbar-right ul li a:hover {
	color: #8aacbd;
}

/* menu dropdown akan muncul setelah di hover */
.mynavbar-right ul li:hover ul {
	display: block;
}

/* css untuk dropdown */
.mynavbar-right ul li ul {
	position: absolute;
	background: black;
	border-top: 1px solid #2c3e50;
	display: none;
}

.mynavbar-right ul li ul li {
	float: none;
}

.mynavbar-right ul li ul li a {
	padding: 20px;
}
      
      
      body {
  background-color: transparent;
  background-image: url("https://tortoiseandharesoftware.com/wp-content/uploads/2018/11/qtq80-AZfgQz-768x512.jpeg");
   background-size: cover;
   width: 100%;
}

.login-page {
  width: 400px;
  padding: 10% 0 0;
  margin: auto;
  background-color: transparent;
  border-radius: 10px;
  box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.2);
}

.avatar {
  width: 100%;
  text-align: center;
  margin-bottom: 20px;
}

.avatar img {
  width: 100px;
  height: 100px;
  border-radius: 50%;
}

.form {
  position: relative;
  z-index: 1;
  max-width: 360px;
  margin: 0 auto 75px;
  padding: 45px;
  text-align: center;
  background-color: rgba(255, 255, 255, 0.7);
  border-radius: 20px;
}

.form input[type="text"],
.form input[type="password"] {
  font-family: 'Roboto', sans-serif;
  outline: none;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
  border-radius: 20px;
  background-color: rgba(255, 255, 255, 0.7);
}

.form button {
  font-family: 'Roboto', sans-serif;
  text-transform: uppercase;
  outline: none;
  background-color: #2196F3;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3s ease;
  transition: all 0.3s ease;
  cursor: pointer;
  border-radius: 20px;
}

.form button:hover,
.form button:active,
.form button:focus {
  background-color: #1976D2;
}

.form h2 {
  color: #333333;
  font-size: 28px;
  margin: 0 0 30px;
}

.form p.message {
  color: #666666;
  font-size: 14px;
  margin-top: 15px;
}

.form p.message a {
  color: #2196F3;
  text-decoration: none;
}

.form p.message a:hover {
  text-decoration: underline;
}
      
.home_link{
text-decoration: none;
color:white;
}
    
      </style>
      
      </head>
      
      <body>
      
      <!-- partial:index.partial.html -->
<html>
  <head>
    <title>Student Login Page</title>
  </head>
  <body>
  
  <html lang="en">
<head>
	<meta charset="UTF-8"></meta>
	<title>Navbar with dropdown</title>
</head>
<body>
	
<div class="mynavbar">
	<div class="mynavbar-left">
		<a href="home.xhtml" class="home_link"><h1>MSM</h1></a>
	</div>
	<div class="mynavbar-right">
		<ul>
			<li><a href="#">Student</a>
			<ul>
					<li><a href="login.xhtml">Student Login</a></li>
					<li><a href="branches.xhtml">Academics</a></li>
				</ul>
			
			</li>
			
			<li><a href="visitors.xhtml">Visitors</a></li>

		</ul>
	</div>
</div>
	
</body>
</html>

<div class="login-page">
      <div class="avatar">
        <img src="https://cdn.pixabay.com/photo/2017/06/22/02/16/computer-icon-2429310_960_720.png" alt="Avatar"></img>
      </div>
      <div class="form">
        <h2>Student Login</h2>
        <form action="open.xhtml">
          <input type="text" placeholder="Enter Id no:" name="uname"></input>
          <input type="password" placeholder="Password" name="pwd"></input>
          <button name="check" type="submit">Log in</button>
        </form>
        <p class="message">Forgot your password? <a href="#">Click here to reset it</a></p>
      </div>
    </div>
  </body>
</html>
      
      </body>
</html>