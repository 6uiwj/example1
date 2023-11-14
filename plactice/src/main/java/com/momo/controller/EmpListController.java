package com.momo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebAServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.momo.dao.EmpDao;
import com.momo.dto.EmpDto;

/**
 * Servlet implementation class EmpListController
 */
@WebServlet("/empList")
public class EmpListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EmpDao dao = new EmpDao(getServletContext());
		List<EmpDto> list = dao.getList();
		request.setAttribute("list", list);

		request.getRequestDispatcher("/jdbc/empList.jsp").forward(request, response);
	
	}



}
