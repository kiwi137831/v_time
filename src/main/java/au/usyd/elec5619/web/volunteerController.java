package au.usyd.elec5619.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import au.usyd.elec5619.common.baseOperation;
import au.usyd.elec5619.domain.Volunteer;
import au.usyd.elec5619.service.VolunteerOpeService;

@Controller
@RequestMapping(value="/volunteer/**")

public class volunteerController extends baseOperation{
	@Resource(name="volunteerService")
	private VolunteerOpeService volunteerService;
	
	/*@RequestMapping("/profile")
    public ModelAndView h_handelList () throws Exception {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("volunteer_profile");
        return mv;
    }*/
	@RequestMapping(value="/mainPage")
	public String mainPageProfile(Model uniModel){
		return "volunteer_mainPage";
	}
	
	@RequestMapping(value="/profile")
	public String updateProfile(Model uniModel){
		return "volunteer_profile";
	}
	
	@RequestMapping(value="/event")
	public String volunteerEvent(Model uniModel){
		return "volunteer_event";
	}
	
	@RequestMapping(value="/message")
	public String volunteerMessage(Model uniModel){
		return "volunteer_message";
	}
	
	@RequestMapping(value="/eventDescription")
	public String volunteerEventDescription(Model uniModel){
		return "volunteer_event_description";
	}
	
	@RequestMapping(value="/eventRequirement")
	public String volunteerEventRequirement(Model uniModel){
		return "volunteer_event_requirement";
	}
	
	@RequestMapping(value="/getVolunteerProfile", method=RequestMethod.POST)
	public void getVolunteer(){
		String result = "";
		PrintWriter out;
		HttpServletRequest request = this.request;
		try {
			String vid= request.getParameter("vid");
			result = this.volunteerService.getVolunteer(vid);
			out = this.getWriter();
			out.print(result);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="/updateVolunteer", method=RequestMethod.POST)
	public void updateVolunteer(){
		String result = "";
		PrintWriter out;
		HttpServletRequest request = this.request;
		try {
			Volunteer von=new Volunteer();
			von.setId(request.getParameter("id"));
			von.setVemail(request.getParameter("vemail"));
			von.setVpassword(request.getParameter("vpassword"));
			von.setVname(request.getParameter("vname"));
			von.setGender(request.getParameter("gender"));
			von.setJob(request.getParameter("job"));
			von.setVidentifyfile(request.getParameter("videntifyfile"));
			von.setVphone(request.getParameter("vphone"));
			result = this.volunteerService.updateVolunteer(von);
			out = this.getWriter();
			out.print(result);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
