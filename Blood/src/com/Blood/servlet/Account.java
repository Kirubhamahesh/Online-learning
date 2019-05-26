package com.Blood.servlet;

import java.io.IOException;
import java.net.PasswordAuthentication;
import java.util.Properties;

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

import javax.mail.*;    
import javax.mail.internet.*; 

/**
 * Servlet implementation class Account
 */
@WebServlet("/Account")
public class Account extends HttpServlet {
	private static final long serialVersionUID = 1L;

	String username="";
	public Account() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String command = request.getParameter("command");

		switch (command) {
		case "signup":
			String result = createAccount(request);
			String name=request.getParameter("firstname");
			String email=request.getParameter("email");
			if (result.equals("True")) {
				
				final String user = "lifeline3003@gmail.com";// change accordingly
				final String pass = "hjhb ttwl rozx wrmw";

				// 1st step) Get the session object
				Properties props = new Properties();
				props.put("mail.smtp.host", "smtp.gmail.com");// change accordingly
				props.put("mail.smtp.auth", "true");
				props.put("mail.smtp.port", "587");
				props.put("mail.smtp.starttls.enable", "true");

				props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
				Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
					protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
						return new  javax.mail.PasswordAuthentication(user, pass);
					}
				});
				// 2nd step)compose message
				try {
					MimeMessage message = new MimeMessage(session);
					message.setFrom(new InternetAddress(user));
					message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
					message.setSubject("Confirmation Mail");
					message.setText("Hi "+name+","+"Hope you're doing fantastic!. I noticed that you just signed up at lifeline, and I wanted to personally thank you.  my goal is to offer the best experience possible to users.\r\n" + "I'd love to hear any feedback you have on lifeline (good or bad). Have an awesome day ,if there is any feedback or suggestions mail to lifeline3003@gmail.com");
					
					// 3rd step)send message
					Transport.send(message);
					
					

				} catch (MessagingException e) {
					System.out.println(e);
					//throw new RuntimeException(e);
					
				}
				

				RequestDispatcher val = request.getRequestDispatcher("First.jsp");
				val.forward(request, response);
			}
			else if(result.equals("Error")) 
			{
				RequestDispatcher val = request.getRequestDispatcher("error.jsp");
				val.forward(request, response);
			}
			else {
				HttpSession session = request.getSession(true);
				session.setAttribute("error", result);
				RequestDispatcher val = request.getRequestDispatcher("First.jsp");
				val.forward(request, response);
			}
			break;
		case "login":
			System.out.println("login");
			String result1 = viewAccount(request);
			BloodDAO blooddao = new BloodDAO();
			if (result1.equals("True")) {
				HttpSession session = request.getSession(true);
				session.setAttribute("profile", request.getParameter("username"));
				session.setAttribute("profile1", request.getParameter("username"));
				session.setAttribute("location", blooddao.GetLocation(request.getParameter("username")));
				MapLocation map = new MapLocation();

				String report = map.getlocation(blooddao.GetLocation(request.getParameter("username")));

				// System.out.println("Donar"+request.getParameter("location"));
				String lat = report.substring(0, report.indexOf("-"));
				String lag = report.substring(report.indexOf("-") + 1, report.length());
				System.out.println(lat);
				System.out.println(lag);

				session.setAttribute("lat", Float.parseFloat(lat));
				session.setAttribute("lag", Float.parseFloat(lag));

				RequestDispatcher val = request.getRequestDispatcher("second.jsp");
				val.forward(request, response);
			}
			else if(result1.equals("Error")) 
			{
				RequestDispatcher val = request.getRequestDispatcher("error.jsp");
				val.forward(request, response);
			}
			else {
				HttpSession session = request.getSession(true);
				session.setAttribute("errormg", result1);
				RequestDispatcher val = request.getRequestDispatcher("First.jsp");
				val.forward(request, response);
			}
			break;
		case "forgetpassword":
			String result2 = ForgetPassword(request);
			if (result2.equals("True")) {
				HttpSession session = request.getSession(true);

				RequestDispatcher val = request.getRequestDispatcher("First.jsp");
				val.forward(request, response);
			}
			else if(result2.equals("Error")) 
			{
				RequestDispatcher val = request.getRequestDispatcher("error.jsp");
				val.forward(request, response);
			}
			else {
				HttpSession session = request.getSession(true);
				session.setAttribute("errormsg", result2);
				RequestDispatcher val = request.getRequestDispatcher("First.jsp");
				val.forward(request, response);
			}
			break;
			
		case "changepassword":
			System.out.println("changepassword");
			String result3 = ChangePassword(request);
			System.out.println(result3);
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
		case "message":
			System.out.println("message");
			HttpSession session = request.getSession(true);
			String message=request.getParameter("message");
			username=String.valueOf(session.getAttribute("profile"));
			BloodDAO ob= new BloodDAO();
			String result4 = ob.updatemessage(message,username);
			System.out.println(result4);
			if (result4.equals("True")) {
				

				RequestDispatcher val = request.getRequestDispatcher("second.jsp");
				val.forward(request, response);
			}
			else if(result4.equals("Error")) 
			{
				RequestDispatcher val = request.getRequestDispatcher("error.jsp");
				val.forward(request, response);
			}
			
			break;
		}

		
		
	}

	public String createAccount(HttpServletRequest request) {
		BloodBean bloodBean = new BloodBean();
		bloodBean.setFirstname(request.getParameter("firstname"));
		bloodBean.setLastname(request.getParameter("lastname"));
		System.out.println("email" + request.getParameter("email"));
		bloodBean.setEmail(request.getParameter("email"));
		bloodBean.setLocation(request.getParameter("location"));
		bloodBean.setPassword(request.getParameter("password"));
		bloodBean.setRetypepassword(request.getParameter("retypepassword"));
		bloodBean.setMessage("messge");
		Administrator administrator = new Administrator();
		String result = administrator.createAccount(bloodBean);
		System.out.println(result);

		return result;

	}

	public String viewAccount(HttpServletRequest request) {
		BloodBean bloodBean = new BloodBean();
		Administrator administrator = new Administrator();
		String result1 = administrator.viewAccount(request.getParameter("username"), request.getParameter("password"));
		System.out.println(result1);
		return result1;

	}

	public String ForgetPassword(HttpServletRequest request) {
		BloodBean bloodBean = new BloodBean();

		Administrator administrator = new Administrator();
		String result2 = administrator.ForgetPassword(request.getParameter("email"));
		if (result2.equals("Email Id Not Found"))
		{
			return result2;
		}
		else if(result2.equals("Error")) 
		{
			return "Error";
		}
		else {
		final String user = "lifeline3003@gmail.com";// change accordingly
		final String pass = "hjhb ttwl rozx wrmw";

		// 1st step) Get the session object
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");// change accordingly
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "587");
		props.put("mail.smtp.starttls.enable", "true");

		props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
				return new  javax.mail.PasswordAuthentication(user, pass);
			}
		});
		// 2nd step)compose message
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(user));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(request.getParameter("email")));
			message.setSubject("Password");
			message.setText("Your old Password:"+result2);

			// 3rd step)send message
			Transport.send(message);
			return "True";
			

		} catch (MessagingException e) {
			return "Error";
			//throw new RuntimeException(e);
			
		}
		}
		
	}
	public String ChangePassword(HttpServletRequest request) {
		BloodBean bloodBean = new BloodBean();
		
		Administrator administrator = new Administrator();
		bloodBean.setPassword(request.getParameter("password"));
		bloodBean.setRetypepassword(request.getParameter("confirmpassword"));
		System.out.println(request.getParameter("username"));
		String result3 = administrator.changePassword(request.getParameter("username"),bloodBean);
		return result3;
		
	}


}
