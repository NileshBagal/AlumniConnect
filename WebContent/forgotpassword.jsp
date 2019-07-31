<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>forgot password</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  
  <!-- Font Awesome
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">

<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.5.9/css/mdb.min.css" rel="stylesheet"> -->

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Passion+One" rel="stylesheet">

<style type="text/css">
	
	body, html {
    height: 100%;
    font-family: 'Roboto Condensed', sans-serif;
    font-size: 17px;
}

	.maindiv{
		margin-top: 20px;
		text-align: center;
		border-radius: 10px;
		padding: 40px;1
	}


	.bg { 
    background-image: url('regbg.jpg');
    height: 100%; 

    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
      display: flex;
  justify-content: center;
  align-items: center;
  box-shadow: 4px 5px 8px 4px #888888;
}

</style>

</head>

<body>
		
<div class="jumbotron jumbotron-fluid bg">
  <div class="container ">
	<div class="row">
		
		<div class="col-sm-4">
			
		</div>

		<div class="col-sm-4 maindiv" style="background-color: white;padding-top: 30px;">
			
				<h2>Forget Password</h2>
				<hr><br>
				<form action="forgetpasswordprocess.jsp" method="post">
			        <div class="form-group">
			        <input type="text" class="form-control" id="cid" placeholder="college id" name="cid" required> 
			        </div>

			        <div class="form-group">
			        <input type="email" class="form-control" id="email" placeholder="email" name="email" required>
			        </div>
			        
			        <button type="submit" class="btn btn-outline-success">Send</button>
		      	</form> 

		</div>

		<div class="col-sm-4">
			
		</div>

	</div>
</div>
</div>
</body>
</html>