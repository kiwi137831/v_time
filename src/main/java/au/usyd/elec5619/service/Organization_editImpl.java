package au.usyd.elec5619.service;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import au.usyd.elec5619.dao.OrganizationDao;
import au.usyd.elec5619.domain.Event;
import au.usyd.elec5619.domain.Organization;
import au.usyd.elec5619.domain.Volunteer;
import au.usyd.elec5619.domain.Volunteer_einfo;
import au.usyd.elec5619.domain.Volunteer_event;

@Service(value="organization_edit")
@Transactional
	
public class Organization_editImpl  implements Organization_edit{
	private SessionFactory sessionFactory;
	@Autowired
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory=sf;
	}
	
	private OrganizationDao dao = new OrganizationDao();
	
	

	@Override
	public String updateEvent(Event event) {
		// TODO Auto-generated method stub
		
		dao.update_event(event,sessionFactory);
		return "success";
	}

	
	@Override
	public Event findById_event(String id) {
		return dao.findById_event(id,sessionFactory);
		}


	public Organization findById_organization(String id) {
		return dao.findById_organization(id,sessionFactory);
		}




	public List<Event> search_event(String cevent,String id) throws Exception {
		// TODO Auto-generated method stub
		List<Event> users = dao.search_event(cevent,id, sessionFactory);       
        return users;  
		

	}


	@Override
	public List<Volunteer_einfo> search_v(String cevent) throws Exception {
		List<Volunteer_einfo> users = dao.search_volunteer(cevent, sessionFactory); 
        return users;  
		

	
	}


	@Override
	public Volunteer_event findbyVeid(String id) {
		// TODO Auto-generated method stub
		return dao.findbyVeid(id,sessionFactory);
	}


	@Override
	public String updateve(Volunteer_event ve) {
		dao.updateve(ve,sessionFactory);
		return "success";	}


	@Override
	public Volunteer findById_v(String id) {
			return dao.findById_volunteer(id, sessionFactory);
		}
		
	


	
	
}
