package au.usyd.elec5619.dao;

import java.util.List;


import au.usyd.elec5619.domain.Volunteer;


public interface VolunteerDao {
	void save(Volunteer volunteer);

	void delete(String id);

	void delete(Volunteer volunteer);

	void update(Volunteer volunteer);

	Volunteer findById(String id);
	
	Volunteer findByEmail(String vemail);
	
	String findByUser(String vname);

	//questions for the thing before the findById
	
	List<Volunteer> findallvolunteers();
	
	List<Volunteer> findByUsername(String vname);
}
