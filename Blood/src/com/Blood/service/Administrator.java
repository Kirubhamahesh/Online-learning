package com.Blood.service;

import java.util.regex.Pattern;

import com.Blood.bean.BloodBean;
import com.Blood.dao.BloodDAO;


public class Administrator {

	BloodDAO bloodDAO=new BloodDAO();
	MapLocation location=new MapLocation();
	public String createAccount(BloodBean bloodBean) {
		try {
			System.out.println(bloodBean.getEmail());
			if(bloodDAO.checkEmail(bloodBean.getEmail())) {
				System.out.println("1");
				return "Email Already Exist";
			}
			if(location.checklocation(bloodBean.getLocation())==1)
			{
				return "Enter Valueable District";
			}
			if(!(Pattern.matches("[a-zA-Z0-9]{1,}",bloodBean.getPassword() )))
			{
				return "Must contain 1Lowercase 1Uppercase 1Number "; 
			}
			if(!bloodBean.getPassword().equals(bloodBean.getRetypepassword()))
			{
				System.out.println("1");
				
				return "Password Not Match";
			}
			
			return bloodDAO.insertData(bloodBean);
			
		}
		catch (Exception e) {
			System.out.println(e);
			System.out.println("hii");
			return "Error";
		}
		
	}
	public String viewAccount(String username, String password) {
		String value=bloodDAO.checkData(username,password);
		System.out.println(value); 
		return value;
	}
	public String ForgetPassword(String email) {
		
		// TODO Auto-generated method stub
		
		return bloodDAO.updateData(email);
		
	}
public String changePassword(String username,BloodBean bloodBean) {
		
		// TODO Auto-generated method stub
	if(!bloodBean.getPassword().equals(bloodBean.getRetypepassword()))
	{
		
		
		return "Password Not Match";
	}
		return bloodDAO.updatePassword( username, bloodBean);
		
	}
	
}
