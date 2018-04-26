package au.usyd.elec5619.service;

import java.util.HashMap;
import java.util.Map;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import au.usyd.elec5619.dao.VolunteerOpeDao;
import au.usyd.elec5619.domain.Volunteer;
import net.sf.json.JSONObject;

@Service(value="volunteerService")
@Transactional
public class VolunteerOpeService {
	private SessionFactory sessionFactory;
	@Autowired
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory=sf;
	}
	
	VolunteerOpeDao dao=new VolunteerOpeDao();
	public String getVolunteer(String id){
		Volunteer volun=dao.findById(id,sessionFactory);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("vid", volun.getId());
		map.put("vemail", volun.getVemail());
		map.put("vpassword", volun.getVpassword());
		map.put("vname", volun.getVname());
		map.put("gender", volun.getGender());
		map.put("job", volun.getJob());
		map.put("videntifyfile", volun.getVidentifyfile());
		map.put("vphone", volun.getVphone());
		JSONObject jo = new JSONObject();
		jo = JSONObject.fromObject(map);
		return jo.toString();
	}
	
	public String updateVolunteer(Volunteer volunteer){
		Map<String, Object> map = new HashMap<String, Object>();
		dao.update(volunteer, sessionFactory);
		map.put("message", "success");
		JSONObject jo = new JSONObject();
		jo = JSONObject.fromObject(map);
		return jo.toString();
	}
}
