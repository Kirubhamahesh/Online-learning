package com.Blood.service;

import java.util.*;



public class MapLocation {
	
	//HttpSession session=new HttpSession();
	
	public String getlocation (String location){
		System.out.println("jjjjjjjjjj");
	
	HashMap<String, String> map1 = new HashMap<String, String>(); 
	HashMap<String, String> map2 = new HashMap<>();
	HashMap<String,String> hm=new HashMap<String,String>();    
	map1.put("Ariyalur","11.2399");
    map2.put("Ariyalur","79.2902");
    map1.put("Chennai","13.0827");
    map2.put("Chennai","80.2707");
    map1.put("Coimbatore","11.0168");
    map2.put("Coimbatore","76.9558");
    map1.put("Cuddalore","11.7480");
    map2.put("Cuddalore","79.7714");
    map1.put("Dharmapuri","12.0933");
    map2.put("Dharmapuri","78.2020");
    map1.put("Dindigul","10.3673");
    map2.put("Dindigul","77.9803");
    map1.put("Erode","11.3410");
    map2.put("Erode","77.7172");
    map1.put("Kallakurichi","11.7387");
    map2.put("Kallakurichi","778.9609");
    map1.put("Kanchipuram","12.8342");
    map2.put("Kanchipuram","79.7036");
    map1.put("Kanniyakumari","8.0883");
    map2.put("Kanniyakumari ","77.5385");
    map1.put("Karur","10.9601");
    map2.put("Karur","78.0766");
    map1.put("Krishnagiri","12.5186");
    map2.put("Krishnagiri","78.2137");
    map1.put("Madurai","9.9252");
    map2.put("Madurai","78.1198");
    map1.put("Nagapattinam","10.7656");
    map2.put("Nagapattinam","79.8424");
    map1.put("Namakkal","11.2194");
    map2.put("Namakkal","78.1677");
    map1.put("Nilgiris	","11.4916");
    map2.put("Nilgiris	","76.7337");
    map1.put("Perambalur","11.2266");
    map2.put("Perambalur","78.9288");
    map1.put("Pudukkottai","10.3797");
    map2.put("Pudukkottai","78.8208");
    map1.put("Ramanathapuram","9.4071");
    map2.put("Ramanathapuram","78.7023");
    map1.put("Salem","11.6643");
    map2.put("Salem","78.1460");
    map1.put("Sivaganga","9.9726");
    map2.put("Sivaganga","78.5661");
    map1.put("Thanjavur","10.7870");
    map2.put("Thanjavur","79.1378");
    map1.put("Theni","9.9330");
    map2.put("Theni","77.4702");
    map1.put("Thoothukudi","8.7642");
    map2.put("Thoothukudi","78.1348");
    map1.put("Tiruchirappalli","10.7905");
    map2.put("Tiruchirappalli","78.7047");
    map1.put("Tirunelveli","8.7139");
    map2.put("Tirunelveli","77.7567");
    map1.put("Tiruppur","11.1085");
    map2.put("Tiruppur","77.3411");
    map1.put("Tiruvallur","13.2544");
    map2.put("Tiruvallur","80.0088");
    map1.put("Tiruvannamalai","12.2253");
    map2.put("Tiruvannamalai","79.0747");
    map1.put("Tiruvarur","10.7668");
    map2.put("Tiruvarur","79.6348");
    map1.put("Vellore","12.9165");
    map2.put("Vellore","79.1325");
    map1.put("Viluppuram","11.9576");
    map2.put("Viluppuram","79.2902");
    map1.put("Virudhunagar","9.5680");
    map2.put("Virudhunagar","77.9624");
    
    
    
    
    
   
    
    String str=map1.get(location)+"-"+map2.get(location);
    System.out.println(map1.get(location));
    System.out.println(str);
    return str;
  
  
}
	public int checklocation (String location){
		System.out.println("jjjjjjjjjj");
	
	HashMap<String, String> map1 = new HashMap<String, String>(); 
	HashMap<String, String> map2 = new HashMap<>();
	HashMap<String,String> hm=new HashMap<String,String>();    
	map1.put("Ariyalur","11.2399");
    map2.put("Ariyalur","79.2902");
    map1.put("Chennai","13.0827");
    map2.put("Chennai","80.2707");
    map1.put("Coimbatore","11.0168");
    map2.put("Coimbatore","76.9558");
    map1.put("Cuddalore","11.7480");
    map2.put("Cuddalore","79.7714");
    map1.put("Dharmapuri","12.0933");
    map2.put("Dharmapuri","78.2020");
    map1.put("Dindigul","10.3673");
    map2.put("Dindigul","77.9803");
    map1.put("Erode","11.3410");
    map2.put("Erode","77.7172");
    map1.put("Kallakurichi","11.7387");
    map2.put("Kallakurichi","778.9609");
    map1.put("Kanchipuram","12.8342");
    map2.put("Kanchipuram","79.7036");
    map1.put("Kanniyakumari","8.0883");
    map2.put("Kanniyakumari ","77.5385");
    map1.put("Karur","10.9601");
    map2.put("Karur","78.0766");
    map1.put("Krishnagiri","12.5186");
    map2.put("Krishnagiri","78.2137");
    map1.put("Madurai","9.9252");
    map2.put("Madurai","78.1198");
    map1.put("Nagapattinam","10.7656");
    map2.put("Nagapattinam","79.8424");
    map1.put("Namakkal","11.2194");
    map2.put("Namakkal","78.1677");
    map1.put("Nilgiris	","11.4916");
    map2.put("Nilgiris	","76.7337");
    map1.put("Perambalur","11.2266");
    map2.put("Perambalur","78.9288");
    map1.put("Pudukkottai","10.3797");
    map2.put("Pudukkottai","78.8208");
    map1.put("Ramanathapuram","9.4071");
    map2.put("Ramanathapuram","78.7023");
    map1.put("Salem","11.6643");
    map2.put("Salem","78.1460");
    map1.put("Sivaganga","9.9726");
    map2.put("Sivaganga","78.5661");
    map1.put("Thanjavur","10.7870");
    map2.put("Thanjavur","79.1378");
    map1.put("Theni","9.9330");
    map2.put("Theni","77.4702");
    map1.put("Thoothukudi","8.7642");
    map2.put("Thoothukudi","78.1348");
    map1.put("Tiruchirappalli","10.7905");
    map2.put("Tiruchirappalli","78.7047");
    map1.put("Tirunelveli","8.7139");
    map2.put("Tirunelveli","77.7567");
    map1.put("Tiruppur","11.1085");
    map2.put("Tiruppur","77.3411");
    map1.put("Tiruvallur","13.2544");
    map2.put("Tiruvallur","80.0088");
    map1.put("Tiruvannamalai","12.2253");
    map2.put("Tiruvannamalai","79.0747");
    map1.put("Tiruvarur","10.7668");
    map2.put("Tiruvarur","79.6348");
    map1.put("Vellore","12.9165");
    map2.put("Vellore","79.1325");
    map1.put("Viluppuram","11.9576");
    map2.put("Viluppuram","79.2902");
    map1.put("Virudhunagar","9.5680");
    map2.put("Virudhunagar","77.9624");
    
    
    if(map1.get(location)==null) {
    	return 1;
    }
    
    
   
    
   
    return 0;
  
  
}
}