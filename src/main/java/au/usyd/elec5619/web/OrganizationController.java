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
import au.usyd.elec5619.domain.Organization;
import au.usyd.elec5619.service.OrganizationOpeService;

@Controller
@RequestMapping(value="/organization/**")

public class OrganizationController extends baseOperation{
	@Resource(name="organizationService")
	private OrganizationOpeService organizationService;
	
	/*@RequestMapping("/profile")
    public ModelAndView h_handelList () throws Exception {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("volunteer_profile");
        return mv;
    }*/
	@RequestMapping(value="/profile")
	public String updateProfile(Model uniModel){
		return "organization_profile";
	}
	
	@RequestMapping(value="/getOrganizationProfile", method=RequestMethod.POST)
	public void getOrganization(){
		String result = "";
		PrintWriter out;
		HttpServletRequest request = this.request;
		try {
			String id= request.getParameter("id");
			result = this.organizationService.getOrganization(id);
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
			org.setEmail(request.getParameter("oemail"));
			org.setPassword(request.getParameter("opassword"));
			org.setName(request.getParameter("oname"));
			org.setAddress(request.getParameter("address"));			
			org.setSuburb(request.getParameter("suburb"));
			org.setState(request.getParameter("state"));
			org.setPostcode(request.getParameter("postcode"));
			org.setType(request.getParameter("type"));
			org.setPhone(request.getParameter("ophone"));
			org.setDescription(request.getParameter("description"));			
			org.setIdentifyfile(request.getParameter("oidentifyfile"));
			result = this.organizationService.updateOrganization(org);
			out = this.getWriter();
			out.print(result);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
