package au.usyd.elec5619.dao;

import au.usyd.elec5619.domain.Volunteer;
import au.usyd.elec5619.domain.Organization;
import au.usyd.elec5619.domain.Admin;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public class LoginOpeDao {
	
	public Volunteer getVolunteer_info(SessionFactory sf, String volunteer_username, String volunteer_password) {
		  Session currentSession=sf.getCurrentSession();
		  List<Volunteer> list= currentSession.createQuery("FROM Volunteer WHERE vemail = '"+volunteer_username+"' AND vpassword = '"+volunteer_password+"'").list();
		  Volunteer von= new Volunteer();
		  if(list.size()==0){
			  von=null;
		  }else{
			  von=list.get(0);
		  }
		  return von;
		 }
	
	public Organization getOrganization_info(SessionFactory sf, String organization_username, String organization_password) {
		  Session currentSession=sf.getCurrentSession();
		  List<Organization> list= currentSession.createQuery("FROM Organization WHERE email = '"+organization_username+"' AND password = '"+organization_password+"'").list();
		  Organization org= new Organization();
		  if(list.size()==0){
			  org=null;
		  }else{
			  org=list.get(0);
		  }
		  return org;
		 }
	
	public Admin getAdmin_info(SessionFactory sf, String admin_username, String admin_password) {
		  Session currentSession=sf.getCurrentSession();
		  List<Admin> list= currentSession.createQuery("FROM Admin WHERE username = '"+admin_username+"' AND password = '"+admin_password+"'").list();
		  Admin admin= new Admin();
		  if(list.size()==0){
			  admin=null;
		  }else{
			  admin=list.get(0);
		  }
		  return admin;
		 }
	
	
}
