package com.Blood.service;

import java.util.regex.Pattern;

import com.Blood.bean.BloodBean;
import com.Blood.dao.BloodDAO;


public class Administrator {

	BloodDAO bloodDAO=new BloodDAO();
	public String createAccount(BloodBean bloodBean) {
		try {
			System.out.println(bloodBean.getEmail());
			if(bloodDAO.checkEmail(bloodBean.getEmail())) {
				System.out.println("1");
				return "email already exist";
			}
			if(!(Pattern.matches("[a-z]{1}[A-Z]{1}[0-9]{1}[@#$$%]{1}",bloodBean.getPassword() )))
			{
				return "Must contain 1Lowercase 1Uppercase 1Number 1 Specialcharcter"; 
			}
			if(!bloodBean.getPassword().equals(bloodBean.getRetypepassword()))
			{
				System.out.println("1");
				
				return "Password do no match";
			}
			return bloodDAO.insertData(bloodBean);
			
		}
		catch (Exception e) {
			System.out.println(e);
			System.out.println("hii");
		}
		return null;
	}
	public String viewAccount(String username, String password) {
		String value=bloodDAO.checkData(username,password);
		System.out.println(value); 
		return value;
	}
	
}
