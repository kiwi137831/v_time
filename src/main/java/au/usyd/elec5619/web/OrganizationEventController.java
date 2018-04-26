package au.usyd.elec5619.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.annotation.Annotation;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import au.usyd.elec5619.common.baseOperation;
import au.usyd.elec5619.domain.Event;
import au.usyd.elec5619.domain.Organization;
import au.usyd.elec5619.domain.Volunteer;
import au.usyd.elec5619.domain.Volunteer_einfo;
import au.usyd.elec5619.domain.Volunteer_event;
import au.usyd.elec5619.service.Organization_edit;
import net.sf.json.JSONArray;


@Controller
@RequestMapping(value = "/organization/**")
@SessionAttributes(value = "event")
public class OrganizationEventController extends baseOperation implements Controller {
	static String aid="";
	static String url="";
	
	
	@ModelAttribute("event")
	public Event initEvent() {

		return new Event();
	}

	@Resource(name = "organization_edit")
	@Autowired
	private Organization_edit organization_edit;

	/*
	 * direct to search page
	 */
    @RequestMapping(value = "/organizationtest", method = RequestMethod.GET)
    public String findAll() {
       
     
        return "organization_search";
	
    }
	
	@RequestMapping(value ="/search/{id}",method = { RequestMethod.GET })
	public ModelAndView h_handelList(@PathVariable(value="id") String id) throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("organization_search");
		aid=id;
		return mv;
	}

	
	/*
	 *    search event 
	 */
	@RequestMapping(value = "/search", method = { RequestMethod.POST })
	public String search_event() throws Exception {
	//	String result = "";
		HttpServletRequest request = this.request;
		PrintWriter out;
		String cevent=null;
		url=request.getParameter("url");
	
		cevent=request.getParameter("csearch");
		
		System.out.println(aid);
		
		try {
			List<Event> event=organization_edit.search_event(cevent,aid);
			JSONArray jsonarray = JSONArray.fromObject(event);
			 String json = jsonarray.toString();
			System.out.println(json);	
			System.out.println(cevent);
			System.out.println(url);
			out = this.getWriter();
			out.print(json);
			
			
			out.flush();
			out.close(); 
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "organization_search";
	}
	/*
	 * get event information for database
	 */
	
	@RequestMapping(value = "/get_event/{id}", method = { RequestMethod.GET })
	public String get_event(@ModelAttribute("event") Event event, Model model,@PathVariable(value="id") String id) {

		// organization_edit.updateEvent(event);
		HttpServletRequest request = this.request;
		String a; 
		a=request.getParameter("rowData");
		System.out.println(a);
		Event events = organization_edit.findById_event(id);
	//	System.out.println(events.getBrief_inf());
		model.addAttribute("event", events);
		return "organization_modify";
	}

	/*
	 * modify event information
	 */
	
	@RequestMapping(value="/organization_modify", method =RequestMethod.POST)
	public String update(@ModelAttribute("event") Event event, HttpServletRequest request) {

	
		HttpServletRequest request1 = this.request;
	/*	System.out.println(request1.getParameter("gender_limitation"));
		System.out.println("ssaa");
		System.out.println(event.getEname());*/
		organization_edit.updateEvent(event);
		return "organization_modify";

	}

	/*
	 * get information of volunteer
	 */
	
	@RequestMapping(value = "/apply/{id}", method = { RequestMethod.GET })
	public String  volunteer_apply (@ModelAttribute("Organization") Organization organization, Model model,@PathVariable(value="id") String id) {

		HttpServletRequest request = this.request;
		String a; 
	//	a=request.getParameter("rowData");
	//	System.out.println(a);
		Organization organizations = organization_edit.findById_organization(id);
		System.out.println(organizations.getId());
		model.addAttribute("Organization", organizations);
		
		
		
		return "organization_apply";
	}
	
	@RequestMapping(value = "/pass", method = { RequestMethod.POST })
	public void  pass_apply () {
		HttpServletRequest request = this.request;
		String ve_id = request.getParameter("ve_id");
		String event_id=request.getParameter("event_id"); 
		
		Event event = organization_edit.findById_event(event_id);
		
		Volunteer_event ve= organization_edit.findbyVeid(ve_id);
		int isapply=Integer.parseInt(ve.getStatus());
		int isover = Integer.parseInt(event.getVolunteer_num()) -Integer.parseInt(event.getExist_num());
		
		System.out.println(ve.getStatus());
		
	//	if ((isapply==0)&&(isover>0) ){
		int num1=Integer.parseInt(event.getExist_num())+1;
		String num =String.valueOf(num1);
		event.setExist_num(num);
		ve.setStatus("1");
		organization_edit.updateEvent(event);
		organization_edit.updateve(ve);
		
//		}
//		else
//		;
//		
	
	}
	
	
	




	@RequestMapping(value = "/search_v", method = { RequestMethod.POST })
	public String search_v() throws Exception {
	//	String result = "";
		HttpServletRequest request = this.request;
		PrintWriter out;
		String v_search=null;
		v_search=request.getParameter("v_search");
		
		
		try {
			List<Volunteer_einfo> organization=organization_edit.search_v(v_search);
			JSONArray jsonarray = JSONArray.fromObject(organization);
			 String json = jsonarray.toString();
			System.out.println(json);	
			out = this.getWriter();
			out.print(json);
			
			
			out.flush();
			out.close(); 
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "organization_apply";
	}

	
	
	/*
	 * (non-Javadoc)
	 * @see java.lang.annotation.Annotation#annotationType()
	 */
	
	@RequestMapping(value = "/check/{oid}/{id}", method = { RequestMethod.GET })
	public String details_volunteer(@ModelAttribute("Volunteer") Volunteer volunteer, Model model,@PathVariable(value="id") String id,@PathVariable(value="oid") String oid) {

		// organization_edit.updateEvent(event);
		HttpServletRequest request = this.request;
		String a; 
		a=request.getParameter("rowData");
		System.out.println(a);
		Organization o=organization_edit.findById_organization(oid);
		model.addAttribute("Organization", o);
		Volunteer volunteers = organization_edit.findById_v(id);
	//	System.out.println(events.getBrief_inf());
		model.addAttribute("Volunteer", volunteers);
		return "organization_volunnteer_info";
	}
	
	
	@RequestMapping(value ="/newevent/{id}",method = { RequestMethod.GET })
	public ModelAndView new_event(@PathVariable(value="id") String id,Model model) throws Exception {
		ModelAndView mv = new ModelAndView();
		String uuid=UUID.randomUUID().toString().replace("-", "");
		mv.setViewName("organization_addevent");
		
		  Event events=  new Event(uuid, "", "", "", "", "", "", "", "", "", "start", id, "", "", "", "0", "") ;

		model.addAttribute("event", events);
		Organization o=organization_edit.findById_organization(id);
		model.addAttribute("Organization", o);
		
		
		return mv;
	}
	
	
	@RequestMapping(value="/addevent", method =RequestMethod.POST)
	public String newevent(@ModelAttribute("event") Event event, HttpServletRequest request) {


		organization_edit.updateEvent(event);
		return   "organization_addevent";

	}
	
	
	
	
	
	@Override
	public Class<? extends Annotation> annotationType() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String value() {
		// TODO Auto-generated method stub
		return null;
	}

}
