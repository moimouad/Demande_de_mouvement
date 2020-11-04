package com.octest.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.octest.beans.Utilisateur;
import com.octest.dao.DaoFactory;
import com.octest.dao.UtilisateurDao;


@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private UtilisateurDao utilisateurDao;

   
    public void init() throws ServletException {
        DaoFactory daoFactory = DaoFactory.getInstance();
        this.utilisateurDao = daoFactory.getUtilisateurDao();
    }

    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.invalidate();
		this.getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Utilisateur utilisateur = new Utilisateur();
		utilisateur = utilisateurDao.login((String)request.getParameter("username"),(String)request.getParameter("password"));

        if (utilisateur == null) {
        	request.setAttribute("msg", "Username ou Password incorrecte !");
        	this.getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
        }
        else {
        	 HttpSession session = request.getSession();

        	 session.setAttribute("id", utilisateur.getId());
        	 session.setAttribute("nom", utilisateur.getNom());
             session.setAttribute("prenom", utilisateur.getPrenom());
             
        	this.getServletContext().getRequestDispatcher("/mes_dem").forward(request, response);
    		
        }
        
	}

}
