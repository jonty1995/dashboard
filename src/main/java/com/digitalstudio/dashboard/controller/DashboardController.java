package com.digitalstudio.dashboard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class DashboardController {

	@GetMapping("/dashboard")
	public ModelAndView showPage() {
		// log.info("hello");
		return new ModelAndView("dashboard");
	}
}
