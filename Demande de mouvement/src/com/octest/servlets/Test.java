package com.octest.servlets;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.octest.beans.Utilisateur;
import com.octest.dao.*;

/**
 * Servlet implementation class Test
 */
@WebServlet("/Test")
public class Test extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UtilisateurDao utilisateurDao;

    public void init() throws ServletException {
        DaoFactory daoFactory = DaoFactory.getInstance();
        this.utilisateurDao = daoFactory.getUtilisateurDao();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
		try {
			HttpSession session1 = request.getSession();
			int id1 = (int)session1.getAttribute("id");
        } catch (Exception e) {
        	this.getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
        	return;
        }	
        this.getServletContext().getRequestDispatcher("/WEB-INF/page1.jsp").forward(request, response);
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
    	
		try {
			HttpSession session1 = request.getSession();
			int id1 = (int)session1.getAttribute("id");
        } catch (Exception e) {
        	this.getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
        	return;
        }	
    	System.out.println("Je suis dans GoPost de test.java");
        Utilisateur utilisateur = new Utilisateur();
        utilisateur.setNom(request.getParameter("nom"));
        utilisateur.setPrenom(request.getParameter("prenom"));
        utilisateur.setCode(request.getParameter("code"));
        utilisateur.setMat(request.getParameter("mat"));
        utilisateur.setFonction(request.getParameter("fonction"));
        utilisateur.setEquipe(request.getParameter("equipe"));
        utilisateur.setUsername(request.getParameter("username"));
        utilisateur.setPassword(request.getParameter("password"));
     
        if (utilisateur.getNom()!=null && utilisateur.getPrenom()!=null && utilisateur.getUsername()!=null && utilisateur.getPassword()!=null)
        	utilisateurDao.ajouter(utilisateur);
        
        this.getServletContext().getRequestDispatcher("/WEB-INF/page1.jsp").forward(request, response);
    }
    
    

}