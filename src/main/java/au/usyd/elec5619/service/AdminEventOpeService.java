package au.usyd.elec5619.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import au.usyd.elec5619.dao.AdminEventOpeDao;
import au.usyd.elec5619.domain.Event;
import net.sf.json.JSONObject;

@Service("adminEventOpeService")
@Transactional
public class AdminEventOpeService {
	private SessionFactory sessionFactory;
	@Autowired
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory=sf;
	}
	
	AdminEventOpeDao dao=new AdminEventOpeDao();
	
	public List<Event> search_event(String cevent) throws Exception {
		// TODO Auto-generated method stub
		List<Event> users = dao.search_event(cevent, sessionFactory);       
        return users;  
		

	}

	public String getEvent(String id){
		Event eve=dao.findById_event(id,sessionFactory);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("event_id", eve.getEvent_id());
		map.put("ename", eve.getEname());
		map.put("eaddress", eve.getEvent_address());
		map.put("esuburb", eve.getEvent_suburb());
		map.put("epostcode", eve.getEvent_postcode());
		map.put("stime", eve.getStime());
		map.put("etime", eve.getEtime());
		map.put("edescription", eve.getDescription());
//		map.put("status", eve.getStatus());
		map.put("organizationid", eve.getOrganization_id());
		map.put("joblimitation", eve.getJob_limitation());
		map.put("agelimitation", eve.getAge_limitation());
		map.put("existnum", eve.getExist_num());
		JSONObject jo = new JSONObject();
		jo = JSONObject.fromObject(map);
		return jo.toString();
	}
	
/*	public String updateEvent(Event event){
		Map<String, Object> map = new HashMap<String, Object>();
		dao.update_event(event, sessionFactory);
		map.put("message", "success");
		JSONObject jo = new JSONObject();
		jo = JSONObject.fromObject(map);
		return jo.toString();
}*/

	public String updateEvent(Event event) {
		// TODO Auto-generated method stub
		
		dao.update_event(event,sessionFactory);
		return "success";
	}

	
	public Event findById_event(String id) {
		// TODO Auto-generated method stub
		return dao.findById_event(id,sessionFactory);
	}
}
