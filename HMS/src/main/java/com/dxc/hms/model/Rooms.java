package com.dxc.hms.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ROOM")
public class Rooms {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	int id;
	@Column(name="ID")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	String patientname;
	String floornumber;
	String roomnumber;
	String availability;
	
	@Column(name="PATIENTNAME")
	public String getPatientname() {
		return patientname;
	}
	public void setPatientname(String patientname) {
		this.patientname = patientname;
	}
	@Column(name="FLOORNUMBER")
	public String getFloornumber() {
		return floornumber;
	}
	public void setFloornumber(String floornumber) {
		this.floornumber = floornumber;
	}
	@Column(name="ROOMNUMBER")
	public String getRoomnumber() {
		return roomnumber;
	}
	public void setRoomnumber(String roomnumber) {
		this.roomnumber = roomnumber;
	}
	@Column(name="AVAILABILITY")
	public String getAvailability() {
		return availability;
	}
	public void setAvailability(String availability) {
		this.availability = availability;
	}

}