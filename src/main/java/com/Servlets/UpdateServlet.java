package com.Servlets;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.hibernate.*;

import com.entities.Note;
import com.helper.FactoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;

public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UpdateServlet() {
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try {
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		int id=Integer.parseInt(request.getParameter("id"));
		
		
		Date d=new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String date=sdf.format(d);
        
        
		Session session=FactoryProvider.getFactory().openSession();
		Transaction tsx=session.beginTransaction();
		Note noteId=(Note)session.get(Note.class,id);
		
		
		//We can change the content with the help of setters
		noteId.setTitle(title);
		noteId.setContent(content);
		noteId.setAddeddate(date);
		
		
		tsx.commit();
		session.close();
		
		
		response.sendRedirect("All_Notes.jsp");
		
	}catch(Exception e) {
		e.printStackTrace();
		
	}
	}

}
