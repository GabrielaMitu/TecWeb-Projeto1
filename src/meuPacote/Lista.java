package meuPacote;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Lista")
public class Lista extends HttpServlet{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request,HttpServletResponse response) 
			throws ServletException, IOException{
		DAO dao;
		try {
			dao = new DAO();

		List<Pessoas> pessoas = dao.getLista();
		request.setAttribute("pessoas", pessoas);
		RequestDispatcher dispatcher = request.getRequestDispatcher("lista.jsp");
		dispatcher.forward(request,  response);
		
		dao.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
	}