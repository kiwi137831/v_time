package au.usyd.elec5619.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="Volunteer")
public class Volunteer implements Serializable{
	@Id
	@GenericGenerator(name="systemUUID",strategy="uuid")
	@GeneratedValue(generator="systemUUID")
	@Column(name="id" ,nullable=false,length=255)
	private String id;
	@Column(name="vemail" ,length=20)
	private String vemail;
	@Column(name="vpassword",length=8)
	private String vpassword;
	@Column(name="vname",length=20)
	private String vname;
	@Column(name="gender",length=1)
	private String gender;
	@Column(name="job",length=20)
	private String job;
	@Column(name="videntifyfile",length=255)
	private String videntifyfile;
	@Column(name="vphone",length=10)
	private String vphone;
	@Column(name="age",length=2)
	private String age;
	
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getId() {
		return id;
	}
	public void setId(String vid) {
		this.id = vid;
	}
	public String getVemail() {
		return vemail;
	}
	public void setVemail(String vemail) {
		this.vemail = vemail;
	}
	public String getVpassword() {
		return vpassword;
	}
	public void setVpassword(String vpassword) {
		this.vpassword = vpassword;
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
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getVidentifyfile() {
		return videntifyfile;
	}
	public void setVidentifyfile(String videntifyfile) {
		this.videntifyfile = videntifyfile;
	}
	public String getVphone() {
		return vphone;
	}
	public void setVphone(String vphone) {
		this.vphone = vphone;
	}
	
	
}
