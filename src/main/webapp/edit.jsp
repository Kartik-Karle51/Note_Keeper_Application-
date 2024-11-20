
    
    <%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Session,com.helper.FactoryProvider"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Your Note</title>
<%@include file="All_bootstrap.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="Navbar.jsp"%>
		<br>
		
		<%
		int note_Id=Integer.parseInt(request.getParameter("note_id").trim());
		Session s=FactoryProvider.getFactory().openSession();
		Note noteId=(Note)s.get(Note.class,note_Id);
		%>
		
		
		
	<h1 class="text-center">Please update your note</h1>
	<br>

	<!--This is add form  -->
	<form action="UpdateServlet" method="Post">
	<input type="text" value="<%=noteId.getId() %>"name="id" hidden/>
  <div class="mb-3">
    <label for="title" class="form-label">Note Title</label>
    <input type="text" class="form-control" name="title"id="title" placeholder="Enter Your Note Title Here"required="required"
    value="<%=noteId.getTitle() %>">
  </div>
  
  <div class="mb-2">
    <label for="content" class="form-label">Note Content</label>
   <textarea id="content"class="form-control" name="content" placeholder="Enter Your Content Here"style="min-height: 300px"required="required"><%=noteId.getContent() %>
   </textarea>
  </div>
<div class="container text-center">
  <button type="submit" class="btn btn-success">Save and Update</button>
  </div>
</form>
		</div>
</body>
</html>