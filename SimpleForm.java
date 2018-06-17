package com.tutorialspoint.MyFirstWebPage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SimpleForm
 */
@WebServlet("/SimpleForm")
public class SimpleForm extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SimpleForm() {
		super();
		
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
				response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String number = request.getParameter("number");
		String Male = request.getParameter("Male");
		String Female = request.getParameter("Female");
		response.setContentType("text/html");

		PrintWriter out = response.getWriter();
		out.println("<html>\n" + "<head>\n" + "<title>\n Form example </title>\n" + "<style>\n"
				+ "body{ background-color:blue ;text-align:center; font-family:verdana; margin:auto; width:350px} table,tr,td{border:1px solid black }"
				+ "" + "</style>\n" + "</head>\n" + "<body >"
				+ "<h3> User details</h3>" + "<table>\n"
				+ "<tr><td><b>Name :</td></b>" + "<td>" + name + "</td>" + "</tr>\n "
				+ "<tr><td><b>Contact number :</b></td>" + "<td>" +

				number + "<tr><td><b>Email: :</b></td>" + "<td>" +

				email + "</td>" + "</tr>\n " +
				"<tr><td><b>Gender :</b></td>" + "<td>" + Male + "</td>" + "</tr> \n" + "<tr><td><b>Gender :</b></td>"
				+ "<td>" + Female + "</td>" + "</tr>\n " + "</table>\n" + "</body>" + "</html>");

		doGet(request, response);
	}

}