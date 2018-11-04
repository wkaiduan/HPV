package com.tegen.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tegen.entity.User;
import com.tegen.service.userService;

@Controller
public class userController {

	@Resource
	private userService service;
	
	@RequestMapping("/log")
	public String login(HttpSession session, User user) {
		User users = service.checkLogin(user);
		if (users != null) {
			session.setAttribute("user", users);
			System.out.println(users);
			return "main";
		}
		return "error";
	}
}