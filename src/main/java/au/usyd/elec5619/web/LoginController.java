package au.usyd.elec5619.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import au.usyd.elec5619.common.baseOperation;
import au.usyd.elec5619.service.LoginOpeService;



@Controller
@RequestMapping(value="/v-time/**")

public class LoginController extends baseOperation{
	@Resource(name="LoginService")
	private LoginOpeService LoginService;
	
	
	/*@RequestMapping("/profile")
    public ModelAndView h_handelList () throws Exception {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("volunteer_profile");
        return mv;
    }*/
	@RequestMapping(value="/login")
	public String updateusrinfo(Model uniModel){
		return "login";
	}
	
	@RequestMapping(value="/resetpassword")
	public String updatepassword(Model uniModel){
		return "forgotpw";
	}
	
	@RequestMapping(value="/logincheck", method=RequestMethod.POST)
	public void submituserinfo(){
		String result = "";
		PrintWriter out;
		HttpServletRequest request = this.request;
		try {
			String username= request.getParameter("username");
			String password= request.getParameter("password");
			result = this.LoginService.matchinfo(username,password);
			out = this.getWriter();
			out.print(result);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
