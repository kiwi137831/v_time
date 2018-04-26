package au.usyd.elec5619.service;

import java.io.Serializable;
import java.util.List;

import au.usyd.elec5619.domain.Event;
import au.usyd.elec5619.domain.Organization;
import au.usyd.elec5619.domain.Volunteer;
import au.usyd.elec5619.domain.Volunteer_einfo;
import au.usyd.elec5619.domain.Volunteer_event;


	public interface Organization_edit extends Serializable{
		
		public Event findById_event(String id);
		public Organization findById_organization(String id);
		public Volunteer findById_v(String id);
		public Volunteer_event findbyVeid(String id);
		public String updateEvent(Event event);
		public String updateve(Volunteer_event ve);
		public  List<Event> search_event(String cevent,String id) throws Exception; 
		public  List<Volunteer_einfo> search_v(String cevent) throws Exception; 
	}