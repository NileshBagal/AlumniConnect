<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<jsp:include page="nav.jsp" />



<div class="jumbotron jumbotron-fluid bg">
  <div class="container ">

      <div class="row text-center">
  <div class='col-lg-4'>
  </div>

  <div class='col-lg-4' style="font-family: 'Passion One', cursive;margin-top: 70px;">
    <div class="btn-group"><a class="btn btn-outline-danger btn-lg" id="target1" href="years.jsp" style="font-size: 34px;">Checkout  Alumni</a></div>
  </div>
  <div class="col-lg-1"></div>
  <div class='col-lg-3' id="test">
    
    <% 
    String mssg = request.getParameter("val");
    response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
    
    if((String)session.getAttribute("id")!=null){  %>
    	
    <%}else{ %>
    
    
    <% if(mssg!=null && !mssg.equals("Successfully registered")){ %>
    <!-- alert -->
    <div class="alert alert-danger alert-dismissible" style="font-size:15px;">
  <button type="button" class="close" data-dismiss="alert">&times;</button>
  <strong>Oops!</strong> <%= mssg %>
</div>
    <% } %>
    
    <% if(mssg!=null && mssg.equals("Successfully registered")){ %>
    <!-- alert -->
    <div class="alert alert-success alert-dismissible" style="font-size:15px;">
  <button type="button" class="close" data-dismiss="alert">&times;</button>
  <strong>Great!</strong> <%= mssg %>
</div>
    <% } %>
    
    
    
    <div class="mydiv" style="margin-bottom:40px;">
      <label style="text-align: center;"><b>LOGIN HERE:</b></label>
      <hr><br>
      <form action="Login" method="post">
        <div class="form-group">
        <input type="text" class="form-control" placeholder="college id" name="cid" required>
        </div>
        <div class="form-group">
        <input type="password" class="form-control" id="pwd" placeholder="password" name="pwd" required>
        </div>
        
        <button type="submit" class="btn btn-info">Login</button>
        <label class="ml-2">Or</label>
        <a type="submit" class="btn btn-danger ml-2" style="color: white;" href="register.jsp">Register</a>
      	<br>
      	<a href="forgotpassword.jsp" style="font-size:13px;">Forgot Password?</a>
      </form> 

    </div>
	
		<% } %>
	
  </div>
  </div>
</div>

</div>
<br>

<!-- 
<div class="row" style="margin: 0;"> 
  <div class="col-sm-4">
      <div class="card">
        <div class="card-header bg-danger" style="color: white;">Latest News</div>
        <div class="card-body"><br>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book...</div> 
        <div class="card-footer"><a href="#">more...</a></div>
      </div>    
  </div>

  <div class="col-sm-4">
      <div class="card">
        <div class="card-header bg-danger" style="color: white;">Find alumni</div>
        <div class="card-body"><br>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book...</div> 
        <div class="card-footer"><a href="#">more...</a></div>
      </div>    
  </div>

  <div class="col-sm-4">
      <div class="card">
        <div class="card-header bg-danger" style="color: white;">Latest Events</div>
        <div class="card-body"><br>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book...</div> 
        <div class="card-footer"><a href="#">more...</a></div>
      </div>    
  </div>
</div>
 -->
<hr><br><br>

<div class="container commentbox" id="suggestdiv" style="background-color: white;padding: 30px;">
    
  <div class="row">
    <div class="col-sm-4">  
  
      <div style="background-color: #DCDCDC;height: 300px;">
		<!-- <img src="regbg.jpg" style="height: 300px;width:400px;border-radius:6px;"> -->
    </div>
  </div>

  <div class="col-sm-1">
    
  </div>

  <div class="col-sm-7">
    <h3>Email us below</h3><hr>
    <br>
    <form action="suggestmail.jsp" method="post">
      <div class="form-group1">
      <label for="email">Email address:</label>
      <input type="email" class="form-control" id="email" name="email">
      </div>
      <div class="form-group1">
      <label for="txt">Comment:</label>
      <textarea class="form-control" id="txtarea" name="txta"></textarea>
      </div>
      <br>
      <button type="submit" class="btn btn-outline-primary">Submit</button>
  </form>  

  </div>

</div>
</div>

<br><br><hr>

<!-- Footer -->
<footer class="page-footer font-small special-color-dark pt-4">

    <!-- Footer Elements -->
    <div class="container">

      <a href="aboutus.jsp" class="btn btn-dark" style="float: right;">About Us</a>
      <!-- Social buttons -->
      <ul class="list-unstyled list-inline text-center">
        <li class="list-inline-item">
          <a class="btn-floating btn-fb mx-1">
            <i class="fa fa-facebook"> </i>
          </a>
        </li>
        <li class="list-inline-item">
          <a class="btn-floating btn-tw mx-1">
            <i class="fa fa-twitter"> </i>
          </a>
        </li>
        <li class="list-inline-item">
          <a class="btn-floating btn-gplus mx-1">
            <i class="fa fa-google-plus"> </i>
          </a>
        </li>
        <li class="list-inline-item">
          <a class="btn-floating btn-li mx-1">
            <i class="fa fa-linkedin"> </i>
          </a>
        </li>
        <li class="list-inline-item">
          <a class="btn-floating btn-dribbble mx-1">
            <i class="fa fa-dribbble"> </i>
          </a>
        </li>
      </ul>
      <!-- Social buttons -->

    </div>
    <!-- Footer Elements -->

    <!-- Copyright -->
    <div class="footer-copyright text-center py-3">© 2018 Copyright:
      <a href="http://localhost:8080/LoginSys/index.jsp">PictAlumni.com</a>
    </div>
    <!-- Copyright -->

  </footer>
  <!-- Footer -->

</body>
</html>
