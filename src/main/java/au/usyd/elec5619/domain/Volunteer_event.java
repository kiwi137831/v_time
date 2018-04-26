package au.usyd.elec5619.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="Volunteer_event")
public class Volunteer_event implements Serializable{
	@Id
	@GenericGenerator(name="systemUUID",strategy="uuid")
	@GeneratedValue(generator="systemUUID")
	@Column(name = "ve_id",nullable=false,length=255)
	private String ve_id;
	
	@Column(name = "event_id", length = 255)
	private String event_id;
	
	@Column(name = "volunteer_id", length = 255)
	private String volunteer_id;
	
	@Column(name = "status", length = 1)
	private String status;
	
	@Column(name = "applytm", length = 20)
	private String applytm;
	
	@Column(name = "Comment", length = 50)
	private String Comment;
	
	@Column(name = "Rating", length = 1)
	private String Rating;
	
	public String getVe_id() {
		return ve_id;
	}

	public void setVe_id(String ve_id) {
		this.ve_id = ve_id;
	}

	public String getEvent_id() {
		return event_id;
	}

	public void setEvent_id(String event_id) {
		this.event_id = event_id;
	}

	public String getVolunteer_id() {
		return volunteer_id;
	}

	public void setVolunteer_id(String volunteer_id) {
		this.volunteer_id = volunteer_id;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getApplytm() {
		return applytm;
	}

	public void setApplytm(String applytm) {
		this.applytm = applytm;
	}

	public String getComment() {
		return Comment;
	}

	public void setComment(String comment) {
		Comment = comment;
	}

	public String getRating() {
		return Rating;
	}

	public void setRating(String rating) {
		Rating = rating;
	}

}
