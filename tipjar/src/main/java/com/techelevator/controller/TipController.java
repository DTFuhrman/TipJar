package com.techelevator.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.techelevator.model.Worker;
import com.techelevator.model.WorkerDAO;

@Controller
public class TipController {

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
	public String submitForm(/*@Validated @ModelAttribute("worker")*/ Worker worker) {
		
		return "redirect:/confirmation";
	}
	
	@RequestMapping(path = {"/confirmation"}, method = RequestMethod.GET)
	public String displayConfirmationPage() {
		
		return "confirm";
	}
	
	@RequestMapping(path = {"/donate"}, method = RequestMethod.GET)
	public String displayDonatePage(ModelMap map) {
		List<Worker> workers = workerDao.getWorkersByName();
		List<String> establishments = workerDao.getAllEstablishments();
		List<String> industries = workerDao.getAllIndustries();
		map.addAttribute("workers",  workers);
		map.addAttribute("establishments",  establishments);
		map.addAttribute("industries",  industries);
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
