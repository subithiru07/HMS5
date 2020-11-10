package com.dxc.hms.dao;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.dxc.hms.connection.HibCon;
import com.dxc.hms.model.ConfirmedAppointment;
import com.dxc.hms.model.Doctor;
import com.dxc.hms.model.Medicalstock;
import com.dxc.hms.model.Prescription;


public class DoctorDao  {
	HibCon hc= new HibCon();

	
	public void AddDoctor(Doctor doctor) {
		// TODO Auto-generated method stubs
		
		Session ses=hc.getSession();
		ses.save(doctor);
		Transaction t=ses.beginTransaction();
		t.commit();
	}

	
	public boolean LoginValidate(String user, String userpassword) {
		// TODO Auto-generated method stub
		boolean y=false;
		Session ses=hc.getSession();
		Criteria c =ses.createCriteria(Doctor.class);
		List l=c.list();
		Iterator i=l.iterator();
		while(i.hasNext()) {
			Doctor doc= (Doctor) i.next();
			if((user.equals(doc.getName())&&(userpassword.equals(doc.getPassword())))) {
				y= true;
				System.out.println("true");
				
			}
		}
		System.out.println("false");
		return y;
	}
	
	public List doctorList() {
		Session ses= hc.getSession();
		Criteria c = ses.createCriteria(Doctor.class);
		List l= c.list();
		
		
		return l;
		
		
	}
	public List doctorAppList(String doctorname, String dates) {
		Session ses = hc.getSession();
		Criteria c = ses.createCriteria(ConfirmedAppointment.class);
		c.add(Restrictions.and(Restrictions.eq("date",dates), Restrictions.eq("DoctorName",doctorname)));
		
		List l = c.list();
		
		return l;
		
	}
	public void addprescription(Prescription Prescription) {
		// TODO Auto-generated method stub
		
		Session ses=hc.getSession();
		ses.saveOrUpdate(Prescription);
		Transaction t=ses.beginTransaction();
		t.commit();
		
	}
	public List searchDate(String date) {
		Session ses = hc.getSession();
		Criteria c  = ses.createCriteria(Doctor.class);
		c.add(Restrictions.eq("date", date));
		List l =c.list();
		return l;
	}
	public List prescription() {
		Session ses = hc.getSession();
		Criteria c  = ses.createCriteria(Medicalstock.class);
		List l = c.list();
		return l;
		
	}
	

}