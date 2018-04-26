package au.usyd.elec5619.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import au.usyd.elec5619.dao.Volunteer_EventOpeDao;
import au.usyd.elec5619.domain.Event;
import au.usyd.elec5619.domain.Volunteer;
import au.usyd.elec5619.domain.Volunteer_event;
import net.sf.json.JSONObject;

@Service(value="Volunteer_EventService")
@Transactional
public class Volunteer_EventOpeService {
	private SessionFactory sessionFactory;
	@Autowired
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory=sf;
	}
	
	Volunteer_EventOpeDao dao=new Volunteer_EventOpeDao();
	public String getEvents(){
		Map<String, Object> all_map = new HashMap<String, Object>();
		List<Map<String, Object>> list=new ArrayList<Map<String, Object>>();
		List<Event> events=dao.getEvents(sessionFactory);
		 for(int i=0; i<events.size(); i++)    {   
			 Map<String, Object> map = new HashMap<String, Object>();
			 Event e = events.get(i);   
			 map.put("event_id", e.getEvent_id()); 
			 map.put("ename", e.getEname());
			 map.put("brief_inf", e.getBrief_inf());
			 map.put("stime", e.getStime());
			 map.put("event_address", e.getEvent_address());
			 map.put("event_suburb", e.getEvent_suburb()); 
			 map.put("exist_num", e.getExist_num());
			 list.add(map);
		   } 
		all_map.put("events", list);
		JSONObject jo = new JSONObject();
		jo = JSONObject.fromObject(all_map);
		return jo.toString();
	}
	
	public String getEventById(String id){
		Event e=dao.getEventById(id,sessionFactory);
		Map<String, Object> map = new HashMap<String, Object>();
		 map.put("event_id", e.getEvent_id()); 
		 map.put("ename", e.getEname());
		 map.put("etime", e.getEtime());
		 map.put("description", e.getDescription());
		 map.put("brief_inf", e.getBrief_inf());
		 map.put("stime", e.getStime());
		 map.put("event_address", e.getEvent_address());
		 map.put("event_suburb", e.getEvent_suburb()); 
		 map.put("exist_num", e.getExist_num());
		 map.put("job_limitation", e.getJob_limitation());
		 map.put("gender_limitation", e.getGender_limitation());
		 map.put("age_limitation", e.getAge_limitation());
		 //map.put("volunteer_num ", e.getVolunteer_num());
		JSONObject jo = new JSONObject();
		jo = JSONObject.fromObject(map);
		return jo.toString();
	}
	
	public String getActiveEvents(String volunteer_id){
		Map<String, Object> all_map = new HashMap<String, Object>();
		List<Map<String, Object>> list=new ArrayList<Map<String, Object>>();
		List<Volunteer_event> events=dao.getActiveEvents(sessionFactory,volunteer_id);
		 for(int i=0; i<events.size(); i++)    {   
			 Map<String, Object> map = new HashMap<String, Object>();
			 Volunteer_event e = events.get(i);   
			 map.put("ve_id", e.getVe_id()); 
			 map.put("event_id", e.getEvent_id());
			 map.put("applytm", e.getApplytm());
			 map.put("status", e.getStatus());
			 list.add(map);
		   } 
		all_map.put("events", list);
		JSONObject jo = new JSONObject();
		jo = JSONObject.fromObject(all_map);
		return jo.toString();
	}
	
	public String getHistoryEvents(String volunteer_id){
		Map<String, Object> all_map = new HashMap<String, Object>();
		List<Map<String, Object>> list=new ArrayList<Map<String, Object>>();
		List<Volunteer_event> events=dao.getHistoryEvents(sessionFactory,volunteer_id);
		 for(int i=0; i<events.size(); i++)    {   
			 Map<String, Object> map = new HashMap<String, Object>();
			 Volunteer_event e = events.get(i);   
			 map.put("ve_id", e.getVe_id()); 
			 map.put("event_id", e.getEvent_id());
			 map.put("Comment", e.getComment());
			 map.put("Rating", e.getRating());
			 list.add(map);
		   } 
		all_map.put("events", list);
		JSONObject jo = new JSONObject();
		jo = JSONObject.fromObject(all_map);
		return jo.toString();
	}
	
	public String findByCondition(String condition){
		Map<String, Object> all_map = new HashMap<String, Object>();
		List<Map<String, Object>> list=new ArrayList<Map<String, Object>>();
		List<Event> events=dao.findByCondition(condition,sessionFactory);
		 for(int i=0; i<events.size(); i++)    {   
			 Map<String, Object> map = new HashMap<String, Object>();
			 Event e = events.get(i);   
			 map.put("event_id", e.getEvent_id()); 
			 map.put("ename", e.getEname());
			 map.put("brief_inf", e.getBrief_inf());
			 map.put("stime", e.getStime());
			 map.put("event_address", e.getEvent_address());
			 map.put("event_suburb", e.getEvent_suburb()); 
			 map.put("exist_num", e.getExist_num());
			 list.add(map);
		   } 
		all_map.put("events", list);
		JSONObject jo = new JSONObject();
		jo = JSONObject.fromObject(all_map);
		return jo.toString();
	}
	
	public String checkVolunteerEventState(String event_id, String volunteer_id){
		String state;
		Map<String, String> map = new HashMap<String, String>();
		List<Volunteer_event> list=dao.getVolunteerEventByCondition(sessionFactory, event_id, volunteer_id);
		if(list.size()==0){
			map.put("state", "3");
		}else{
			state=list.get(0).getStatus();
			if(state.equals("2")){
				map.put("state", "2");
			}else if(state.equals("1")){
				map.put("state", "1");
			}else if(state.equals("0")){
				map.put("state", "0");
			}
		}
		JSONObject jo = new JSONObject();
		jo = JSONObject.fromObject(map);
		return jo.toString();
	}
	/*public String updateVolunteer(Volunteer volunteer){
		Map<String, Object> map = new HashMap<String, Object>();
		dao.update(volunteer, sessionFactory);
		map.put("message", "success");
		JSONObject jo = new JSONObject();
		jo = JSONObject.fromObject(map);
		return jo.toString();
	}*/
	public String insertVE(Volunteer_event ve){
		Map<String, Object> map = new HashMap<String, Object>();
		dao.insertVE(ve, sessionFactory);
		map.put("message", "success");
		JSONObject jo = new JSONObject();
		jo = JSONObject.fromObject(map);
		return jo.toString();
	}
}
