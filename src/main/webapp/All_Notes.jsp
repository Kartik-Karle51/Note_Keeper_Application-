
<%@page import="org.hibernate.internal.build.AllowSysOut,com.entities.Note"%>
<%@page import="org.hibernate.Session,org.hibernate.query.Query,com.helper.FactoryProvider"%>

<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Notes</title>
<%@include file="All_bootstrap.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="Navbar.jsp"%>

		<h1 class="text-uppercase text-center">All Notes :</h1>


		<div class="row">
			<div class="col-12">
				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for (Note n : list) {
				%>

				<div class="card mt-4 shadow">
				
					<img src="img/writing.png" class="card-img-top m-3 mx-auto"
						style="width: 6rem;">
					<div class="card-body px-5" style="text-align:justify;">
						<h5 class="card-title"><%=n.getTitle()%></h5>
						<p class="card-text"><%=n.getContent()%></p>
						<p class="card-text text-success"><b><%=n.getAddeddate()%></b></p>

						<div class="container text-center mt-3">
							<a href="DeleteServlet?note_id=<%= n.getId() %>" class="btn btn-danger">Delete</a><!-- Simply we are passing note id to the another servlet -->
							 <a href="edit.jsp?note_id=<%= n.getId() %>"class="btn btn-primary">Update</a>
						</div>
					</div>
				</div>
			
				<%
				}
				s.close();
				%>
					<br><br><br>
			</div>
		</div>

	</div>
</body>
</html>