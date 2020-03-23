package com.techelevator.controller;

import java.time.LocalDate;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public String displayForm(Model modelHolder) {
		if(!modelHolder.containsAttribute("worker")) {
			modelHolder.addAttribute("worker", new Worker());
		}
		return "form";
	}
	
	@RequestMapping(path = {"/makeProfile"}, method = RequestMethod.POST)
	public String submitForm(@Valid @ModelAttribute("worker") Worker worker, BindingResult result, RedirectAttributes flash) {
		
		if(result.hasErrors()) {
			flash.addFlashAttribute("worker", worker);
			flash.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + "worker", result);
			return "redirect:/makeProfile";
		}
		
		
		flash.addFlashAttribute("message", "Thank you for signing up. We wish you well.");
		
		worker.setId();
		worker.setEntered(LocalDate.now());
		workerDao.submitNewWorker(worker);
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
	
	@RequestMapping(path = {"/profile"}, method = RequestMethod.GET)
	public String displayProfile(@RequestParam int profile, ModelMap map) {
		Worker thisWorker = workerDao.getWorkerById(profile);
		map.addAttribute("worker",  thisWorker);
		return "profile";
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
