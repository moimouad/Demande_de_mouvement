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

/**
 * Servlet implementation class Mes_dem
 */
@WebServlet("/Mes_dem")
public class Mes_dem extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UtilisateurDao utilisateurDao;

    public void init() throws ServletException {
        DaoFactory daoFactory = DaoFactory.getInstance();
        this.utilisateurDao = daoFactory.getUtilisateurDao();
    }
       

    public Mes_dem() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session1 = request.getSession();
			int id1 = (int)session1.getAttribute("id");
        } catch (Exception e) {
        	this.getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);return;
        }	
		
		HttpSession session = request.getSession();
		int id_s = (int)session.getAttribute("id");
        request.setAttribute("demandes", utilisateurDao.mes_demandes(id_s));
        this.getServletContext().getRequestDispatcher("/WEB-INF/mes_dem.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}