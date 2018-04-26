package au.usyd.elec5619.dao;

import java.util.List;

import au.usyd.elec5619.domain.Admin;

public interface AdminDao {
	void save(Admin admin);

	void delete(String id);

	void delete(Admin admin	);

	void update(Admin admin);

	Admin findById(String id);
	
	String findByUser(String username);

	Admin findByUsernameAndPassword(String username, String password);
	
	List<Admin> findalladmins();
	
	List<Admin> findByUsername(String username);
}
