package au.usyd.elec5619.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import antlr.debug.Event;
import au.usyd.elec5619.dao.AdminDao;
import au.usyd.elec5619.dao.VolunteerDao;
import au.usyd.elec5619.domain.Admin;
import au.usyd.elec5619.domain.Volunteer;

@Controller
@RequestMapping("/backend")
public class AdminController {
	Logger logger = Logger.getLogger(AdminController.class);
	
	@Autowired
	public HttpSession session;
	@Autowired
	public AdminDao userDao;
	@Autowired
	public VolunteerDao volunteerDao;
//the default page for admin
	@RequestMapping(value = "" , method = { RequestMethod.GET })
	public ModelAndView index() {
		System.out.println("Enter Backend------------->");
		ModelAndView modelAndView = new ModelAndView("backend/login");
		Admin admin = new Admin();
		modelAndView.addObject("user", admin);
		
		return modelAndView;
	}
	//Admin login.After login, he can view the main page.
	@RequestMapping(value =  "" , method = { RequestMethod.POST })
	public ModelAndView login(@ModelAttribute("user") Admin _user, @ModelAttribute("volunteer") Volunteer volunteer) {
		System.out.println("admin login------------------->");
		Admin admin = userDao.findByUsernameAndPassword(_user.getUsername(),
				_user.getPassword());

		if (admin == null || admin.getUsername().compareTo("admin") != 0) {
			session.setAttribute("login_error", "username or password is incorrect");
			//???how to use this one?
			System.out.println("admin signs in fail------------------->");
			ModelAndView modelAndView = new ModelAndView("backend/login");
			return modelAndView;
		}
		System.out.println("admin signs in successfully--------------->");
		session.setAttribute("sessionUser", admin);
		//save user session???
		ModelAndView modelAndView = new ModelAndView("backend/main");

		List<Volunteer> list = volunteerDao.findallvolunteers();
		System.out.println(list.get(0).getVname());
		modelAndView.addObject("vlist", list);
		

		return modelAndView;
	}
	
	@RequestMapping(value = "main" , method = { RequestMethod.GET })
	public ModelAndView Loadmain(@ModelAttribute("user") Admin _user, @ModelAttribute("volunteer") Volunteer volunteer) {
		System.out.println("Redirect main------------->");
		ModelAndView modelAndView = new ModelAndView("backend/main");
		
		Admin user = (Admin) session.getAttribute("sessionUser");
		modelAndView.addObject("user", user);

		List<Volunteer> list = volunteerDao.findallvolunteers();
		modelAndView.addObject("vlist", list);

		return modelAndView;
	}
	
	@RequestMapping(value = "logout" , method = { RequestMethod.GET })
	public void logout(HttpServletResponse response) throws IOException {
		session.removeAttribute("sessionUser");
		System.out.println("logout------------------>");
		response.sendRedirect("/elec5619/backend");
	}
	
	@RequestMapping(value =  "search" , method = { RequestMethod.POST })
	public ModelAndView search(@ModelAttribute("user") Admin user,@ModelAttribute("volunteer") Volunteer volunteer) {
		System.out.println("get in admin search------------------->");
		
		List<Volunteer> list = volunteerDao.findByUsername(volunteer.getVname());

		if (list == null) {
			session.setAttribute("search_fail", "User not found!");
			System.out.println("admin search fail------------------->");
			
			ModelAndView modelAndView = new ModelAndView("backend/main");
			
			Admin admin = (Admin) session.getAttribute("sessionUser");
			modelAndView.addObject("user", admin);
			
			list = volunteerDao.findallvolunteers();
			modelAndView.addObject("vlist", list);

			return modelAndView;
		}
		System.out.println("admin search success--------------->");
		
		ModelAndView modelAndView = new ModelAndView("backend/main");
		
		Admin admin = (Admin) session.getAttribute("sessionUser");
		modelAndView.addObject("user", admin);
		modelAndView.addObject("vlist", list);

		return modelAndView;
	}
	@RequestMapping(value =  "modify" , method = { RequestMethod.POST })
	public String backendUpdate(@ModelAttribute("user") Admin user,@ModelAttribute("volunteer") Volunteer volunteer, @RequestParam String action) {
		if (action.equals("Update")) {
			System.out.println("Get in backend volunteer update------------------->");
			Volunteer nuser = volunteer;
			
			String userId = volunteerDao.findByUser((String) volunteer.getVname());

			nuser.setId(userId);
			
			volunteerDao.update(nuser);
			System.out.println("Backend volunteer update success--------------->");

			session.setAttribute("user_update", "User account information update successfully!");
			
			return "redirect:/backend/main";
		}
		 else if (action.equals("Delete")) {
			System.out.println("Get in backend user delete------------------->");
			String userId = volunteerDao.findByUser(volunteer.getVname());
			volunteerDao.delete(userId);
			System.out.println("Backend user delete success--------------->");

			session.setAttribute("user_delete", "User account information delete successfully!");
			
			return "redirect:/backend/main";
		} else {
			System.out.println("Get in backend add user------------------->");
			
			String exist = volunteerDao.findByUser(volunteer.getVname());
			if (exist != null) {
				session.setAttribute("user_add", "Add user fail! Username has been taken!");
				System.out.println("Backend add user duplicated same username-------------------->");
				return "redirect:/backend/main";
			}
			
			volunteerDao.save(volunteer);
			System.out.println("Backend add user success-------------------->");
			session.setAttribute("user_add", "Add user account successfully!");
			
			return "redirect:/backend/main";
		}

}
}



