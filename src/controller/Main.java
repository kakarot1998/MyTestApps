package controller;

@WebServlet("/Main")
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.getServletContext().getRequestDispatcher("/WEB-INF/formProcess.jsp").forward(request, response);

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<String> Titres = new ArrayList<String>();
		Titres.add("Titre 1");
		Titres.add("Titre 2");
		Titres.add("Titre 3");
		Titres.add("Titre 4");

		HashMap<String, String> Map1 = new HashMap<String, String>();
		Map1.put("nom", "Amine");
		Map1.put("email", "Amine@gmail.com");

		request.setAttribute("Map1", Map1);
		request.setAttribute("Titres", Titres);

		this.getServletContext().getRequestDispatcher("/WEB-INF/formProcess.jsp").forward(request, response);
	}

}
