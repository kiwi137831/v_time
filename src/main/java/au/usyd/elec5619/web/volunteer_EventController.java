package au.usyd.elec5619.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import au.usyd.elec5619.common.baseOperation;
import au.usyd.elec5619.domain.Volunteer;
import au.usyd.elec5619.domain.Volunteer_event;
import au.usyd.elec5619.service.Volunteer_EventOpeService;

import java.util.Date;
import java.util.UUID;

@Controller
@RequestMapping(value="/volunteer_event/**")

public class volunteer_EventController extends baseOperation{
	@Resource(name="Volunteer_EventService")
	private Volunteer_EventOpeService volunteer_EventOpeService;
	
	/*@RequestMapping("/profile")
    public ModelAndView h_handelList () throws Exception {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("volunteer_profile");
        return mv;
    }*/

	@RequestMapping(value="/getEvents", method=RequestMethod.POST)
	public void getEvents(){
		String result = "";
		PrintWriter out;
		try {
			result = this.volunteer_EventOpeService.getEvents();
			out = this.getWriter();
			out.print(result);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="/getEventById", method=RequestMethod.POST)
	public void getVolunteer(){
		String result = "";
		PrintWriter out;
		HttpServletRequest request = this.request;
		try {
			String id= request.getParameter("event_id");
			result = this.volunteer_EventOpeService.getEventById(id);
			out = this.getWriter();
			out.print(result);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="/getActiveEvents", method=RequestMethod.POST)
	public void getActiveEvents(){
		String result = "";
		PrintWriter out;
		HttpServletRequest request = this.request;
		try {
			String volunteer_id= request.getParameter("volunteer_id");
			result = this.volunteer_EventOpeService.getActiveEvents(volunteer_id);
			out = this.getWriter();
			out.print(result);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="/getHistoryEvents", method=RequestMethod.POST)
	public void getHistoryEvents(){
		String result = "";
		PrintWriter out;
		HttpServletRequest request = this.request;
		try {
			String volunteer_id= request.getParameter("volunteer_id");
			result = this.volunteer_EventOpeService.getHistoryEvents(volunteer_id);
			out = this.getWriter();
			out.print(result);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="/getEventsForCondition", method=RequestMethod.POST)
	public void findByCondition(){
		String result = "";
		PrintWriter out;
		HttpServletRequest request = this.request;
		try {
			String condition= request.getParameter("search_content");
			result = this.volunteer_EventOpeService.findByCondition(condition);
			out = this.getWriter();
			out.print(result);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="/checkVolunteerEventState", method=RequestMethod.POST)
	public void checkVolunteerEventState(){
		String result = "";
		PrintWriter out;
		HttpServletRequest request = this.request;
		try {
			String event_id= request.getParameter("event_id");
			String volunteer_id= request.getParameter("volunteer_id");
			result = this.volunteer_EventOpeService.checkVolunteerEventState(event_id, volunteer_id);
			out = this.getWriter();
			out.print(result);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="/insertV_E", method=RequestMethod.POST)
	public void insertV_E(){
		String result = "";
		PrintWriter out;
		HttpServletRequest request = this.request;
		try {
			Volunteer_event ve=new Volunteer_event();
			String uuid = UUID.randomUUID().toString().replaceAll("-", "");
			ve.setVe_id(uuid);
			ve.setEvent_id(request.getParameter("event_id"));
			ve.setVolunteer_id(request.getParameter("volunteer_id"));
			ve.setStatus("0");
			Date date=new Date();
			DateFormat format=new SimpleDateFormat("yyyy-MM-dd");
			String time=format.format(date);
			ve.setApplytm(time);
			result = this.volunteer_EventOpeService.insertVE(ve);
			out = this.getWriter();
			out.print(result);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
