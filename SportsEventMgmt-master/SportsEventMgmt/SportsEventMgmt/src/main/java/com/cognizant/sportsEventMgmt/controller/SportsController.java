package com.cognizant.sportsEventMgmt.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cognizant.sportsEventMgmt.model.Event;
import com.cognizant.sportsEventMgmt.model.Player;
import com.cognizant.sportsEventMgmt.model.Sports;
import com.cognizant.sportsEventMgmt.model.User;
import com.cognizant.sportsEventMgmt.repository.EventRepository;
import com.cognizant.sportsEventMgmt.repository.PlayerRepository;
import com.cognizant.sportsEventMgmt.repository.SportsRepository;
import com.cognizant.sportsEventMgmt.repository.UserRepository;

@Controller
public class SportsController {

	@Autowired
	UserRepository userRepository;
	@Autowired
	SportsRepository sportsRepository;
	@Autowired
	EventRepository eventRepository;
	@Autowired
	PlayerRepository playerRepository;
	HttpSession session;

	@RequestMapping(value = "/getLoginPage", method = RequestMethod.GET)
	public String loginPage(@ModelAttribute("user") User user) {
		user = new User();
		return "login";	
	}

	@RequestMapping(value = "/registerPage", method = RequestMethod.GET)
	public String registerPage(@ModelAttribute("user") User user, @CookieValue(value = "username", defaultValue = "yes") String uname,
			@CookieValue(value = "password", defaultValue = "no") String password
			,HttpServletResponse response) {
		System.out.println(uname+" "+ password);
		user = new User();
		return "register";
	}

	@RequestMapping(value = "/registerUser", method = RequestMethod.POST)
	public String registerPage(@Valid @ModelAttribute("user") User user, BindingResult bindingResult) {

		if (bindingResult.hasErrors()) {
			return "register";
		}
		userRepository.save(user);
		return "login";
	}

	@RequestMapping(value = "/authenticateUser", method = RequestMethod.POST)
	public String authenticateUser(@RequestParam String emailId, @RequestParam String password,@RequestParam String remember,
			HttpServletRequest request,HttpServletResponse response, Model model) {
		
		if(remember.equalsIgnoreCase("yes")) {
			
			Cookie cookie = new Cookie("username",(String) request.getAttribute("emailId"));
			Cookie cookie2 = new Cookie("password",(String) request.getAttribute("password"));
			response.addCookie(cookie);
			response.addCookie(cookie2);
			System.out.println("All set");
		}
		
		
		
		
		User user = userRepository.authenticateUser(emailId, password);
		if (user != null) {
			session = request.getSession();
			if (user.getUserType().equalsIgnoreCase("Organizer")) {
				session.setAttribute("oid", user.getId());
				return "organizer";
			} else {
				session.setAttribute("cid", user.getId());

				return "coach";
			}
		} else {
			model.addAttribute("status", "Invalid username/password");
			return "register";
		}
	}

	@RequestMapping(value = "/requestSignOut", method = RequestMethod.GET)
	public String requestSignOut() {
		return "signOut";
	}

	@RequestMapping(value = "/addSports", method = RequestMethod.GET)
	public String addSports(@ModelAttribute("sports") Sports sports) {
		sports = new Sports();
		return "addSports";
	}

	@RequestMapping(value = "/addSportsData", method = RequestMethod.POST)
	public String addSportsData(@Valid @ModelAttribute("sports") Sports sports, BindingResult bindingResult) {

		if (bindingResult.hasErrors()) {
			return "addSports";
		}
		sportsRepository.save(sports);
		return "organizer";
	}

	@RequestMapping(value = "/updateSports", method = RequestMethod.GET)
	public String updateSports(@ModelAttribute("sports") Sports sports, Model model) {
		sports = new Sports();
		Optional<Sports> s = sportsRepository.findById(2);
		
		model.addAttribute("sports", s.get());
		return "updateSports";
	}

	@RequestMapping(value = "/updateSportsData", method = RequestMethod.POST)
	public String updateSportsData(@Valid @ModelAttribute("sports") Sports sports, BindingResult bindingResult) {

		if (bindingResult.hasErrors()) {
			return "updateSports";
		}
		sportsRepository.save(sports);
		return "organizer";
	}

	@RequestMapping(value = "/addEvent", method = RequestMethod.GET)
	public String addEvent(@ModelAttribute("event") Event event) {
		event = new Event();
		return "addEvent";
	}

	@RequestMapping(value = "/addEventData", method = RequestMethod.POST)
	public String addEventData(@Valid @ModelAttribute("event") Event event, BindingResult bindingResult) {

		if (bindingResult.hasErrors()) {
			return "addEvent";
		}
		eventRepository.save(event);
		return "organizer";
	}

	@RequestMapping(value = "/updateEvent", method = RequestMethod.GET)
	public String updateEvent(@ModelAttribute("event") Event event) {
		event = new Event();
		return "updateEvent";
	}

	@RequestMapping(value = "/updateEventData", method = RequestMethod.POST)
	public String updateEventData(@Valid @ModelAttribute("event") Event event, BindingResult bindingResult) {

		if (bindingResult.hasErrors()) {
			return "updateEvent";
		}
		eventRepository.save(event);
		return "organizer";
	}

	@RequestMapping(value = "/addPlayer", method = RequestMethod.GET)
	public String addPlayer(@ModelAttribute("player") Player player) {
		player = new Player();
		return "addPlayer";
	}

	@RequestMapping(value = "/addPlayerData", method = RequestMethod.POST)
	public String addPlayerData(@Valid @ModelAttribute("player") Player player, BindingResult bindingResult) {

		if (bindingResult.hasErrors()) {
			return "addPlayer";
		}
		playerRepository.save(player);
		return "coach";
	}

	@RequestMapping(value = "/updatePlayer", method = RequestMethod.GET)
	public String updatePlayer(@ModelAttribute("player") Player player) {
		player = new Player();
		return "updatePlayer";
	}

	@RequestMapping(value = "/updatePlayerData", method = RequestMethod.POST)
	public String updatePlayerData(@Valid @ModelAttribute("player") Player player, BindingResult bindingResult) {

		if (bindingResult.hasErrors()) {
			return "updatePlayer";
		}
		playerRepository.save(player);
		return "coach";
	}

	@RequestMapping(value = "/viewSports")
	public String viewSports(Model m) {
		List<Sports> slist = sportsRepository.findAll();
		m.addAttribute("slist",slist);
		return "viewSports";
	}

	@RequestMapping(value = "/viewEvent", method = RequestMethod.GET)
	public String updatePlayer(@ModelAttribute("event") Event event) {
		event = new Event();
		return "viewEvent";
	}

	@RequestMapping(value = "/viewPlayer", method = RequestMethod.GET)
	public String viewPlayer(@ModelAttribute("player") Player player) {
		player = new Player();
		return "viewPlayer";
	}
}
