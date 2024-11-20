package com.Servlets;

import java.awt.print.Printable;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.*;

import org.hibernate.*;

import com.entities.*;
import com.helper.FactoryProvider;

@WebServlet("/SaveNoteServlet")
public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			//Taking data from page
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			
			Date d=new Date();
	        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	        String date=sdf.format(d);
			
			Note note=new Note(title,content,date);
//			System.out.println(note.getId() +" , "+note.getTitle());
			
			
			//Hibernate save
			Session session=FactoryProvider.getFactory().openSession();
			Transaction tsx=session.beginTransaction();
			
			session.save(note);
			
			tsx.commit();
			session.close();
			
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			out.println("<h1 style='text-align:center'>Note is added successfully</h1>");
			out.println("<h1 style='text-align:center'><a href='All_Notes.jsp'>View All Notes</a></h1>");
		}catch(Exception e) {
			e.printStackTrace();
			}
	}


}
