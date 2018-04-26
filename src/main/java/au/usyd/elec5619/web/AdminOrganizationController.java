package au.usyd.elec5619.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import net.sf.json.JSONArray;

import au.usyd.elec5619.common.baseOperation;
import au.usyd.elec5619.domain.Event;
import au.usyd.elec5619.domain.Organization;
import au.usyd.elec5619.service.AdminOrganizationOpeService;
import au.usyd.elec5619.service.AdminViewService;

@Controller
@RequestMapping(value="/admin/**")

public class AdminOrganizationController extends baseOperation{
	@Resource(name="adminOrganizationOpeService")
	private AdminOrganizationOpeService adminOrganizationOpeService;

/*	@RequestMapping(value="/organizationprofile")
	public String updateProfile(Model uniModel){
		return "admin_organization";
	}*/
	
	@RequestMapping("/searchorganization")
	public ModelAndView h_handelList() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin_organization");

		return mv;
	}
	
	@RequestMapping(value = "/search_organization", method = { RequestMethod.POST })
	public String search_organization() throws Exception {
	//	String result = "";
		HttpServletRequest request = this.request;
		PrintWriter out;
		String cevent=null;
		cevent=request.getParameter("csearch");
				
		try {
			List<Organization> organization=adminOrganizationOpeService.search_organization(cevent);
			JSONArray jsonarray = JSONArray.fromObject(organization);
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
		return "admin_organization";
	}
	
	@RequestMapping(value = "/get_organization/{id}", method = { RequestMethod.GET })
	public String get_organization(@ModelAttribute("organization") Organization organization, Model model,@PathVariable(value="id") String id) {

		// organization_edit.updateEvent(event);
		HttpServletRequest request = this.request;
		String a; 
		a=request.getParameter("rowData");
		System.out.println(a);
		Organization organizations = adminOrganizationOpeService.findById_organization(id);
	//	System.out.println(events.getBrief_inf());
		model.addAttribute("organization", organizations);
		return "admin_edit_organization";
	}
	
	@RequestMapping(value="/admin_edit_organization", method =RequestMethod.POST)
	public String update(@ModelAttribute("organization") Organization organization, HttpServletRequest request) {

	
		HttpServletRequest request1 = this.request;
	/*	System.out.println(request1.getParameter("gender_limitation"));
		System.out.println("ssaa");
		System.out.println(event.getEname());*/
		adminOrganizationOpeService.updateOrganization(organization);
		return "admin_edit_organization";

	}
	
	@RequestMapping(value="/getOrganizationProfile", method=RequestMethod.POST)
	public void getOrganization(){
		String result = "";
		PrintWriter out;
		HttpServletRequest request = this.request;
		try {
			String id= request.getParameter("id");
			result = this.adminOrganizationOpeService.getOrganization(id);
			out = this.getWriter();
			out.print(result);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="/updateOrganization", method=RequestMethod.POST)
	public void updateOrganization(){
		String result = "";
		PrintWriter out;
		HttpServletRequest request = this.request;
		try {
			Organization org=new Organization();
			org.setId(request.getParameter("id"));
			org.setEmail(request.getParameter("email"));
			org.setPassword(request.getParameter("password"));
			org.setName(request.getParameter("name"));
			org.setAddress(request.getParameter("address"));			
			org.setSuburb(request.getParameter("suburb"));
			org.setState(request.getParameter("state"));
			org.setPostcode(request.getParameter("postcode"));
			org.setType(request.getParameter("type"));
			org.setPhone(request.getParameter("phone"));
			org.setDescription(request.getParameter("description"));			
			org.setIdentifyfile(request.getParameter("oidentifyfile"));
			result = this.adminOrganizationOpeService.updateOrganization(org);
			out = this.getWriter();
			out.print(result);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}