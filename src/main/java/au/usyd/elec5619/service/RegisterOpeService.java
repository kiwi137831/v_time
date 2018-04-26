package au.usyd.elec5619.service;

import java.util.HashMap;
import java.util.Map;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import au.usyd.elec5619.dao.RegisterOpeDao;
import au.usyd.elec5619.domain.Volunteer;
import au.usyd.elec5619.domain.Admin;
import au.usyd.elec5619.domain.Organization;
import net.sf.json.JSONObject;

@Service(value="RegisterService")
@Transactional
public class RegisterOpeService {
	private SessionFactory sessionFactory;
	@Autowired
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory=sf;
	}
	
	RegisterOpeDao dao=new RegisterOpeDao();
	
//	public String getVolunteer(String id){
//		Volunteer volun=dao.findById(id,sessionFactory);
//		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("vemail", volun.getVemail());
//		JSONObject jo = new JSONObject();
//		jo = JSONObject.fromObject(map);
//		return jo.toString();
//	}
	
	public String addVolunteer(Volunteer volunteer){
		Map<String, Object> map = new HashMap<String, Object>();
		dao.add_volunteer(volunteer, sessionFactory);
		map.put("message", "success");
		JSONObject jo = new JSONObject();
		jo = JSONObject.fromObject(map);
		return jo.toString();
	}
	
	public String addOrganization(Organization organization){
		Map<String, Object> map = new HashMap<String, Object>();
		dao.add_organization(organization, sessionFactory);
		map.put("message", "success");
		JSONObject jo = new JSONObject();
		jo = JSONObject.fromObject(map);
		return jo.toString();
	}
	
	public String matchVolunteerAccount(String username){
		Map<String, String> map = new HashMap<String, String>();
		String volun=dao.getVolunteer_account(sessionFactory, username);
		if(volun.equals("yes")){
			map.put("message", "success");
		}
		else{
			map.put("message", "Fail");
		}
		
		JSONObject jo = new JSONObject();
		jo = JSONObject.fromObject(map);
		return jo.toString();
	}
	
	public String matchOrganizationAccount(String username){
		Map<String, String> map = new HashMap<String, String>();
		String org=dao.getOrganization_account(sessionFactory, username);
		if (org.equals("yes")){
			map.put("message", "success");
		}
		else{
			map.put("message", "Fail");
		}
		
		JSONObject jo = new JSONObject();
		jo = JSONObject.fromObject(map);
		return jo.toString();
	}
}
