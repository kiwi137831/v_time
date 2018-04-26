package au.usyd.elec5619.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import javax.annotation.Resource;
import org.springframework.stereotype.Repository;
import au.usyd.elec5619.domain.Organization;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

public class AdminOrganizationOpeDao {
	
	
	// 查询，id是主键
	public Organization findById_organization(String id ,SessionFactory sf) {
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

    public List<Organization> search_organization(String cevent,SessionFactory sf) throws Exception {  
        Query query = sf.getCurrentSession().createQuery("from Organization u where u.name like '%"+cevent+"%'"); 
        List<Organization> list = query.list(); 
   // 	System.out.println(list.toString());
        return list;  
    }
}