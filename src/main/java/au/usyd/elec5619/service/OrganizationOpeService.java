package au.usyd.elec5619.service;

import java.util.HashMap;
import java.util.Map;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import au.usyd.elec5619.dao.OrganizationOpeDao;
import au.usyd.elec5619.domain.Organization;
import net.sf.json.JSONObject;

@Service(value="organizationService")
@Transactional
public class OrganizationOpeService {
	private SessionFactory sessionFactory;
	@Autowired
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory=sf;
	}
	
	OrganizationOpeDao dao=new OrganizationOpeDao();
	public String getOrganization(String id){
		Organization org=dao.findById(id,sessionFactory);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", org.getId());
		map.put("oemail", org.getEmail());
		map.put("opassword", org.getPassword());
		map.put("oname", org.getName());
		map.put("address", org.getAddress());
		map.put("suburb", org.getSuburb());
		map.put("state", org.getState());
		map.put("postcode", org.getPostcode());
		map.put("type", org.getType());
		map.put("ophone", org.getPhone());
		map.put("description", org.getDescription());
		JSONObject jo = new JSONObject();
		jo = JSONObject.fromObject(map);
		return jo.toString();
	}
	
	public String updateOrganization(Organization organization){
		Map<String, Object> map = new HashMap<String, Object>();
		dao.update_organization(organization, sessionFactory);
		map.put("message", "success");
		JSONObject jo = new JSONObject();
		jo = JSONObject.fromObject(map);
		return jo.toString();
	}
}
