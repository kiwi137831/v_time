package au.usyd.elec5619.service;

import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import au.usyd.elec5619.dao.EventDao_add;
import au.usyd.elec5619.domain.Event;

@Service(value="Organization_add")
@Transactional
public class organization_addImpl implements Organization_add {
	private SessionFactory sessionFactory;
	@Autowired
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory=sf;
	}
	
	private EventDao_add dao =new EventDao_add();
	
	public organization_addImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String save_event(Event event) {
		// TODO Auto-generated method stub
		dao.save_event(event,sessionFactory);
		return "null";
	}

}
