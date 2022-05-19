package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.UserDAO;
import com.example.demo.model.UserDetails;

@Controller
public class UserController {

	@Autowired
	UserDAO userdao;

	@RequestMapping("/index")
	public String index() {
		System.out.println("index page");
		return "index";
	}

	@RequestMapping("/home")
	public String home() {

		return "home";
	}

	@RequestMapping("/adduser")
	public ModelAndView adduser(UserDetails userd) {

		ModelAndView mav = new ModelAndView("adduser");
		mav.addObject("user", userd);
		userdao.save(userd);
		return mav;
	}

	@RequestMapping("/showuser")
	public ModelAndView showuser(@RequestParam int id) {

		ModelAndView mav = new ModelAndView("showuser");
		UserDetails userd = userdao.findById(id).orElse(new UserDetails());
		mav.addObject("user", userd);
//		mav.setViewName("showuser");
		return mav;
	}

	@RequestMapping("/deleteuser")
	public ModelAndView deleteUser(@RequestParam int id) {

		ModelAndView mav = new ModelAndView("deleteuser");
		UserDetails userd = userdao.findById(id).orElse(null);
		mav.addObject("user", userd);
		userdao.deleteById(id);
		return mav;
	}

	@RequestMapping("/updateuser")
	public ModelAndView updateUser(UserDetails userd) {

		ModelAndView mav = new ModelAndView("updateuser");
		userd = userdao.findById(userd.getId()).orElse(new UserDetails());
		mav.addObject("user", userd);
		userdao.deleteById(userd.getId());
		return mav;
	}
}
