package com.cts.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class JustController {

	@RequestMapping("/helloworld")/*it redirects to home page*/
	public String showpage(Model model)
	{
		return "home";
	}
	@RequestMapping("/helloworld1")
	public String welcome(Model model)
	{
		return "welcome";
	}
	@RequestMapping("/Search")
	public String Search(Model model)
	{
		return "NewFile";
	}

	
}
