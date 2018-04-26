package au.usyd.elec5619.dao;

import au.usyd.elec5619.domain.Volunteer;
import au.usyd.elec5619.domain.Organization;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public class RegisterOpeDao {
	
	public String getVolunteer_account(SessionFactory sf, String volunteer_username) {
		  Session currentSession=sf.getCurrentSession();
		  List<Volunteer> list= currentSession.createQuery("FROM Volunteer WHERE vemail = '"+volunteer_username+"'").list();
		  String von;
		  if(list.size()==0){
			  von="yes";
		  }else{
			  von="no";
		  }
		  return von;
		 }
	
	public String getOrganization_account(SessionFactory sf, String organization_username) {
		  Session currentSession=sf.getCurrentSession();
		  List<Organization> list= currentSession.createQuery("FROM Organization WHERE email = '"+organization_username+"'").list();
		  String org;
		  if(list.size()==0){
			  org="yes";
		  }else{
			  org="no";
		  }
		  return org;
		 }
	
	// 修改
	public void add_volunteer(Volunteer volunteer, SessionFactory sf) {
		Session currentSession=sf.getCurrentSession();

		currentSession.save(volunteer);

	}
	
	
	// 修改
	public void add_organization(Organization organization, SessionFactory sf) {
		Session currentSession=sf.getCurrentSession();

		currentSession.save(organization);

	}
	
	
	
}
