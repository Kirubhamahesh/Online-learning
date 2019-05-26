package com.Blood.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Blood.bean.BloodBean;
import com.Blood.dao.BloodDAO;
import com.Blood.service.Administrator;
import com.Blood.service.MapLocation;

/**
 * Servlet implementation class Donar1
 */
@WebServlet("/Donar1")
public class Donar1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Donar1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command1 = request.getParameter("command1");

		switch (command1) {
		
		case "changepassword":
			System.out.println("changepassword");
			String result3 = ChangePassword(request);
			if (result3.equals("True")) {
				HttpSession session = request.getSession(true);

				RequestDispatcher val = request.getRequestDispatcher("First.jsp");
				val.forward(request, response);
			}
			else if(result3.equals("Error")) 
			{
				RequestDispatcher val = request.getRequestDispatcher("error.jsp");
				val.forward(request, response);
			}
			else {
				HttpSession session = request.getSession(true);
				session.setAttribute("errormsg", result3);
				RequestDispatcher val = request.getRequestDispatcher("First.jsp");
				val.forward(request, response);
			}
			break;
		}

	}
	public String ChangePassword(HttpServletRequest request) {
		BloodBean bloodBean = new BloodBean();

		Administrator administrator = new Administrator();
		bloodBean.setPassword(request.getParameter("password"));
		bloodBean.setRetypepassword(request.getParameter("confirmpassword"));
		
		String result3 = administrator.changePassword(request.getParameter("username"),bloodBean);
		return result3;
		
	}
}


