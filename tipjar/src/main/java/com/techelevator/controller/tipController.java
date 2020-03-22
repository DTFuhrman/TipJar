package com.techelevator.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.techelevator.model.Worker;
import com.techelevator.model.WorkerDAO;

@Controller
public class tipController {

	@Autowired
	private WorkerDAO workerDao;
	
	@RequestMapping(path = {"/", "/home"}, method = RequestMethod.GET)
	public String displayHome() {
		
		return "home";
	}
	
	@RequestMapping(path = {"/makeProfile"}, method = RequestMethod.GET)
	public String displayForm() {
		
		return "form";
	}
	
	@RequestMapping(path = {"/makeProfile"}, method = RequestMethod.POST)
	public String submitForm(@Validated @ModelAttribute("worker") Worker worker) {
		
		return "form";
	}
	
	@RequestMapping(path = {"/donate"}, method = RequestMethod.GET)
	public String displayDonatePage() {
		
		return "donate";
	}
	
	@RequestMapping(path = {"/info"}, method = RequestMethod.GET)
	public String displayInfo() {
		
		return "info";
	}
	
	@RequestMapping(path = {"/about"}, method = RequestMethod.GET)
	public String displayAbout() {
		
		return "about";
	}
	
	
	
}
