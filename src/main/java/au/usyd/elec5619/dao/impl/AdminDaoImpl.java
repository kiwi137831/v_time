package au.usyd.elec5619.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import au.usyd.elec5619.dao.AdminDao;
import au.usyd.elec5619.domain.Admin;

@Transactional
@Repository
public class AdminDaoImpl implements AdminDao{

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
	public void save(Admin admin) {
		// TODO Auto-generated method stub
		getSession().save(admin);
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		Admin admin = findById(id);
		getSession().delete(admin);
	}

	@Override
	public void delete(Admin admin) {
		// TODO Auto-generated method stub
		getSession().delete(admin);
	}

	@Override
	public void update(Admin admin) {
		// TODO Auto-generated method stub
		getSession().update(admin);
	}

	@Override
	public Admin findById(String id) {
		// TODO Auto-generated method stub
		return (Admin) getSession().get(Admin.class, id);
	}

	@Override
	public String findByUser(String username) {
		// TODO Auto-generated method stub
		String hql = "from Admin where username=?";
		Query query = getSession().createQuery(hql);
		query.setParameter(0, username);
		List<Admin> list = query.list();
		if (list == null || list.size() == 0) {
			return "-1";
		}
		return list.get(0).getId();
	}

	@Override
	public Admin findByUsernameAndPassword(String username, String password) {
		// TODO Auto-generated method stub
		String hql = "from Admin where username=? and password=?";
		Query query = getSession().createQuery(hql);
		query.setParameter(0, username);
		query.setParameter(1, password);
		List<Admin> list = query.list();
		if (list == null || list.size() == 0) {
			return null;
		}
		return list.get(0);
	}

	@Override
	public List<Admin> findalladmins() {
		// TODO Auto-generated method stub
		String hql = "from Admin";
		Query query = getSession().createQuery(hql);
		List<Admin> list = query.list();
		if (list == null || list.size() == 0) {
			return null;
		}
		return list;
	}

	@Override
	public List<Admin> findByUsername(String username) {
		// TODO Auto-generated method stub
		String hql = "from Admin where username=?";
		Query query = getSession().createQuery(hql);
		query.setParameter(0, username);
		List<Admin> list = query.list();
		if (list == null || list.size() == 0) {
			return null;
		}
		return list;
	}

}
