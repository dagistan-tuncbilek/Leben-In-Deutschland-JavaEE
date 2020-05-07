package com.lidServers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.data.Data;
import com.data.Question;

@WebServlet("/QuizServlet")
public class QuizServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		ArrayList<Question> questions = (ArrayList<Question>) Data.quiz(Integer.parseInt(request.getParameter("subject")));
		request.getSession().setAttribute("questions", questions);
		request.getRequestDispatcher("/WEB-INF/wiev/QuizPage.jsp").forward(request, response);
	}

	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		ArrayList<Question> questions = (ArrayList<Question>) request.getSession().getAttribute("questions");
		for (int i=1 ; i<31 ; i++) {		
			if (request.getParameter("radio"+i)!=null) {
				questions.get(i-1).setStudentAnswer(request.getParameter("radio"+i));
			}
		}
		int trueAnswer=0;
		int falseAnswer=0;
		int emptyAnswer=0;
		for (Question question : questions) {
			if (question.getTrueAnswer().equals(question.getStudentAnswer())) {
				trueAnswer++;
			} else if(question.getStudentAnswer()==null) {
				emptyAnswer++;
			} else falseAnswer++;
		}
		request.setAttribute("trueAnswer", String.valueOf(trueAnswer));
		request.setAttribute("falseAnswer", String.valueOf(falseAnswer));
		request.setAttribute("emptyAnswer", String.valueOf(emptyAnswer));
		request.setAttribute("questions", questions);
		request.getRequestDispatcher("/WEB-INF/wiev/QuizPage2.jsp").forward(request, response);
	}
}