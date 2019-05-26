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
import com.Blood.service.Administrator;

/**
 * Servlet implementation class Account
 */
@WebServlet("/Account")
public class Account extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Account() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String command=request.getParameter("command");

		switch(command)
		{
		case "signup":
			String result=createAccount(request);
			if(result.equals("True"))
			{

				RequestDispatcher val=request.getRequestDispatcher("First.jsp");
			val.forward(request, response);
			}
			else
			{
				HttpSession session=request.getSession();
				session.setAttribute("error", result);
				RequestDispatcher val=request.getRequestDispatcher("First.jsp");
				val.forward(request, response);
			}
			break;
		case "login":
			String result1=viewAccount(request);
			if(result1.equals("True"))
			{
				HttpSession session=request.getSession();
				session.setAttribute("profile", request.getParameter("username"));
				RequestDispatcher val=request.getRequestDispatcher("second.jsp");
			val.forward(request, response);
			}
			else
			{
				HttpSession session=request.getSession();
				session.setAttribute("errormg", result1);
				RequestDispatcher val=request.getRequestDispatcher("First.jsp");
				val.forward(request, response);
			}
			break;
			
		}
		
	}
	
	
	public String createAccount(HttpServletRequest request)
	{
		BloodBean bloodBean=new BloodBean();
		bloodBean.setFirstname(request.getParameter("firstname"));
		bloodBean.setLastname(request.getParameter("lastname"));
		System.out.println("email"+request.getParameter("email"));
		bloodBean.setEmail(request.getParameter("email"));
		bloodBean.setLocation(request.getParameter("location"));
		bloodBean.setPassword(request.getParameter("password"));
		bloodBean.setRetypepassword(request.getParameter("retypepassword"));
		Administrator administrator =new Administrator();
		String result=administrator.createAccount(bloodBean);
		System.out.println(result);
		
		return result;
		
	}
	
	public String viewAccount(HttpServletRequest request)
	{
		BloodBean bloodBean=new BloodBean();
		Administrator administrator =new Administrator();
		String result1=administrator.viewAccount(request.getParameter("username"),request.getParameter("password"));
		System.out.println(result1);
		return result1;
		
	}

}
