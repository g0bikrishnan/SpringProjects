package com.example.demo;

import java.net.http.HttpRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class IndexController {

	@RequestMapping("/index")
	public String index(){
		return "index.jsp";
		
	}
	@RequestMapping("/admin")
	public String admin(){
		return "admin.jsp";
		
	}
	@RequestMapping("/signup")
	@ResponseBody
	public String signup(HttpRequest req) 
	{
		return "signup response";
	}
	@RequestMapping("/login")
	public String login(HttpRequest req) 
	{
		return "login response";
	}
}
