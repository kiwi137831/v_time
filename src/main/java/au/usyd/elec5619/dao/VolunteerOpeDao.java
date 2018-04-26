package au.usyd.elec5619.dao;

import au.usyd.elec5619.domain.Volunteer;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public class VolunteerOpeDao {
	

	
	// 查询，id是主键
	public Volunteer findById(String id ,SessionFactory sf) {
		Session currentSession=sf.getCurrentSession();
		Volunteer volunteer = (Volunteer) currentSession.get(Volunteer.class, id);
		return volunteer;
	}
	
	// 修改
	public void update(Volunteer volunteer, SessionFactory sf) {
		Session currentSession=sf.getCurrentSession();
		//currentSession.beginTransaction();
		currentSession.merge(volunteer);
		//currentSession.getTransaction().commit();
		//currentSession.close();
		//sf.close();
	}
	
}
