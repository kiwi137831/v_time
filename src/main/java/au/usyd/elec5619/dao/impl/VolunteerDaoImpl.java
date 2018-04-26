package au.usyd.elec5619.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import au.usyd.elec5619.dao.VolunteerDao;
import au.usyd.elec5619.domain.Volunteer;



@Transactional
@Repository
public class VolunteerDaoImpl implements VolunteerDao{

	@Autowired
	private SessionFactory sessionFactory;

	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public void save(Volunteer volunteer) {
		// TODO Auto-generated method stub
		getSession().save(volunteer);
	}

	public void delete(String id) {
		// TODO Auto-generated method stub
		Volunteer volunteer = findById(id);
		getSession().delete(volunteer);
	}

	@Override
	public void delete(Volunteer volunteer) {
		// TODO Auto-generated method stub
		getSession().delete(volunteer);
	}

	@Override
	public void update(Volunteer volunteer) {
		// TODO Auto-generated method stub
		getSession().saveOrUpdate(volunteer);
	}

	@Override
	public Volunteer findById(String id) {
		// TODO Auto-generated method stub
		return (Volunteer) getSession().get(Volunteer.class, id);
	}

	@Override
	public String findByUser(String vname) {
		// TODO Auto-generated method stub
		String hql = "from Volunteer where vname=?";
		Query query = getSession().createQuery(hql);
		query.setParameter(0, vname);
		List<Volunteer> list = query.list();
		if (list == null || list.size() == 0) {
			return null;
			//Is this return right?
		}
		return list.get(0).getId();
	}

//	@Override
//	public Volunteer findByUsernameAndPassword(String username, String password) {
//		// TODO Auto-generated method stub
//		String hql = "from Admin where username=? and password=?";
//		Query query = getSession().createQuery(hql);
//		query.setParameter(0, username);
//		query.setParameter(1, password);
//		List<Admin> list = query.list();
//		if (list == null || list.size() == 0) {
//			return null;
//		}
//		return list.get(0);
//	}

	@Override
	public List<Volunteer> findallvolunteers() {
		// TODO Auto-generated method stub
		String hql = "from Volunteer";
		Query query = getSession().createQuery(hql);
		List<Volunteer> list = query.list();
		if (list == null || list.size() == 0) {
			return null;
		}
		return list;
	}

	@Override
	public List<Volunteer> findByUsername(String vname) {
		// TODO Auto-generated method stub
		String hql = "from Volunteer where vname=?";
		Query query = getSession().createQuery(hql);
		query.setParameter(0, vname);
		List<Volunteer> list = query.list();
		if (list == null || list.size() == 0) {
			return null;
		}
		return list;
	}

	@Override
	public Volunteer findByEmail(String vemail) {
		// TODO Auto-generated method stub
		return null;
	}

//	@Override
//	public void save(Volunteer volunteer) {
		// TODO Auto-generated method stub
		


//	@Override
//	public void delete(Volunteer volunteer) {
//		// TODO Auto-generated method stub
//		
//	}
//
//	@Override
//	public void update(Volunteer volunteer) {
//		// TODO Auto-generated method stub
//		
//	}
//
//	@Override
//	public Volunteer findById(long id) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//	@Override
//	public List<Volunteer> findallvolunteers() {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//	@Override
//	public List<Volunteer> findByUsername(String vname) {
//		// TODO Auto-generated method stub
//		return null;
//	}

}

