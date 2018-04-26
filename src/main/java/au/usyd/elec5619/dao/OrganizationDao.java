package au.usyd.elec5619.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import au.usyd.elec5619.domain.Event;
import au.usyd.elec5619.domain.Organization;
import au.usyd.elec5619.domain.Volunteer;
import au.usyd.elec5619.domain.Volunteer_einfo;
import au.usyd.elec5619.domain.Volunteer_event;



public class  OrganizationDao {

	
	
	public void update_event(Event event,SessionFactory sf) {
		Session currentSession=sf.getCurrentSession();
		//currentSession.beginTransaction();
		currentSession.merge(event);
	}
	
	
	public Event findById_event(String id,SessionFactory sf) {
	
			Session currentSession=sf.getCurrentSession();
			Event event = (Event) currentSession.get(Event.class, id);
			return event;	
	
	}
	public Organization findById_organization(String id,SessionFactory sf) {
		
		Session currentSession=sf.getCurrentSession();
		Organization organization = (Organization) currentSession.get(Organization.class, id);
		return organization;	

}
	
	
    public List<Event> search_event(String cevent,String id,SessionFactory sf) throws Exception {  
        Query query = sf.getCurrentSession().createQuery("from Event u where u.organization_id=? and  u.ename like '%"+cevent+"%'").setParameter(0, id); 
    	System.out.println(id+"dao");
        List<Event> list = query.list(); 
   // 	System.out.println(list.toString());
        return list;  
    }  

    public List<Volunteer_einfo> search_volunteer(String cevent,SessionFactory sf) throws Exception {  
       Query query = sf.getCurrentSession().createQuery("select new au.usyd.elec5619.domain.Volunteer_einfo(ve.ve_id,ve.volunteer_id,ve.event_id ,v.vname ,v.gender,v.age ,ve.applytm,ve.status )from Volunteer_event ve,Volunteer v  where v.id=ve.volunteer_id and v.vname like '%"+cevent+"%'");
       
       //String sql = "select v.vname as name,v.gender as gender,v.age as age,ve.applytm as applytm,ve.status as status from Volunteer_event ve,Volunteer v  where v.id=ve.volunteer_id and v.vname like '%"+cevent+"%'";
     
       
     //   List<Volunteer_einfo> list= sf.getCurrentSession().createSQLQuery(sql).addEntity(Volunteer_einfo.class).list();
        
        
        List<Volunteer_einfo> list = query.list();  
    	System.out.println(list.toString());	
        return list;  
    }


	public Volunteer_event findbyVeid(String id, SessionFactory sf) {
		// TODO Auto-generated method stub
		
		Session currentSession=sf.getCurrentSession();
		Volunteer_event volunteer_event = (Volunteer_event) currentSession.get(Volunteer_event.class, id);
		return volunteer_event;	
	
	}
	public Volunteer findById_volunteer(String id,SessionFactory sf) {
		
		Session currentSession=sf.getCurrentSession();
		Volunteer volunteer = (Volunteer) currentSession.get(Volunteer.class, id);
		return volunteer;	

}

	public void updateve(Volunteer_event ve, SessionFactory sf) {
		Session currentSession=sf.getCurrentSession();
		//currentSession.beginTransaction();
		currentSession.merge(ve);
		
	}  
	
	
	}

