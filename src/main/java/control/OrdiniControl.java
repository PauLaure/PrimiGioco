package control;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.OrdineBean;
import model.bean.UserBean;
import model.dao.OrdiniDAO;


public class OrdiniControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private static final OrdiniDAO model = new OrdiniDAO();

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserBean user = (UserBean) request.getSession().getAttribute("Utente");
		ArrayList<OrdineBean> ordini = new ArrayList<OrdineBean>();
		try {
			ordini = model.doRetrieveAll(user.getIdUtente());
			request.setAttribute("ordini", ordini);
			
		} catch (SQLException e) {
			System.out.println("Errore OrdiniControl: "+e.getMessage());
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/OrdiniView.jsp");
		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
