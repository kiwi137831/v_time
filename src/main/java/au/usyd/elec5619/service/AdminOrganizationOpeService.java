package au.usyd.elec5619.service;

import java.util.HashMap;
import java.util.Map;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import au.usyd.elec5619.dao.AdminOrganizationOpeDao;
import au.usyd.elec5619.domain.Event;
import au.usyd.elec5619.domain.Organization;
import net.sf.json.JSONObject;

@Service("adminOrganizationOpeService")
@Transactional
public class AdminOrganizationOpeService {
	private SessionFactory sessionFactory;
	@Autowired
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory=sf;
	}
	
	AdminOrganizationOpeDao dao=new AdminOrganizationOpeDao();
	
	public List<Organization> search_organization(String cevent) throws Exception {
		// TODO Auto-generated method stub
		List<Organization> users = dao.search_organization(cevent, sessionFactory);       
        return users;  
		

	}
	
	public String getOrganization(String id){
		Organization org=dao.findById_organization(id,sessionFactory);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", org.getId());
		map.put("email", org.getEmail());
		map.put("password", org.getPassword());
		map.put("name", org.getName());
		map.put("address", org.getAddress());
		map.put("suburb", org.getSuburb());
		map.put("state", org.getState());
		map.put("postcode", org.getPostcode());
		map.put("type", org.getType());
		map.put("phone", org.getPhone());
		map.put("description", org.getDescription());
		JSONObject jo = new JSONObject();
		jo = JSONObject.fromObject(map);
		return jo.toString();
	}
	
/*	public String updateOrganization(Organization organization){
		Map<String, Object> map = new HashMap<String, Object>();
		dao.update_organization(organization, sessionFactory);
		map.put("message", "success");
		JSONObject jo = new JSONObject();
		jo = JSONObject.fromObject(map);
		return jo.toString();
	}*/

	public String updateOrganization(Organization organization) {
		// TODO Auto-generated method stub
		
		dao.update_organization(organization,sessionFactory);
		return "success";
	}
	
	public Organization findById_organization(String id) {
		// TODO Auto-generated method stub
		return dao.findById_organization(id,sessionFactory);
	}
}

