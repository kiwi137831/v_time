package au.usyd.elec5619.service;

import java.util.HashMap;
import java.util.Map;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import au.usyd.elec5619.dao.AdminAddOpeDao;
import au.usyd.elec5619.domain.Organization;
import au.usyd.elec5619.domain.Event;
import net.sf.json.JSONObject;

@Service("adminAddOpeService")
@Transactional
public class AdminAddOpeService {
	private SessionFactory sessionFactory;
	@Autowired
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory=sf;
	}
	
	AdminAddOpeDao dao= new AdminAddOpeDao();
	
	public String addOrganization(Organization organization){
		Map<String, Object> map = new HashMap<String, Object>();
		dao.add_organization(organization, sessionFactory);
		map.put("message", "success");
		JSONObject jo = new JSONObject();
		jo = JSONObject.fromObject(map);
		return jo.toString();
	}	
	public String addEvent(Event event){
		Map<String, Object> map = new HashMap<String, Object>();
		dao.add_event(event, sessionFactory);
		map.put("message", "success");
		JSONObject jo = new JSONObject();
		jo = JSONObject.fromObject(map);
		return jo.toString();
	}
	

}
