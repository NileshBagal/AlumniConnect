<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<jsp:include page="nav.jsp" />

<div class="container" style="font-size:16px;">

<div id="flip">Click to Upload Pictures</div>
<div id="panel">


<form name="frm" action="Upload.jsp" enctype="multipart/form-data" method="post">
 <input type="file" name="uProperty"/> <br>
 <input type="submit" name="goUpload" value="Upload" />
</form>

</div>

<hr>

<!-- add event -->
<div class="row">
	
	<div class="col-sm-4">
	<h5><!-- <i class="fa fa-calendar-o" style="margin-right:10px;"></i>  --><img src="calicon.png" style="height:30px;width:30px;">  Add Event</h5><br>
	<!-- pic,date,title,info,desc -->
	<form action="Events" method="post">
	<div class="form-group">
	<input type="text" name="title" placeholder="title" class="form-control form-control1"><br>
	<input type="date" name="date" class="form-control form-control1"><br>
	<input type="date" name="enddate" class="form-control form-control1"><br>
	<input type="text" name="topic" placeholder="topic" class="form-control form-control1"><br>
	<input type="text" name="venue" placeholder="venue" class="form-control form-control1"><br>
	<input type="text" name="time" placeholder="time" class="form-control form-control1"><br>
	<input type="text" name="brief" placeholder="footer" class="form-control form-control1"><br>
	<textarea name="info" placeholder="info" class="form-control form-control1" rows="15"></textarea><br>
	<input type="submit" name="submit" value="submit" class="btn btn-info form-control1"><br>
	</div>
	</form>
	</div>
	
	<div class="col-sm-1"></div>
	
	<div class="col-sm-2">
		
		<!-- 
		<input type="text" placeholder="add new year" id="newyear">
		<input type="button" class="btn btn-outline-warning" id="changeyr" value="add">
		 -->
		 
		<h5> <img src="delicon.png" style="height:40px;width:40px;"> Delete user</h5>
		<br>
		<form action="deleteauser.jsp" method="post">
			<input class="form-control" type="text" placeholder="cid of user" name="ucid">
			<br><input type="submit" class="btn btn-info btn-sm" value="Remove">
		</form>
		<br>
		
		<% if(request.getParameter("val")!=null){ %>
		<div class="alert alert-success alert-dismissible" style="font-size:15px;">
		  <button type="button" class="close" data-dismiss="alert">&times;</button>
		  <%= request.getParameter("val") %>
		</div>
		<% } %>
		
	</div>
	
	<div class="col-sm-1"></div>
	
	<div class="col-sm-4">
		<h5> <img src="sendicon.png" style="height:30px;width:30px;">  Send Email</h5><br>
		 <form action="dmail.jsp">
		 <div class="form-group">
				Subject:
				<input type="text" name="sub" placeholder="Enter Subject Line" class="form-control form-control1"><br/>
				Message Text:
				<textarea rows="6" cols="40" name="mess"class="form-control form-control1"></textarea><br/>
				<input type="submit" value="Send" class="btn btn-info">
				<input type="reset" value="Reset" class="btn btn-outline-info">
        </div>
        </form>
		
	</div>
	
</div>
</div>