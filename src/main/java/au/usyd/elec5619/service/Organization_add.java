package au.usyd.elec5619.service;

import java.io.Serializable;
import java.util.List;


import au.usyd.elec5619.domain.Event;
import au.usyd.elec5619.dao.EventDao_add;



public interface Organization_add extends Serializable{
	
		public  String save_event(Event event);

}




