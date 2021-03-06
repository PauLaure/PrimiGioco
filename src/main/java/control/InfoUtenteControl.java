package control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.CartaBean;
import model.bean.IndirizzoBean;
import model.bean.UserBean;
import model.dao.IndirizzoDAO;
import model.dao.PagamentoDAO;


public class InfoUtenteControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static final PagamentoDAO model = new PagamentoDAO();  
    private static final IndirizzoDAO modelIndi = new IndirizzoDAO();
	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	UserBean user = (UserBean) request.getSession().getAttribute("Utente");
		try {
			CartaBean carta = model.doRetrieveCarta(user.getNumeroCarta());
			IndirizzoBean indi = modelIndi.doRetrieveIndirizzo(user);
			request.setAttribute("carta", carta);
			request.setAttribute("indirizzo", indi);

			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/UserLoggedView.jsp");
		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
