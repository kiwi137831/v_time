package au.usyd.elec5619.dao;

import au.usyd.elec5619.domain.Event;
import au.usyd.elec5619.domain.Organization;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

public class AdminAddOpeDao {
		// ÐÞ¸Ä
	public void add_organization(Organization organization, SessionFactory sf) {
		Session currentSession=sf.getCurrentSession();

		currentSession.save(organization);

	}
	public void add_event(Event event, SessionFactory sf) {
		Session currentSession=sf.getCurrentSession();

		currentSession.save(event);

	}

	
}