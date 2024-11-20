<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
     <link href="css/style.css" rel="stylesheet">
<%@include file="All_bootstrap.jsp"%>
</head>
<body class="container">
<%@include file="Navbar.jsp"%>

	<br>
	<h1 class="text-center">Please fill your note details</h1>
	<br>

	<!--This is add form  -->
	<form action="SaveNoteServlet" method="Post">
  <div class="mb-3">
    <label for="title" class="form-label">Note Title</label>
    <input type="text" class="form-control" name="title"id="title" placeholder="Enter Your Note Title Here"required="required">
  </div>
  
  <div class="mb-2">
    <label for="content" class="form-label">Note Content</label>
   <textarea id="content"class="form-control" name="content" placeholder="Enter Your Content Here"style="min-height: 300px"required="required"></textarea>
  </div>
<div class="container text-center">
  <button type="submit" class="btn btn-primary">Submit</button>
  </div>
</form>

</body>
</html>