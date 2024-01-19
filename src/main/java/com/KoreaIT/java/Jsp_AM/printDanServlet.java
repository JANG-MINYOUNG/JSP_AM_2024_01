package com.KoreaIT.java.Jsp_AM;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/printDan")
public class printDanServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");

		String inputedDan = request.getParameter("dan");
		String inputedLimit = request.getParameter("limit");
		String inputedColor = request.getParameter("color");

		if (inputedDan == null) {
			inputedDan = "1";
		}
		if (inputedLimit == null) {
			inputedLimit = "1";
		}
		if (inputedColor == null) {
			inputedColor = "black";
		}

		int dan = Integer.parseInt(inputedDan);
		int limit = Integer.parseInt(inputedLimit);

		response.getWriter().append(String.format("<div style=\"color:%s\";>==%d단==</div>", inputedColor, dan));

		for (int i = 1; i <= limit; i++) {
			response.getWriter().append(
					String.format("<div style=\"color:%s\";>%d * %d = %d</div>", inputedColor, dan, i, dan * i));
		}
	}

}