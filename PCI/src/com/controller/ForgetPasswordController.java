package com.controller;

import java.util.List;
import java.util.Random;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.DAO.LoginDAO;
import com.VO.LoginVO;

@Controller
public class ForgetPasswordController
{
@Autowired
LoginDAO loginDAO;


@RequestMapping(value = "/step1.html", method = RequestMethod.GET)
public ModelAndView ForgetPassword(@ModelAttribute LoginVO loginVO,@RequestParam("email")String email,HttpSession session)
{

	loginVO.setEmail(email);
	session.setAttribute("email", email);
	String e = (String) session.getAttribute("email");
	System.out.print(e);
	
	List ls=this.loginDAO.forgetpass(loginVO);
	
	

	
	 if(ls != null && ls.size()>=1)
	 {
	 int otp11 = generateOTP(4);
	 System.err.println("otp is ------------------->"+otp11);
	 sendMail(email, otp11);
	 session.setAttribute("generatedOTP" , otp11);
	return new ModelAndView("admin/login3");
     }
	 else
	 {
		 return new ModelAndView("admin/login");
     }
	//return new ModelAndView("patient/stepFP2.jsp");
    
}




@RequestMapping(value = "/step2.html", method = RequestMethod.POST)
public ModelAndView ForgetPasswordController1(@ModelAttribute LoginVO loginVO,@RequestParam("password")String password,@RequestParam("Confirmpassword")String Confirmpassword, HttpSession session, HttpServletRequest request)
{
    String email = (String) session.getAttribute("email");
    System.err.println("password------------------------"+password);
    System.err.println("email------------------------"+email);
	loginVO.setPassword(password);
	loginVO.setEmail(email);
	//List ls1=this.loginDAO.updatePassword(loginVO);
	
	if(password.equals(Confirmpassword))
	{
		System.out.println("match");
		this.loginDAO.updatePassword(loginVO);
		return new ModelAndView ("admin/login");
	}
	else 
	{
		System.out.println("notmatch");
		return new ModelAndView ("Admin/step2FP");
	}

	
	
	//return new ModelAndView("patient/stepFP2.jsp");
    
}






public int generateOTP(int limit) {

    int otp = 0;

    if (limit > 5 || limit < 1)
        limit = 3;

    for (int i = 0; i < limit; i++) {

        int x = new Random().nextInt(9);

        if (x == 0 && i == 0)
            i--;
        else
            otp = (otp * 10) + x;
    }
 //   OTP=otp;
    return otp;
}
protected static void sendMail(String email, Integer OTP) {

    java.util.Properties properties = new java.util.Properties();
    properties.put("mail.smtp.auth", "true");
    properties.put("mail.smtp.starttls.enable", "true");
    javax.mail.Session mailSession = javax.mail.Session.getInstance(properties);

    try {
        MimeMessage message = new MimeMessage(mailSession);

        message.setContent("Your OTP IS"+OTP, "text/html");
        message.setSubject("Forgot password");

        InternetAddress sender = new InternetAddress("arvindgohel426@gmail.com", "admin");
        InternetAddress receiver = new InternetAddress(email);
        message.setFrom(sender);
        message.setRecipient(Message.RecipientType.TO, receiver);
        message.saveChanges();

        javax.mail.Transport transport = mailSession.getTransport("smtp");
        transport.connect("smtp.gmail.com", 587, "agohel426@gmail.com", "Arvind1997");
        transport.sendMessage(message, message.getAllRecipients());
        transport.close();

    } catch (Exception e) {
        e.printStackTrace();
    }

}	
}

