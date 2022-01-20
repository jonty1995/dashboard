package com.digitalstudio.dashboard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class DashboardController {

	@GetMapping("/dashboard")
	public ModelAndView showPage() {
		return new ModelAndView("dashboard");
	}

	@GetMapping("/entry/{item}")
	public ModelAndView showEntryPage(@PathVariable("item") String item) {
		if (item.equals("electricity-bill"))
			return new ModelAndView("electricity-bill-entry");
		else if (item.equals("train-ticket"))
			return new ModelAndView("train-ticket-entry");
		return new ModelAndView("dashboard");
	}

	@GetMapping("/show-all/{item}")
	public ModelAndView showAllPage(@PathVariable("item") String item) {
		if (item.equals("electricity-bill"))
			return new ModelAndView("electricity-bill-show-all");
		else if (item.equals("train-ticket"))
			return new ModelAndView("train-ticket-show-all");
		return new ModelAndView("dashboard");
	}

}
