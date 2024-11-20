package com.Servlets;

import java.io.IOException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DeleteServlet() {
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//Here We are passing Note Id from all notes that is href="DeleteServlet?note_id=<%= n.getId() %>
			int note_Id=Integer.parseInt(request.getParameter("note_id").trim());
		
			Session session=FactoryProvider.getFactory().openSession();
			Transaction tsx=session.beginTransaction();
			Note noteId=(Note)session.get(Note.class,note_Id);
			session.delete(noteId);//It delete item from DB
			
			
			tsx.commit();
			session.close();
		
			response.sendRedirect("All_Notes.jsp");
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
