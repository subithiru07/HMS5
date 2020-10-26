package com.dxc.hms.dao;


import java.util.Iterator;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.dxc.hms.connection.HibCon;
import com.dxc.hms.model.Admission;
import com.dxc.hms.model.Appointments;
import com.dxc.hms.model.Bill;
import com.dxc.hms.model.Medicalstock;
import com.dxc.hms.model.Prescription;
import com.dxc.hms.model.Receptionist;
import com.dxc.hms.model.Rooms;

public class ReceptionistDao{
HibCon hc=new HibCon();
	
	public void addReceptionist(Receptionist rep) {
		// TODO Auto-generated method stub
		Session ses=hc.getSession();
		ses.save(rep);
		Transaction t=ses.beginTransaction();
		t.commit();
		
	}
	
	public boolean LoginValidate(String user, String userpass) {
		// TODO Auto-generated method stub
		boolean f=false;
		Session ses=hc.getSession();
		Criteria c=ses.createCriteria(Receptionist.class);
		List l=c.list();
		Iterator i=l.iterator();
		while(i.hasNext())
		{
			Receptionist r =(Receptionist)i.next();
		    if(user.equals(r.getName()) && (userpass.equals(r.getPassword()))){
		    	
		    f=true;
		    System.out.println("true");
		    }
		}
		    System.out.println("false");
		return f;
	}
	public List receptionistList() {
		Session ses = hc.getSession();
		Criteria c = ses.createCriteria(Receptionist.class);
		List l = c.list();
		return l;
		
	}
	public void admission(Admission ad) {
		// TODO Auto-generated method stub
		Session ses=hc.getSession();
		ses.save(ad);
		Appointments a = new Appointments();
		a.setPatientname(ad.getPatientname());
		a.setIllness(ad.getIllness());
		a.setSpecialist(ad.getSpl());
		a.setTime(ad.getTime());
		a.setDate(ad.getAdate());
		ses.save(a);
		Transaction t=ses.beginTransaction();
		t.commit();

}
	public void rooms(Rooms rm ) {
		// TODO Auto-generated method stub
		Session ses=hc.getSession();
		ses.save(rm);
		Transaction t=ses.beginTransaction();
		t.commit();

}
	public List admissionList() {
		Session ses= hc.getSession();
		Criteria c = ses.createCriteria(Admission.class);
		List l= c.list();
		Transaction t = ses.beginTransaction();
		t.commit();
		return l;
		
		
	}
	public Bill billGenerate(String name,String illness,String phno) {
		
		Session ses = hc.getSession();
		Criteria c = ses.createCriteria(Prescription.class);
		c.add(Restrictions.eq("patientname", name));
		List<Prescription> l = c.list();
		Prescription d = l.get(0);
		Bill a = new Bill();
		a.setDoctorName(d.getDoctorname());
		a.setName(d.getPatientname());
		a.setMedicinename1(d.getMedicine());
		a.setMedicinename2(d.getMedicine1());
		a.setMedicinename3(d.getMedicine2());
		a.setMedicinename4(d.getMedicine3());
		a.setMedicinename5(d.getMedicine4());
		a.setQuantity1(d.getMedicinequantity());
		a.setQuantity2(d.getMedicinequantity1());
		a.setQuantity3(d.getMedicinequantity2());
		a.setQuantity4(d.getMedicinequantity3());
		a.setQuantity5(d.getMedicinequantity4());
		
		Criteria c1 = ses.createCriteria(Medicalstock.class);
		c1.add(Restrictions.eq("medicinename", d.getMedicine()));
		List<Medicalstock> l1= c1.list();
		Medicalstock m1 = l1.get(0);
		a.setPrice1((float)m1.getPrice());
		
		Criteria c2 = ses.createCriteria(Medicalstock.class);
		c1.add(Restrictions.eq("medicinename", d.getMedicine1()));
		List<Medicalstock> l2= c2.list();
		Medicalstock m2 = l2.get(0);
		a.setPrice2((float)m2.getPrice());
		
		Criteria c3 = ses.createCriteria(Medicalstock.class);
		c1.add(Restrictions.eq("medicinename", d.getMedicine2()));
		List<Medicalstock> l3= c3.list();
		Medicalstock m3 = l3.get(0);
		a.setPrice3((float)m3.getPrice());
		
		Criteria c4 = ses.createCriteria(Medicalstock.class);
		c1.add(Restrictions.eq("medicinename", d.getMedicine3()));
		List<Medicalstock> l4= c4.list();
		Medicalstock m4 = l4.get(0);
		a.setPrice4((float)m4.getPrice());
		
		Criteria c5 = ses.createCriteria(Medicalstock.class);
		c1.add(Restrictions.eq("medicinename", d.getMedicine4()));
		List<Medicalstock> l5= c5.list();
		Medicalstock m5 = l5.get(0);
		a.setPrice5((float)m5.getPrice());
		
		float room_rent=  1200;
		float doctor_fee=2400;
		float diet_service=800;
		float lab_service=3000;
		
		
		double total=a.getPrice1()*a.getQuantity1()+a.getPrice2()*a.getQuantity3()+a.getPrice3()*a.getQuantity3()+
				a.getPrice4()*a.getQuantity4()+a.getPrice5()*a.getQuantity5()+room_rent+doctor_fee+diet_service+lab_service;
		
		a.setConsultation_service(doctor_fee);
		a.setRooom_rent(room_rent);
		a.setLab_service(lab_service);
		a.setDeit_service(diet_service);
		a.setTotal(total);
		a.setIllness(illness);
		a.setStatus("unpaid");
		a.setPhno(phno);
		
		ses.save(a);
		Transaction t = ses.beginTransaction();
		t.commit();
		
		Criteria c6 = ses.createCriteria(Bill.class);
		c6.add(Restrictions.eq("name", name));
		List<Bill> l6=c6.list();
		Bill b1= l6.get(0);
		
		return b1;
		
	}
	
}
