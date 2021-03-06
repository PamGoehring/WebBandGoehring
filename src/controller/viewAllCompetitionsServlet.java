package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Competition;

/**
 * Servlet implementation class viewAllCompetitionsServlet
 */
@WebServlet("/viewAllCompetitionsServlet")
public class viewAllCompetitionsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public viewAllCompetitionsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		CompetitionHelper dao = new CompetitionHelper();
		request.setAttribute("allItems", dao.showAllCompetition());
		
		if (dao.showAllCompetition().isEmpty()) {
			request.setAttribute("allItems", " ");
		}
		
		System.out.println("List from viewAllCompetition servlet");
		for(Competition c: dao.showAllCompetition()) {
			System.out.println(c.toString()); 
		}
		
		getServletContext().getRequestDispatcher("/viewAllCompetitions.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
