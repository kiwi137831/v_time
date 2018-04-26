package au.usyd.elec5619.dao;

import au.usyd.elec5619.domain.Organization;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public class OrganizationOpeDao {
	

	
	// 查询，id是主键
	public Organization findById(String id ,SessionFactory sf) {
		Session currentSession=sf.getCurrentSession();
		Organization organization = (Organization) currentSession.get(Organization.class, id);
		return organization;
	}
	
	// 修改
	public void update_organization(Organization organization, SessionFactory sf) {
		Session currentSession=sf.getCurrentSession();
		//currentSession.beginTransaction();
		currentSession.merge(organization);
		//currentSession.getTransaction().commit();
		//currentSession.close();
		//sf.close();
	}
	
}
