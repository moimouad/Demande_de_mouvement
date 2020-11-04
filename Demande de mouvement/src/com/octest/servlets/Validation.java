package com.octest.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.octest.beans.Demande;
import com.octest.beans.Utilisateur;
import com.octest.dao.DaoFactory;
import com.octest.dao.UtilisateurDao;

/**
 * Servlet implementation class Validation
 */
@WebServlet("/Validation")
public class Validation extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UtilisateurDao utilisateurDao;

    public void init() throws ServletException {
        DaoFactory daoFactory = DaoFactory.getInstance();
        this.utilisateurDao = daoFactory.getUtilisateurDao();
    }
       

    public Validation() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			HttpSession session1 = request.getSession();
			int id1 = (int)session1.getAttribute("id");
        } catch (Exception e) {
        	this.getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);return;
        }	
		
		int id_dem = Integer.parseInt(request.getParameter("id"));
		Demande demande = new Demande();
		Utilisateur utilisateur = new Utilisateur();
		Utilisateur permutant = new Utilisateur();
		
        demande = utilisateurDao.consulter(id_dem);
        utilisateur = utilisateurDao.getUser(demande.getId_source());
        permutant = utilisateurDao.getUser(demande.getId_perm());
        
        
        request.setAttribute("demande", demande);
        request.setAttribute("utilisateur", utilisateur);
        request.setAttribute("permutant", permutant);
        
        		
        
        this.getServletContext().getRequestDispatcher("/WEB-INF/validation.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			HttpSession session1 = request.getSession();
			int id1 = (int)session1.getAttribute("id");
        } catch (Exception e) {
        	this.getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);return;
        }	
		
		String dicision = request.getParameter("dicision");
		int id_dem = Integer.parseInt(request.getParameter("id_dem"));
		int id_user = Integer.parseInt(request.getParameter("id_user"));
		
		utilisateurDao.dicision(dicision, id_dem, id_user);
		this.getServletContext().getRequestDispatcher("/WEB-INF/reception.jsp").forward(request, response);
	}

}