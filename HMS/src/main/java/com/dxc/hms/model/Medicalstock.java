package com.dxc.hms.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="MEDICALSTOCKLIST")
public class Medicalstock {
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int id;
@Override
public String toString() {
	return "Medicalstock [id=" + id + ", medicinename=" + medicinename + ", quantity=" + quantity + ", components="
			+ components + ", manufacturingdate=" + manufacturingdate + ", expirydate=" + expirydate + ", price="
			+ price + "]";
}
private String medicinename;
private String quantity;
private String components;
private String manufacturingdate;
private String expirydate;
private float price;


public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
@Column(name="MEDICINENAME")
public String getMedicinename() {
	return medicinename;
}
public void setMedicinename(String medicinename) {
	this.medicinename = medicinename;
}
@Column(name="QUANTITY")
public String getQuantity() {
	return quantity;
}
public void setQuantity(String quantity) {
	this.quantity = quantity;
}
@Column(name="COMPONENTS")
public String getComponents() {
	return components;
}
public void setComponents(String components) {
	this.components = components;
}
@Column(name="MANUFACTURINGDATE")
public String getManufacturingdate() {
	return manufacturingdate;
}
public void setManufacturingdate(String manufacturingdate) {
	this.manufacturingdate = manufacturingdate;
}
@Column(name="EXPIRYDATE")
public String getExpirydate() {
	return expirydate;
}
public void setExpirydate(String expirydate) {
	this.expirydate = expirydate;
}
@Column(name="PRICE")
public float getPrice() {
	return price;
}
public void setPrice(float price) {
	this.price = price;
}

}