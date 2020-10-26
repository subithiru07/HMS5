package com.dxc.hms.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ADMISSION")
public class Admission {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="ID")
	int id;
	String patientname;
	int age;
	String phonenumber;
	String illness;
	String status;
	String floornumber;
	String roomnumber;
	String adate;
	String spl;
	@Column(name="SPL")
	public String getSpl() {
		return spl;
	}
	public void setSpl(String spl) {
		this.spl = spl;
	}
	@Column(name="Time")
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	String time;
	@Column(name="ADMISION_DATE")
	public String getAdate() {
		return adate;
	}
	public void setAdate(String adate) {
		this.adate = adate;
	}
	@Column(name="PATIENTNAME")
	public String getPatientname() {
		return patientname;
	}
	public void setPatientname(String patientname) {
		this.patientname = patientname;
	}
	@Column(name="AGE")
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	@Column(name="PHONENUMBER")
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	@Column(name="ILLNESS")
	public String getIllness() {
		return illness;
	}
	public void setIllness(String illness) {
		this.illness = illness;
	}
	@Column(name="STATUS")
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
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
	

}