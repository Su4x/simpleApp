package suhaib.simple.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import suhaib.simple.service.EventSerivce;

@Controller
public class EventController {
	
	@Autowired
	EventSerivce eventService;
	
	@RequestMapping(value = "/events", method = RequestMethod.GET)
	//@ResponseBody
	public String showEventsPage(ModelMap model) {
		model.addAttribute("events",eventService.readAllEvents());
		return "events";
	}
}
