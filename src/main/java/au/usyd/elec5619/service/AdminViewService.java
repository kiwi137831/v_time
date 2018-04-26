package au.usyd.elec5619.service;

import java.io.Serializable;
import java.util.List;

import au.usyd.elec5619.domain.Event;
import au.usyd.elec5619.domain.Organization;

public interface AdminViewService {
	public Event findById_event(String id);
	public Organization findById_organization(String id);
	public void deleteEvnet(String id);
	public void deleteOrganization(String id);
	public  List<Event> search_event(String cevent) throws Exception; 
	public  List<Organization> search_v(String cevent) throws Exception; 
}
