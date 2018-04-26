package au.usyd.elec5619.common;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.context.request.ServletWebRequest;

public class baseOperation {
	
	  protected HttpServletRequest request;
	  protected HttpServletResponse response;
	  protected HttpSession session;

	  @ModelAttribute
	   public void setReqAndRes(HttpServletRequest request, HttpServletResponse response){
	       this.request = request;
	       this.response = response;
	       this.session = request.getSession();

	   }
	
	
	protected PrintWriter getWriter() throws IOException {
		
		HttpServletResponse response = this.response;
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		response.setContentType("text/html; charset=utf-8");
		return response.getWriter();
	}
	
	protected void print(String info) throws IOException {
		HttpServletResponse response = this.response;
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out=response.getWriter();
		out.print(info);
		out.flush();
	}

	
}
