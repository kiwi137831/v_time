package au.usyd.elec5619.service;

import java.util.HashMap;
import java.util.Map;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import au.usyd.elec5619.dao.LoginOpeDao;
import au.usyd.elec5619.domain.Volunteer;
import au.usyd.elec5619.domain.Organization;
import au.usyd.elec5619.domain.Admin;
import net.sf.json.JSONObject;

@Service(value="LoginService")
@Transactional
public class LoginOpeService {
	private SessionFactory sessionFactory;
	@Autowired
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory=sf;
	}
	
	LoginOpeDao dao=new LoginOpeDao();
	
//	public String getVolunteer(String id){
//		Volunteer volun=dao.findById(id,sessionFactory);
//		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("vemail", volun.getVemail());
//		JSONObject jo = new JSONObject();
//		jo = JSONObject.fromObject(map);
//		return jo.toString();
//	}
	
	public String matchinfo(String username, String password){
		Map<String, String> map = new HashMap<String, String>();
		Volunteer volun=dao.getVolunteer_info(sessionFactory, username, password);
		Organization org=dao.getOrganization_info(sessionFactory, username, password);
		Admin admin=dao.getAdmin_info(sessionFactory, username, password);
		if(volun != null){
			map.put("id", volun.getId());
			map.put("type", "volunteer");
			map.put("message", "success");
		}
		else if (org != null){
			map.put("id", org.getId());
			map.put("type", "organization");
			map.put("message", "success");
		}
		else if (admin != null){
			map.put("id", admin.getId());
			map.put("type", "admin");
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
