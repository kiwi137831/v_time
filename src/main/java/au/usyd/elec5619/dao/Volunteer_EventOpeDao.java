package au.usyd.elec5619.dao;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import au.usyd.elec5619.domain.Event;
import au.usyd.elec5619.domain.Volunteer;
import au.usyd.elec5619.domain.Volunteer_event;


public class Volunteer_EventOpeDao {
	

	
	
	public List<Event> findByCondition(String condition ,SessionFactory sf) {
		Session currentSession=sf.getCurrentSession();
		String sql="FROM Event WHERE ename LIKE '%"+condition+"%' OR stime LIKE '%"+condition+"%' OR exist_num LIKE '%"+condition+"%'";
		List<Event> events=currentSession.createQuery(sql).list();
		return events;
	}
	
	public List<Event> getEvents(SessionFactory sf) {
		Session currentSession=sf.getCurrentSession();
		List<Event> events=currentSession.createQuery("FROM Event").list();
		return events;
	}
	

	public Event getEventById(String id ,SessionFactory sf) {
		Session currentSession=sf.getCurrentSession();
		Event event = (Event) currentSession.get(Event.class, id);
		return event;
	}
	
	public List<Volunteer_event> getActiveEvents(SessionFactory sf, String volunteer_id) {
		Session currentSession=sf.getCurrentSession();
		List<Volunteer_event> events=currentSession.createQuery("FROM Volunteer_event WHERE volunteer_id = '"+volunteer_id+"' AND status IN ('0','1')" ).list();
		return events;
	}
	
	public List<Volunteer_event> getHistoryEvents(SessionFactory sf, String volunteer_id) {
		Session currentSession=sf.getCurrentSession();
		List<Volunteer_event> events=currentSession.createQuery("FROM Volunteer_event WHERE volunteer_id = '"+volunteer_id+"' AND status = '2' " ).list();
		return events;
	}
	
	public List<Volunteer_event> getVolunteerEventByCondition(SessionFactory sf, String event_id, String volunteer_id) {
		Session currentSession=sf.getCurrentSession();
		List<Volunteer_event> events=currentSession.createQuery("FROM Volunteer_event WHERE volunteer_id = '"+volunteer_id+"' AND event_id = '"+event_id+"' " ).list();
		return events;
	}
	
		public void insertVE(Volunteer_event ve, SessionFactory sf) {
			Session currentSession=sf.getCurrentSession();
			//currentSession.beginTransaction();
			currentSession.save(ve);
			//currentSession.getTransaction().commit();
			//currentSession.close();
			//sf.close();
		}
	
}
