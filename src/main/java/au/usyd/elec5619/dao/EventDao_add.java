package au.usyd.elec5619.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import au.usyd.elec5619.domain.Event;

public class EventDao_add {
	private SessionFactory sessionFactory;
	
	public String save_event(Event event, SessionFactory sf)
	{
		Session currentSession=sf.getCurrentSession();
		sf.getCurrentSession().save(event);
		return "success";
	}

}
