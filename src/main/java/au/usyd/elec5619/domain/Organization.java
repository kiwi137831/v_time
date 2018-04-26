package au.usyd.elec5619.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="Organization")
public class Organization implements Serializable{
	@Id
	@GenericGenerator(name="systemUUID",strategy="uuid")
	@GeneratedValue(generator="systemUUID")
	@Column(name="id" ,nullable=false,length=255)
	private String id;
	@Column(name="email" ,length=20)
	private String email;
	@Column(name="password",length=8)
	private String password;
	@Column(name="name",length=20)
	private String name;
	@Column(name="address",length=50)
	private String address;
	@Column(name="suburb",length=10)
	private String suburb;
	@Column(name="state",length=10)
	private String state;
	@Column(name="postcode",length=4)
	private String postcode;
	@Column(name="type",length=20)
	private String type;
	@Column(name="target",length=20)
	private String target;
	@Column(name="description",length=255)
	private String description;
	@Column(name="identifyfile",length=255)
	private String identifyfile;
	@Column(name="phone",length=10)
	private String phone;

	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getSuburb() {
		return suburb;
	}
	public void setSuburb(String suburb) {
		this.suburb = suburb;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getTarget() {
		return target;
	}
	public void setTarget(String target) {
		this.target = target;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getIdentifyfile() {
		return identifyfile;
	}
	public void setIdentifyfile(String identifyfile) {
		this.identifyfile = identifyfile;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
}
