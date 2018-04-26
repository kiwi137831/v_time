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
import au.usyd.elec5619.domain.Volunteer;
import au.usyd.elec5619.service.RegisterOpeService;

@Controller
@RequestMapping(value="/v-time/**")

public class RegisterController extends baseOperation{
	@Resource(name="RegisterService")
	private RegisterOpeService RegisterService;
	
	
	/*@RequestMapping("/profile")
    public ModelAndView h_handelList () throws Exception {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("volunteer_profile");
        return mv;
    }*/
	@RequestMapping(value="/organizationregister")
	public String submitogranization(Model uniModel){
		return "organization_register";
	}
	
	@RequestMapping(value="/volunteerregister")
	public String submitovolunteer(Model uniModel){
		return "volunteer_register";
	}
	
//	@RequestMapping(value="/getVolunteerProfile", method=RequestMethod.POST)
//	public void getVolunteer(){
//		String result = "";
//		PrintWriter out;
//		HttpServletRequest request = this.request;
//		try {
//			String vid= request.getParameter("vid");
//			result = this.RegisterService.getVolunteer(vid);
//			out = this.getWriter();
//			out.print(result);
//			out.flush();
//			out.close();
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//	}
	
	@RequestMapping(value="/addVolunteer", method=RequestMethod.POST)
	public void updateVolunteer(){
		String result = "";
		PrintWriter out;
		HttpServletRequest request = this.request;
		try {
			Volunteer von=new Volunteer();
			UUID uuid = UUID.randomUUID();
			String str = uuid.toString();
			von.setId(str);
			von.setVemail(request.getParameter("vemail"));
			von.setVpassword(request.getParameter("vpassword"));
			von.setVname(request.getParameter("vname"));
			von.setAge(request.getParameter("age"));			
			von.setGender(request.getParameter("gender"));
			von.setJob(request.getParameter("job"));
			von.setVidentifyfile(request.getParameter("videntifyfile"));
			result = this.RegisterService.addVolunteer(von);
			out = this.getWriter();
			out.print(result);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
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
			org.setEmail(request.getParameter("oemail"));
			org.setPassword(request.getParameter("opassword"));
			org.setName(request.getParameter("oname"));
			org.setAddress(request.getParameter("address"));			
			org.setSuburb(request.getParameter("suburb"));
			org.setState(request.getParameter("state"));
			org.setPostcode(request.getParameter("postcode"));
			org.setType(request.getParameter("type"));
//			org.setOidentifyfile(request.getParameter("oidentifyfile"));
			result = this.RegisterService.addOrganization(org);
			out = this.getWriter();
			out.print(result);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="/registervolunteercheck", method=RequestMethod.POST)
	public void checkvolunteeracc(){
		String result = "";
		PrintWriter out;
		HttpServletRequest request = this.request;
		try {
			String username= request.getParameter("vemail");
			result = this.RegisterService.matchVolunteerAccount(username);
			out = this.getWriter();
			out.print(result);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="/registerorganizationcheck", method=RequestMethod.POST)
	public void checkorganizationacc(){
		String result = "";
		PrintWriter out;
		HttpServletRequest request = this.request;
		try {
			String username= request.getParameter("oemail");
			result = this.RegisterService.matchOrganizationAccount(username);
			out = this.getWriter();
			out.print(result);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
