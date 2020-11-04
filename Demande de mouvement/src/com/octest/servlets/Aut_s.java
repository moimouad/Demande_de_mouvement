package com.octest.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.octest.dao.DaoFactory;
import com.octest.dao.UtilisateurDao;

/**
 * Servlet implementation class Aut_s
 */
@WebServlet("/Aut_s")
public class Aut_s extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UtilisateurDao utilisateurDao;

	   
    public void init() throws ServletException {
        DaoFactory daoFactory = DaoFactory.getInstance();
        this.utilisateurDao = daoFactory.getUtilisateurDao();
    }

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Aut_s() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session1 = request.getSession();
			int id1 = (int)session1.getAttribute("id");
        } catch (Exception e) {
        	this.getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);return;
        }		
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/aut_s.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			HttpSession session1 = request.getSession();
			int id1 = (int)session1.getAttribute("id");
        } catch (Exception e) {
        	this.getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);return;
        }	
		
		HttpSession session = request.getSession();
		int id = (int)session.getAttribute("id");
		String date = request.getParameter("date");
		String heure = request.getParameter("heure");
		String motif = request.getParameter("motif");
		utilisateurDao.new_aut_s(id, date, heure, motif);
		this.getServletContext().getRequestDispatcher("/WEB-INF/aut_s.jsp").forward(request, response);
	}

}