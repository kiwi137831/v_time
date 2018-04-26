package au.usyd.elec5619.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="Product")
public class Product implements Serializable{
 @Id
 @GeneratedValue
 @Column(name="Id")
  private long id;
 @Column(name="Description")
  private String description;
 @Column(name="Price")
  private Double price;
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}
 
public String toString(){
	StringBuffer buffer=new StringBuffer();
	buffer.append("Description：" + description + ";");
	buffer.append("Price：" + price );
	return buffer.toString();
}
public long getId() {
	return id;
}
public void setId(long id) {
	this.id = id;
}
}
