package au.usyd.elec5619.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import au.usyd.elec5619.common.baseOperation;
import au.usyd.elec5619.domain.Event;
import au.usyd.elec5619.service.AdminEventOpeService;
import net.sf.json.JSONArray;

@Controller
@RequestMapping(value="/admin/**")

public class AdminEventController extends baseOperation{
	@Resource(name="adminEventOpeService")
	private AdminEventOpeService adminEventOpeService;

/*	@RequestMapping(value="/eventprofile")
	public String updateProfile(Model uniModel){
		return "admin_edit_event";
	}*/
	
	@RequestMapping("/searchevent")
	public ModelAndView h_handelList() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin_event");

		return mv;
	}
	
	@RequestMapping(value = "/search_event", method = { RequestMethod.POST })
	public String search_event() throws Exception {
	//	String result = "";
		HttpServletRequest request = this.request;
		PrintWriter out;
		String cevent=null;
		cevent=request.getParameter("csearch");
		
		
		try {
			List<Event> event=adminEventOpeService.search_event(cevent);
			JSONArray jsonarray = JSONArray.fromObject(event);
			 String json = jsonarray.toString();
			System.out.println(json);	
			System.out.println(cevent);
			out = this.getWriter();
			out.print(json);
			
			
			out.flush();
			out.close(); 
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "admin_event";
	}
	
	@RequestMapping(value = "/get_event/{id}", method = { RequestMethod.GET })
	public String get_event(@ModelAttribute("event") Event event, Model model,@PathVariable(value="id") String id) {

		// organization_edit.updateEvent(event);
		HttpServletRequest request = this.request;
		String a; 
		a=request.getParameter("rowData");
		System.out.println(a);
		Event events = adminEventOpeService.findById_event(id);
	//	System.out.println(events.getBrief_inf());
		model.addAttribute("event", events);
		return "admin_edit_event";
	}

	@RequestMapping(value="/admin_edit_event", method =RequestMethod.POST)
	public String update(@ModelAttribute("event") Event event, HttpServletRequest request) {

	
		HttpServletRequest request1 = this.request;
	/*	System.out.println(request1.getParameter("gender_limitation"));
		System.out.println("ssaa");
		System.out.println(event.getEname());*/
		adminEventOpeService.updateEvent(event);
		return "admin_edit_event";

	}
	
	
	@RequestMapping(value="/getEventProfile", method=RequestMethod.POST)
	public void getOrganization(){
		String result = "";
		PrintWriter out;
		HttpServletRequest request = this.request;
		try {
			String id= request.getParameter("id");
			result = this.adminEventOpeService.getEvent(id);
			out = this.getWriter();
			out.print(result);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	@RequestMapping(value="/updateEvent", method=RequestMethod.POST)
	public void updateEvent(){
		String result = "";
		PrintWriter out;
		HttpServletRequest request = this.request;
		try {
			Event eve=new Event();
			eve.setEvent_id(request.getParameter("event_id"));
			eve.setEname(request.getParameter("ename"));
			eve.setEvent_address(request.getParameter("eaddress"));
			eve.setEvent_suburb(request.getParameter("esuburb"));			
			eve.setEvent_state(request.getParameter("estate"));
			eve.setEvent_postcode(request.getParameter("epostcode"));
			eve.setStime(request.getParameter("stime"));
			eve.setEtime(request.getParameter("etime"));
			eve.setStatus(request.getParameter("status"));
//			eve.setOrganization_id(request.getParameter("organizationid"));
			eve.setJob_limitation(request.getParameter("joblimitation"));
			eve.setAge_limitation(request.getParameter("agelimitation"));
			eve.setExist_num(request.getParameter("existnum"));			
			eve.setDescription(request.getParameter("edescription"));
			result = this.adminEventOpeService.updateEvent(eve);
			out = this.getWriter();
			out.print(result);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
