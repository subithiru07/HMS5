package com.dxc.hms.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Prescription")
public class Prescription {
	
	@Column(name="Doctorname")
	public String getDoctorname() {
		return doctorname;
	}
	public void setDoctorname(String doctorname) {
		this.doctorname = doctorname;
	}
	@Column(name="Patientname")
	public String getPatientname() {
		return patientname;
	}
	public void setPatientname(String patientname) {
		this.patientname = patientname;
	}
	@Column(name="Patientage")
	public String getPatientage() {
		return patientage;
	}
	public void setPatientage(String patientage) {
		this.patientage = patientage;
	}
	@Column(name="Patientgender")
	public String getPatientgender() {
		return patientgender;
	}
	public void setPatientgender(String patientgender) {
		this.patientgender = patientgender;
	}
	@Column(name="Medicine")
	public String getMedicine() {
		return medicine;
	}
	public void setMedicine(String medicine) {
		this.medicine = medicine;
	}
	@Column(name="MedicineQuantity")
	public float getMedicinequantity() {
		return medicinequantity;
	}
	public void setMedicinequantity(float medicinequantity) {
		this.medicinequantity = medicinequantity;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	private String patientname;
	private String patientage;
	private String patientgender;
	private String medicine;
	private float medicinequantity;
	
	private String medicine1;
	@Column(name="Medicine1")
	public String getMedicine1() {
		return medicine1;
	}
	public void setMedicine1(String medicine1) {
		this.medicine1 = medicine1;
	}
	@Column(name="Medicine2")
	public String getMedicine2() {
		return medicine2;
	}
	public void setMedicine2(String medicine2) {
		this.medicine2 = medicine2;
	}
	@Column(name="Medicine3")
	public String getMedicine3() {
		return medicine3;
	}
	public void setMedicine3(String medicine3) {
		this.medicine3 = medicine3;
	}
	@Column(name="Medicine4")
	public String getMedicine4() {
		return medicine4;
	}
	public void setMedicine4(String medicine4) {
		this.medicine4 = medicine4;
	}
	
	private String medicine2;
	private String medicine3;
	private String medicine4;
	private float medicinequantity1; 
	@Column(name="MedicineQuantity1")
	public float getMedicinequantity1() {
		return medicinequantity1;
	}
	public void setMedicinequantity1(float medicinequantity1) {
		this.medicinequantity1 = medicinequantity1;
	}
	@Column(name="MedicineQuantity2")
	public float getMedicinequantity2() {
		return medicinequantity2;
	}
	public void setMedicinequantity2(float medicinequantity2) {
		this.medicinequantity2 = medicinequantity2;
	}
	@Column(name="MedicineQuantity3")
	public float getMedicinequantity3() {
		return medicinequantity3;
	}
	public void setMedicinequantity3(float medicinequantity3) {
		this.medicinequantity3 = medicinequantity3;
	}
	@Column(name="MedicineQuantity4")
	public float getMedicinequantity4() {
		return medicinequantity4;
	}
	public void setMedicinequantity4(float medicinequantity4) {
		this.medicinequantity4 = medicinequantity4;
	}
	private float medicinequantity2; 
	private float medicinequantity3; 
	private float medicinequantity4; 
	
	private String doctorname;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id")
	private int id;

}