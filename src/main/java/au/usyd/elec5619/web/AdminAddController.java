package au.usyd.elec5619.web;

import java.util.UUID;

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
import au.usyd.elec5619.domain.Organization;
import au.usyd.elec5619.domain.Event;
import au.usyd.elec5619.service.AdminAddOpeService;

@Controller
@RequestMapping(value="/admin/**")

public class AdminAddController extends baseOperation{
	@Resource(name="adminAddOpeService")
	private AdminAddOpeService adminAddOpeService;
	
	@RequestMapping(value="/organizationregister")
	public String submitogranization(Model uniModel){
		return "admin_add_organization";
	}
	
	@RequestMapping(value="/eventregister")
	public String submitevent(Model uniModel){
		return "admin_add_event";
	}
	
	@RequestMapping(value="/addOrganization", method=RequestMethod.POST)
	public void updateOrganization(){
		String result = "";
		PrintWriter out;
		HttpServletRequest request = this.request;
		try {
			Organization org=new Organization();
			UUID uuid = UUID.randomUUID();
			String str = uuid.toString();
			org.setId(str);
			org.setEmail(request.getParameter("email"));
			org.setPassword(request.getParameter("password"));
			org.setName(request.getParameter("name"));
			org.setAddress(request.getParameter("address"));
			org.setPhone(request.getParameter("phone"));
			org.setSuburb(request.getParameter("suburb"));
			org.setState(request.getParameter("state"));
			org.setPostcode(request.getParameter("postcode"));
			org.setType(request.getParameter("type"));
			org.setDescription(request.getParameter("desciption"));
//			org.setOidentifyfile(request.getParameter("oidentifyfile"));
			result = this.adminAddOpeService.addOrganization(org);
			out = this.getWriter();
			out.print(result);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	@RequestMapping(value="/addEvent", method=RequestMethod.POST)
	public void updateEvent(){
		String result = "";
		PrintWriter out;
		HttpServletRequest request = this.request;
		try {
			Event eve=new Event();
			UUID uuid = UUID.randomUUID();
			String str = uuid.toString();
			eve.setEvent_id(str);
			eve.setEname(request.getParameter("ename"));
			eve.setEvent_address(request.getParameter("eaddress"));
			eve.setEvent_suburb(request.getParameter("esuburb"));			
			eve.setEvent_state(request.getParameter("estate"));
			eve.setEvent_postcode(request.getParameter("epostcode"));
			eve.setStime(request.getParameter("stime"));
			eve.setEtime(request.getParameter("etime"));
//			eve.setStatus(request.getParameter("status"));
//			eve.setOrganization_id(request.getParameter("organizationid"));
			eve.setJob_limitation(request.getParameter("joblimitation"));
			eve.setAge_limitation(request.getParameter("agelimitation"));
			eve.setExist_num(request.getParameter("existnum"));			
			eve.setDescription(request.getParameter("edescription"));
			result = this.adminAddOpeService.addEvent(eve);
			out = this.getWriter();
			out.print(result);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
