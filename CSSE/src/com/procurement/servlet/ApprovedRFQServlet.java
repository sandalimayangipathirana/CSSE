package com.procurement.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.procurement.model.*;

/**
 * Servlet implementation class ApprovedRFQServlet
 */
@WebServlet("/ApprovedRFQServlet")
public class ApprovedRFQServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Rfqdao rfqdao = new Rfqdao();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApprovedRFQServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String action = request.getServletPath();
		
		switch (action) {
		case "/new":
		    try {
				sendRFQ(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    break;
         
		default:
		    listRFQ(request, response);
		    break;
		}
	}

	private void sendRFQ(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		// TODO Auto-generated method stub
		
		
	}

	private void listRFQ(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

}
