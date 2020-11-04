package com.octest.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.octest.dao.DaoFactory;
import com.octest.dao.UtilisateurDao;


@WebServlet("/Gestion_user")
public class Gestion_user extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private UtilisateurDao utilisateurDao;

    public void init() throws ServletException {
        DaoFactory daoFactory = DaoFactory.getInstance();
        this.utilisateurDao = daoFactory.getUtilisateurDao();
    }
       
    public Gestion_user() {

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session1 = request.getSession();
			int id1 = (int)session1.getAttribute("id");
        } catch (Exception e) {
        	this.getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);return;
        }	
		this.getServletContext().getRequestDispatcher("/WEB-INF/gestion_user.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			HttpSession session1 = request.getSession();
			int id1 = (int)session1.getAttribute("id");
        } catch (Exception e) {
        	this.getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);return;
        }	
		HttpSession session = request.getSession();
		
		int id = (int)session.getAttribute("id");
		String username = request.getParameter("username") ;
		String password = request.getParameter("password") ;
		String code = request.getParameter("code") ;
		String mat = request.getParameter("mat") ;
		
		if (username != "") utilisateurDao.changer_username(id, username);
		if (password != "") utilisateurDao.changer_password(id, password);
		if (code != "") utilisateurDao.changer_code(id, code);
		if (mat != "") utilisateurDao.changer_mat(id, mat);
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/gestion_user.jsp").forward(request, response);
	}

}
