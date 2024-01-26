package com.KoreaIT.java.Jsp_AM.servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/member/join")
public class MemberJoinServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		
		HttpSession session = request.getSession();
		if (session.getAttribute("loginedMemberId") != null) {
			response.getWriter().append(
					String.format("<script>alert('로그아웃 후 이용해주세요'); location.replace('../home/main');</script>"));
			return;
		}

		request.getRequestDispatcher("/jsp/member/join.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}