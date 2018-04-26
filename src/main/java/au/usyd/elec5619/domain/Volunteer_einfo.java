package au.usyd.elec5619.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "volunteer_einfo")
public class Volunteer_einfo implements Serializable{
	@Id
	@Column(name="ve_id",length=20)
	private String ve_id;
	@Column(name="volunteer_id",length=255)
	private String volunteer_id;
	@Column(name="event_id",length=255)
	private String event_id;
	@Column(name="vname",length=20)
	private String vname;
	@Column(name="gender",length=5)
	private String gender;
	@Column(name="age",length=2)
	private String age;
	@Column(name = "applytm", length = 20)
	private String applytm;
	@Column(name = "status", length = 1)
	private String status;
	
	public Volunteer_einfo(){}

	public Volunteer_einfo(String ve_id, String volunteer_id, String event_id, String vname, String gender, String age,
			String applytm, String status) {
		super();
		this.ve_id = ve_id;
		this.volunteer_id = volunteer_id;
		this.event_id = event_id;
		this.vname = vname;
		this.gender = gender;
		this.age = age;
		this.applytm = applytm;
		this.status = status;
	}

	public String getVe_id() {
		return ve_id;
	}

	public void setVe_id(String ve_id) {
		this.ve_id = ve_id;
	}

	public String getVolunteer_id() {
		return volunteer_id;
	}

	public void setVolunteer_id(String volunteer_id) {
		this.volunteer_id = volunteer_id;
	}

	public String getEvent_id() {
		return event_id;
	}

	public void setEvent_id(String event_id) {
		this.event_id = event_id;
	}

	public String getVname() {
		return vname;
	}

	public void setVname(String vname) {
		this.vname = vname;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getApplytm() {
		return applytm;
	}

	public void setApplytm(String applytm) {
		this.applytm = applytm;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
