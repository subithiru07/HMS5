package com.dxc.hms.dao;

import java.util.Iterator;
import java.util.List;

import org.apache.catalina.User;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

import com.dxc.hms.connection.HibCon;
import com.dxc.hms.model.Medicalstock;
import com.dxc.hms.model.Pharmacist;

public class PharmacistDao { 
	HibCon hc= new HibCon();
	
	
    public void AddPharmacist(Pharmacist pharmacist) {
	Session ses=hc.getSession();
	ses.save(pharmacist);
	Transaction t=ses.beginTransaction();
	t.commit();
}

	
	public boolean LoginValidate(String user, String password) {
		// TODO Auto-generated method stub
		boolean f=false;
		Session ses=hc.getSession();
		Criteria c=ses.createCriteria(Pharmacist.class);
		List l=c.list();
		Iterator i=l.iterator();
		while(i.hasNext()) {
			Pharmacist p=(Pharmacist) i.next();
			if(user.equals(p.getName())&& (password.equals(p.getPassword()))) {
		    f=true;
			System.out.println("true");
		}
		
		
		
		}
		System.out.println("false");
		return f;
	}
	public List pharmacistList() {
		Session ses = hc.getSession();
		Criteria c = ses.createCriteria(Pharmacist.class);
		List l = c.list();
		return l;
		
		
	}
	public void AddMedicalstock(Medicalstock medicalstock) {
		Session ses=hc.getSession();
		ses.save(medicalstock);
		Transaction t=ses.beginTransaction();
		t.commit();
	}
	public List MedicalstockList() {
		Session ses=hc.getSession();
		Criteria c=ses.createCriteria(Medicalstock.class);
		List l=c.list();
		return l;
	}
	public List updateMedicalstock(Medicalstock medicalstock) {
		// TODO Auto-generated method stub
		Session ses=hc.getSession();
		Criteria ct = ses.createCriteria(Medicalstock.class);
		Criterion c=Restrictions.eq("medicinename", medicalstock.getMedicinename());
		ct.add(c);
		
//		ct.add(Restrictions.eq("medicinename", medicalstock.getMedicinename()));
		System.out.print(medicalstock.getMedicinename());
	    List<Medicalstock> li=ct.list();
   System.out.println(li.isEmpty());
	   Iterator<Medicalstock> i = li.iterator();
	   while(i.hasNext()) {
		   
		   Medicalstock s1= i.next();
		   System.out.print(s1);
   }
		
		  Medicalstock m1 =li.get(0); 
		   System.out.print(m1);
		  
		  Medicalstock m =(Medicalstock) ses.load(Medicalstock.class, m1.getId());
		  m.setManufacturingdate(medicalstock.getManufacturingdate());
		  m.setPrice(medicalstock.getPrice());
		  m.setExpirydate(medicalstock.getExpirydate());
		  m.setQuantity(medicalstock.getQuantity()); 
		  ses.update(m); 
		  Transaction t=ses.beginTransaction(); 
		  t.commit();
		  Criteria c1 =ses.createCriteria(Medicalstock.class); 
		  List l= c1.list();
		 
		return li;
		
 }
	
	
	
	
}