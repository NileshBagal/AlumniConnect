<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>AlumniPortal</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> 
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
  
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
<!--
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.5.9/css/mdb.min.css" rel="stylesheet"> -->
<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Passion+One" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Bree+Serif" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=PT+Sans" rel="stylesheet">
 <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
 
 <link rel="icon" type="image/x-icon" href="favicon.ico" />
 
  <style type="text/css">
    .bg { 
    background-image: url('alumni.jpeg');
    height: 90%;

    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
      display: flex;
  justify-content: center;
  align-items: center;
}

body, html {
    height: 100%;
    font-family: 'Roboto Condensed', sans-serif;
    font-size: 18px;
    background-color: white;
}

.form-control1{
  width: 320px;
}

#txtarea{
  height: 100px;
}

.mydiv{
  height: 320px;
  width: 280px;
  background-color: white;
  border-radius: 2px;
    padding: 20px;
    box-shadow: 2px 3px 4px 2px #888888;
}

#suggestdiv{
  margin-left: 60px;
}

@media (max-width: 1026px) {
        #test {
            display: none;
        }
        #suggestdiv{
          margin: 0;
        }
    }

    #test{
      animation-name: login;
      animation-duration: 2s;
      animation-fill-mode: forwards;
      animation-timing-function: linear;
    }

    /*@keyframes login{
      0% { right: -170px;visibility: hidden; }
      80% { right: 2px;visibility:visible;  }
      100% { right: -10px;visibility:visible; }
    }*/

    .commentbox{
      box-shadow: 2px 5px 8px 2px #888888;
    }

	#panel{
	display:none;
	}
	
	
	.myhr {
    height: 12px;
    border: 0;
    box-shadow: inset 0 12px 12px -12px rgba(0, 0, 0, 0.5);
}

.nav-item
{
	font-size:15px;
}

#panel123 {
    text-align: center;
    background-color: white;
    padding: 20px;
    display: none;
}


.zoom:hover {
    transform: scale(1.06); /* (150% zoom - Note: if the zoom is too large, it will go outside of the viewport) */
}

.zoom1:hover {
    transform: scale(1.3); /* (150% zoom - Note: if the zoom is too large, it will go outside of the viewport) */
}


#myflip3{

}

#mypanel3{
	padding: 20px;
    display: none;
}
	
	
	

  </style>


  <script type="text/javascript">
  
  
  
  $(document).ready(function(){
	    $("#flip123").click(function(){
	        $("#panel123").slideToggle("slow");
	    });
	});
  
  
    $(function(){
    var current = location.pathname;
    $('#nav li a').each(function(){
        var $this = $(this);
        // if the current path is like this link, make it active
        if($this.attr('href').indexOf(current) !== -1){
            $this.addClass('active');
        }
    })
});
    
    $(document).ready(function(){
        $("#flip").click(function(){
            $("#panel").slideToggle("slow");
        });
    });
    
    
    
    
    $(document).ready(function(){
        $("#myflip3").click(function(){
            $("#mypanel3").slideToggle("slow");
        });
    });
    
    

    /*$(document).ready(function(){		//add year
        $("#changeyr").click(function(){
            var x = $("#newyear").val();
            $("#sel2").prepend("<option>" + x + "</option>");
        });
    });*/
    
  </script>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">

  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  
  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
    <a class="navbar-brand" href="index.jsp" style="font-family: 'Bree Serif', serif;"><b>PICT ALUMNI</b></a>
    
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active ml-5">
        <a class="nav-link" href="index.jsp" >HOME <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item ml-5">
        <a class="nav-link" href="years.jsp">ALUMNI</a>
      </li>

      <li class="nav-item ml-5">
        <a class="nav-link" href="gallery.jsp ">GALLERY</a>
      </li>

      <li class="nav-item dropdown nav-item ml-5">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        MORE
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="events.jsp">EVENTS</a>
        <a class="dropdown-item" href="aboutus.jsp">ABOUT US</a>
      </div>
    </li>

    <!--EXTRA shown if logged in and admin

    EXTRA-->
    
    <%
    
    String s= (String)session.getAttribute("id"); %>
    
    <% if(s==null){  %>    
    	
    
    <% }else{ %>
    
    
    <% 
      if(s.equals("1")){  %>
      	 <li class="nav-item ml-5" style="color:white;">
        <a class="nav-link" href="adminset.jsp ">ADMIN SETTINGS</a>
      </li>
      <% } else{  %>
      	
      		<li class="nav-item ml-5" style="color:white;">
        		<a class="nav-link" href="userinfo.jsp?userid=<%= s %>">PROFILE</a>
      		</li>
      	
      <% } %>
    
    
    	<li class="nav-item ml-5">
    <form action="Logout" method="post">
        <button type="submit" class="nav-link btn btn-light btn-sm" style="border-radius:10px;">LOGOUT	 <i class="fa fa-sign-out"></i></button>
    </form>
      </li>
      
      
      
    <% } %>
    
    </ul>
 
  </div>
</nav>



