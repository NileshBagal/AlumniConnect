	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <jsp:include page="nav.jsp" />
    

<div class="container-fluid">
	<div align="center" class="jumbotron" style="padding: 15px;background-image: linear-gradient(MediumSpringGreen	, MediumSeaGreen);">
	  <h4 >ALUMNI</h4>
	  <p style="font-size: 16px;">Discover and find alumni's of PICT</p>
	</div>
</div>





<div class="container">
<br>



<label>Search by Name:</label>
<form class="form-inline" method="get" action="listname.jsp">
    <input class="form-control form-control1 mr-sm-2" name="thename" type="search" placeholder="Search by name" aria-label="Search" style="width: 80%;display:inline-block;" id="inputname">
	<br><br>
	<input type="submit" class="btn btn-success" value="Search" style="display:inline-block;">
</form>
<br>


<div style="width: 100%; height: 20px; border-bottom: 1px solid gray; text-align: center">
  <span style="font-size: 20px; background-color: #F3F5F6; padding: 0 10px;">
    Or
  </span>
</div>

<br>



<form action="lists.jsp" method="get">
<div class="row">

<div class="col-sm-5" style="color: gray;font-size: 17px;">
  <div class="form-group" style="width:110%;">
  <label for="sel1">Select Branch:</label>
  <select class="form-control" id="sel1" name="sel1">
    <option>All</option>
    <option>COMP</option>
    <option>IT</option>
    <option>ENTC</option>
  </select>
</div>

</div>

<div class="col-sm-2"></div>

<div class="col-sm-5" style="float:right;">

  <div class="form-group" style="width:110%;">
  <label for="sel1" style="color: gray;font-size: 17px;">Select Year:</label>
  <select class="form-control" id="sel2" name="sel2">
    <option>All</option>
    <option>2018</option>
    <option>2017</option>
    <option>2016</option>
    <option>2015</option>
    <option>2014</option>
    <option>2013</option>
    <option>2012</option>
    <option>2011</option>
    <option>2010</option>
    <option>2009</option>
    <option>2008</option>
    <option>2007</option>
    <option>2006</option>
    <option>2005</option>
    <option>2004</option>
    <option>2003</option>
    <option>2002</option>
    <option>2001</option>
    <option>2000</option>
    <option>1999</option>
    <option>1998</option>    
  </select>
</div>

</div>

</div>

<div class="row">

<!-- company -->
	<div class="col-sm-5" style="float:right;color: gray;font-size: 17px;">

  <div class="form-group" style="width:110%;">
  <label for="sel3">Select Company:</label>
  <select class="form-control" id="sel3" name="sel3">
    <option>All</option>
    <option>accenture</option>
    <option>barclays</option>
    <option>rakuten</option>
    <option>infosys</option>
    <option>teachforindia</option>
    <option>byjus</option>
    <option>tcs</option>
    <option>wipro</option>
    <option>metro</option>    
  </select>
</div>

</div>

<!-- end company -->
	
<div class="col-sm-2">
	
</div>	

<!-- lives -->

<div class="col-sm-5">
	
</div>	<!-- end lives -->

	
</div>

<input type="submit" name="submit" value="Search" class="btn btn-primary" style="margin-left:20px;padding:10px;">
</form>

<br>








</div>	


</body>
</html>
    