package au.usyd.elec5619.dao;

import au.usyd.elec5619.domain.Event;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class AdminEventOpeDao {
	
	
	// 查询，id是主键
	public Event findById_event(String id ,SessionFactory sf) {
		Session currentSession=sf.getCurrentSession();
		Event event = (Event) currentSession.get(Event.class, id);
		return event;
	}
	
	// 修改
	public void update_event(Event event, SessionFactory sf) {
		Session currentSession=sf.getCurrentSession();
		//currentSession.beginTransaction();
		currentSession.merge(event);
		//currentSession.getTransaction().commit();
		//currentSession.close();
		//sf.close();
	}
	
    public List<Event> search_event(String cevent,SessionFactory sf) throws Exception {  
        Query query = sf.getCurrentSession().createQuery("from Event u where u.ename like '%"+cevent+"%'"); 
        List<Event> list = query.list(); 
   // 	System.out.println(list.toString());
        return list;  
    }  
	
}