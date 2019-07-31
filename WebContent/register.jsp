<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>register</title>
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
		padding: 40px;
		transition: 1s;
		top: -800px;
		animation-name: drop;
		animation-duration: 2s;
		animation-fill-mode: forwards;
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

@keyframes drop{
	0% { opacity: 0; }
	70% { transform:translateY(800px); opacity: 1; }
	100% { transform:translateY(770px);opacity: 1; }
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
			
				<h2>Register</h2>
				<hr><br>
				<form action="Register" method="post">
			        <div class="form-group">
			        <input type="text" class="form-control" id="cid" placeholder="college id" name="cid" required> 
			        </div>

			        <div class="form-group">
			        <input type="email" class="form-control" id="email" placeholder="email" name="email" required>
			        </div>
			         
			        <div class="form-group">
			        <input type="text" class="form-control" id="dname" placeholder="name" name="dname" required>
			        </div>
			         
			        
			        <div class="form-group">
			        <!-- <input type="text" class="form-control" id="batch" placeholder="batch" name="batch" required> -->
			        	<select class="form-control" id="batch" name="batch" required>
						    <option value="2018">2018</option>
						    <option value="2017">2017</option>
						    <option value="2016">2016</option>
						    <option value="2015">2015</option>
						    <option value="2014">2014</option>
						    <option value="2013">2013</option>
						    <option value="2012">2012</option>
						    <option value="2011">2011</option>
						    <option value="2010">2010</option>
						    <option value="2009">2009</option>
						    <option value="2008">2008</option>
						    <option value="2007">2007</option>
						    <option value="2006">2006</option>
						    <option value="2005">2005</option>
						    <option value="2004">2004</option>
						    <option value="2003">2003</option>
						    <option value="2002">2002</option>
						    <option value="2001">2001</option>
						    <option value="2000">2000</option>
						    <option value="1999">1999</option>
						    <option value="1998">1998</option>
						    <option value="1997">1997</option>
						    <option value="1996">1996</option>
						    <option value="1995">1995</option>
						    <option value="1994">1994</option>
						    <option value="1993">1993</option>
						    <option value="1992">1992</option>
						    <option value="1991">1991</option>
						    <option value="1990">1990</option>    
					  </select>
			        </div>

			        <div class="form-group">
			        <input type="password" class="form-control" id="pwd" placeholder="password" name="pwd" required>
			        </div>
			        <button type="submit" class="btn btn-outline-success">Register</button>
		      	</form> 

		</div>

		<div class="col-sm-4">
			
		</div>

	</div>
</div>
</div>
</body>
</html>