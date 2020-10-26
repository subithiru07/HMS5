package com.dxc.hms.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="BILL")
public class Bill {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="ID")
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Column(name="Name")
	private  String name;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Column(name="DoctorName")
	public String getDoctorName() {
		return doctorName;
	}
	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}
	@Column(name="Medicinename1")
	public String getMedicinename1() {
		return medicinename1;
	}
	public void setMedicinename1(String medicinename1) {
		this.medicinename1 = medicinename1;
	}
	@Column(name="Medicinename2")
	public String getMedicinename2() {
		return medicinename2;
	}
	public void setMedicinename2(String medicinename2) {
		this.medicinename2 = medicinename2;
	}
	@Column(name="Medicinename3")
	public String getMedicinename3() {
		return medicinename3;
	}
	public void setMedicinename3(String medicinename3) {
		this.medicinename3 = medicinename3;
	}
	@Column(name="Medicinename4")
	public String getMedicinename4() {
		return medicinename4;
	}
	public void setMedicinename4(String medicinename4) {
		this.medicinename4 = medicinename4;
	}
	@Column(name="Medicinename5")
	public String getMegdicinename5() {
		return medicinename5;
	}
	public void setMedicinename5(String medicinename5) {
		this.medicinename5 = medicinename5;
	}
	@Column(name="Phno")
	public String getPhno() {
		return phno;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}
	@Column(name="Address")
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Column(name="Quantity1")
	public float getQuantity1() {
		return quantity1;
	}
	
	public void setQuantity1(float quantity1) {
		this.quantity1 = quantity1;
	}
	@Column(name="Quantity2")
	public float getQuantity2() {
		return quantity2;
	}
	public void setQuantity2(float quantity2) {
		this.quantity2 = quantity2;
	}
	@Column(name="Quantity3")
	public float getQuantity3() {
		return quantity3;
	}
	public void setQuantity3(float quantity3) {
		this.quantity3 = quantity3;
	}
	@Column(name="Quantity4")
	public float getQuantity4() {
		return quantity4;
	}
	public void setQuantity4(float quantity4) {
		this.quantity4 = quantity4;
	}
	@Column(name="Quantity5")
	public float getQuantity5() {
		return quantity5;
	}
	public void setQuantity5(float quantity5) {
		this.quantity5 = quantity5;
	}
	@Column(name="Total")
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	@Column(name="Rooom_rent")
	public float getRooom_rent() {
		return rooom_rent;
	}
	public void setRooom_rent(float rooom_rent) {
		this.rooom_rent = rooom_rent;
	}
	@Column(name="Consultation_service")
	public float getConsultation_service() {
		return Consultation_service;
	}
	public void setConsultation_service(float consultation_service) {
		Consultation_service = consultation_service;
	}
	@Column(name="Deit_service")
	public float getDeit_service() {
		return deit_service;
	}
	public void setDeit_service(float deit_service) {
		this.deit_service = deit_service;
	}
	@Column(name="Lab_service")
	public float getLab_service() {
		return lab_service;
	}
	public void setLab_service(float lab_service) {
		this.lab_service = lab_service;
	}
	private  String doctorName;
	private  String medicinename1;
	private  String medicinename2;
	private  String medicinename3;
	private  String medicinename4;
	private  String medicinename5;
	private  String phno;
	private String address;
	private float quantity1; 
	private float quantity2; 
	private float quantity3; 
	private float quantity4; 
	private float quantity5;
	private double total;
	private float rooom_rent;
	private float Consultation_service;
	private float deit_service;
	private float lab_service;
	private float price1;
	@Column(name="Price1")
	public float getPrice1() {
		return price1;
	}
	
	public void setPrice1(float price1) {
		this.price1 = price1;
	}
	@Column(name="Price2")
	public float getPrice2() {
		return price2;
	}
	public void setPrice2(float price2) {
		this.price2 = price2;
	}
	@Column(name="Price3")
	public float getPrice3() {
		return price3;
	}
	public void setPrice3(float price3) {
		this.price3 = price3;
	}
	@Column(name="Price4")
	public float getPrice4() {
		return price4;
	}
	public void setPrice4(float price4) {
		this.price4 = price4;
	}
	@Column(name="Price5")
	public float getPrice5() {
		return price5;
	}
	public void setPrice5(float price5) {
		this.price5 = price5;
	}
	private float price2;
	private float price3;
	private float price4;
	private float price5;
	private String illness;
	
	@Column(name="illness")
	public String getIllness() {
		return illness;
	}
	public void setIllness(String illness) {
		this.illness = illness;
	}
	
	@Column(name="status")
	private String status;
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	

}
