<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Note Taker-Home Page</title>
     <link href="css/style.css" rel="stylesheet">
  <%@include file="All_bootstrap.jsp" %>
 
  </head>
  <body>
  
  
  <div class="container">
  
  <%@include file="Navbar.jsp"%> 
  <br>

<div class="card py-4 shadow">
					<img src="img/writing.png" class="img-fluid mx-auto mb-3"
						style="width: 300px;">
						<h1 class="text-primary text-uppercase text-center">Start Taking Your Notes</h1>
						<div class="container text-center mt-3">
						<a href="Add_Notes.jsp" class="btn btn-outline-primary">START</a>
						</div>
				</div>


  </div> 
  
  </body>
</html>