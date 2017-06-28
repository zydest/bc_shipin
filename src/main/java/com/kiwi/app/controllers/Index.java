package com.kiwi.app.controllers;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
@Component
public class Index {

	// inject via application.properties
	@Value("${welcome.message:test}")
	private String message = "Hello World";

	@RequestMapping( path = "/", method = RequestMethod.GET)
	public String welcome(HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("user") == null){
			session.setAttribute("user", "uye");
		} else {
			System.out.print(session.getAttribute("user"));
		}
		return "welcome";
	}

}