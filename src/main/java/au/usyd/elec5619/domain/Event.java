package au.usyd.elec5619.domain;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "event")
public class Event implements Serializable {


	@Id
	@GenericGenerator(name="systemUUID",strategy="uuid")
	@GeneratedValue(generator="systemUUID")
	@Column(name = "event_id",nullable=false,length=255)
	private String event_id;

	@Column(name = "ename", length = 50)
	private String ename;

	@Column(name = "event_address", length = 50)
	private String event_address;

	@Column(name = "event_suburb", length = 50)
	private String event_suburb;

	@Column(name = "brief_inf", length = 200)
	private String brief_inf;

	@Column(name = "event_postcode", length = 50)
	private String event_postcode;

	@Column(name = "stime", length = 50)
	private String stime;

	@Column(name = "etime", length = 50)
	private String etime;

	@Column(name = "volunteer_num")
	private String  volunteer_num;

	@Column(name = "description", length = 100)
	private String description;

	@Column(name = "status", length = 15)
	private String status;

	@Column(name = "organization_id", length = 255)
	private String organization_id;

	@Column(name = "job_limitation", length = 50)
	private String job_limitation;

	@Column(name = "gender_limitation", length = 30)
	private String gender_limitation;

	@Column(name = "age_limitation", length = 30)
	private String age_limitation;


	@Column(name = "exist_num", length = 30)
	private String exist_num;

	@Column(name = "event_state", length = 20)
	private String event_state;

	
	
	
	public Event(){}
	
	
	public Event(String event_id, String ename, String event_address, String event_suburb, String brief_inf,
			String event_postcode, String stime, String etime, String volunteer_num, String description, String status,
			String organization_id, String job_limitation, String gender_limitation, String age_limitation,
			String exist_num, String event_state) {
		super();
		this.event_id = event_id;
		this.ename = ename;
		this.event_address = event_address;
		this.event_suburb = event_suburb;
		this.brief_inf = brief_inf;
		this.event_postcode = event_postcode;
		this.stime = stime;
		this.etime = etime;
		this.volunteer_num = volunteer_num;
		this.description = description;
		this.status = status;
		this.organization_id = organization_id;
		this.job_limitation = job_limitation;
		this.gender_limitation = gender_limitation;
		this.age_limitation = age_limitation;
		this.exist_num = exist_num;
		this.event_state = event_state;
	}



	public String getEvent_id() {
		return event_id;
	}

	public void setEvent_id(String event_id) {
		this.event_id = event_id;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getEvent_address() {
		return event_address;
	}

	public void setEvent_address(String event_address) {
		this.event_address = event_address;
	}

	public String getEvent_suburb() {
		return event_suburb;
	}

	public void setEvent_suburb(String event_suburb) {
		this.event_suburb = event_suburb;
	}

	public String getBrief_inf() {
		return brief_inf;
	}

	public void setBrief_inf(String brief_inf) {
		this.brief_inf = brief_inf;
	}

	public String getEvent_postcode() {
		return event_postcode;
	}

	public void setEvent_postcode(String event_postcode) {
		this.event_postcode = event_postcode;
	}

	public String getStime() {
		return stime;
	}

	public void setStime(String stime) {
		this.stime = stime;
	}

	public String getEtime() {
		return etime;
	}

	public void setEtime(String etime) {
		this.etime = etime;
	}

	public String getVolunteer_num() {
		return volunteer_num;
	}

	public void setVolunteer_num(String volunteer_num) {
		this.volunteer_num = volunteer_num;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getOrganization_id() {
		return organization_id;
	}

	public void setOrganization_id(String organization_id) {
		this.organization_id = organization_id;
	}

	public String getJob_limitation() {
		return job_limitation;
	}

	public void setJob_limitation(String job_limitation) {
		this.job_limitation = job_limitation;
	}

	public String getGender_limitation() {
		return gender_limitation;
	}

	public void setGender_limitation(String gender_limitation) {
		this.gender_limitation = gender_limitation;
	}

	public String getAge_limitation() {
		return age_limitation;
	}

	public void setAge_limitation(String age_limitation) {
		this.age_limitation = age_limitation;
	}


	public String getExist_num() {
		return exist_num;
	}

	public void setExist_num(String exist_num) {
		this.exist_num = exist_num;
	}

	public String getEvent_state() {
		return event_state;
	}

	public void setEvent_state(String event_state) {
		this.event_state = event_state;
	}

}