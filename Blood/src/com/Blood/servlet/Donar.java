package com.Blood.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.Blood.bean.DonarBean;
import com.Blood.dao.BloodDAO;
import com.Blood.service.MapLocation;

import java.util.regex.Pattern;

/**
 * Servlet implementation class Donar
 */
@WebServlet("/Donar")
public class Donar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Donar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    
		 DonarBean donarbean=new DonarBean();
		 BloodDAO bloodDao=new BloodDAO();
		 donarbean.setUsername(request.getParameter("username"));	
	 donarbean.setLocation(request.getParameter("location"));
	 
	 String str = request.getParameter("contact");
	 
	 if( !Pattern.matches("[0-9]{10,}",str ))
		{
		System.out.println("first");

			HttpSession session=request.getSession(true);
			session.setAttribute("errormessge", "please enter valuable phone number");
		    response.sendRedirect("page1.jsp");
		 
		}

	 else if(str.length() != 10)
		{
		 System.out.println("second");
			HttpSession session=request.getSession(true);
			session.setAttribute("errormessge", "phone number must be 10 digits");
		    response.sendRedirect("page1.jsp");
		 
		}
	 else
	 {
		 System.out.println("three");
		 
		 donarbean.setContact(str);
	 
	
	 
	 donarbean.setAge(request.getParameter("age"));
	 donarbean.setAddress(request.getParameter("address"));
	 donarbean.setType(request.getParameter("bloodtype"));
	
	 String result=bloodDao.insertDonarData(donarbean);
	 
	 if (result.equals("True")) {

			RequestDispatcher val = request.getRequestDispatcher("second.jsp");
			val.forward(request, response);
		}
		else if(result.equals("Error")) 
		{
			RequestDispatcher val = request.getRequestDispatcher("error.jsp");
			val.forward(request, response);
		}
	 
		 
	 }
		 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
