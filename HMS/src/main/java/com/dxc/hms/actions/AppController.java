package com.dxc.hms.actions;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dxc.hms.dao.AdminDao;
import com.dxc.hms.dao.AppointmentsDao;
import com.dxc.hms.dao.DoctorDao;
import com.dxc.hms.dao.PatientDao;
import com.dxc.hms.dao.PharmacistDao;
import com.dxc.hms.dao.ReceptionistDao;
import com.dxc.hms.model.Admin;
import com.dxc.hms.model.Admission;
import com.dxc.hms.model.Appointments;
import com.dxc.hms.model.Bill;
import com.dxc.hms.model.ConfirmedAppointment;
import com.dxc.hms.model.Doctor;
import com.dxc.hms.model.Medicalstock;
import com.dxc.hms.model.Patient;
import com.dxc.hms.model.Pharmacist;
import com.dxc.hms.model.Prescription;
import com.dxc.hms.model.Receptionist;
import com.dxc.hms.model.Rooms;

@Controller
public class AppController implements AppCtrl {
	@RequestMapping(value="/admin/add")
	public ModelAndView addAdmin(@RequestParam(value="username")String user,@RequestParam(value="password") String password,@RequestParam(value="email")String email,@RequestParam(value="phone")String phno) {
		AdminDao ad = new AdminDao();
		Admin a = new Admin();
		a.setEmail(email);
		a.setUsername(user);
		a.setPhno(phno);
		a.setPassword(password);
		ad.addAdmin(a);
		
		return new ModelAndView("","","");
		
	}
	
	@RequestMapping(value="/admin/login")
	public ModelAndView LoginValidate(@RequestParam(value="username")String user,@RequestParam(value="password") String password) {
		AdminDao ad = new AdminDao();
		boolean b= ad.Login(user, password);
		if(b) {
			return new ModelAndView("adminhome","data",user);
		}
		else {
			return new ModelAndView("loginagain","data",user);
		}
		
	
	}
	   @RequestMapping(value="/patient/add")
	    public ModelAndView addpatient(@RequestParam(value="username") String Username, @RequestParam(value="password")String password, @RequestParam(value="emailid")String emailid, @RequestParam(value="phonenumber")String phonenumber,  @RequestParam(value="address")String address, @RequestParam(value="age")int age,  @RequestParam(value="gender")String gender )
	    {
	    PatientDao pd=new PatientDao();
	    
	    Patient p=new Patient();
	    p.setUsername(Username);
	    p.setPassword(password);
	    p.setEmailid(emailid);
	    p.setPhonenumber(phonenumber);
	    p.setAddress(address);
	    p.setAge(age);
	    p.setGender(gender);
	    pd.AddPatient(p);
	    return new ModelAndView("");
	        
	    }

	 

	    @Override
	    @RequestMapping(value="/patient/login",method=RequestMethod.POST)
	    public ModelAndView PatientLogin(@RequestParam(value="username")String user, @RequestParam(value="password")String userpass) {
	        // TODO Auto-generated method stub
	        PatientDao pd= new PatientDao();
	        boolean b= pd.LoginValidate(user, userpass);
	        if(b) {
	            return new ModelAndView("patienthome","data",user);
	        }
	        
	        else {
	            return new ModelAndView("patientloginagain");
	        }
	        
	   }
	    @RequestMapping(value="/doctor/add")
		public ModelAndView addDoctor(@RequestParam(value="count")int count,@RequestParam(value="date")String date,@RequestParam(value="name")String name, @RequestParam(value="emailid")String emailid,@RequestParam(value="phonenumber")String phonenumber,@RequestParam(value="department")String department,@RequestParam(value="availabletiming")String availabletiming,@RequestParam(value="gender")String gender, @RequestParam(value="password")String password) { 
		DoctorDao doc= new DoctorDao();
		Doctor d = new Doctor();
		d.setCount(count);
		d.setDate(date);
		d.setName(name);
		d.setPhonenumber(phonenumber);
		d.setEmailid(emailid);
		d.setDepartment(department);
		d.setGender(gender);
		d.setPassword(password);
		d.setAvailabletiming(availabletiming);
		doc.AddDoctor(d);
		
		return new ModelAndView("adminhome");
		
		
	}

	
		@RequestMapping(value="/doctor/login",method=RequestMethod.POST)
		public ModelAndView DoctorLogin(@RequestParam(value="username")String user,@RequestParam(value="password" )String userpassword) {
			// TODO Auto-generated method stub
			DoctorDao doc = new DoctorDao();
			boolean b=doc.LoginValidate(user, userpassword);
			if(b) {
				return new ModelAndView("doctorhome","data",user);
			}
			else {
				return new ModelAndView("doctorloginagain");
			}
		
		}
	    
		
		 @RequestMapping(value="/pharmacist/add")
		 public ModelAndView addPharmacist(@RequestParam(value="name")String name,@RequestParam(value="phonenumber")String phonenumber,@RequestParam(value="emailid")String emailid,@RequestParam(value="password")String password) {
			PharmacistDao pd = new PharmacistDao();
			Pharmacist p = new Pharmacist();
			p.setName(name);
			p.setPhonenumber(phonenumber);
			p.setEmailid(emailid);
			p.setPassword(password);
			pd.AddPharmacist(p);
			
			 return new ModelAndView("adminhome","","") ;
		 }

		@RequestMapping(value="/pharmacist/login", method=RequestMethod.POST)
		public ModelAndView PharmacistLogin(@RequestParam(value="name")String user,@RequestParam(value="password")String password) {
			// TODO Auto-generated method stub
			PharmacistDao pd=new PharmacistDao();
			boolean b=pd.LoginValidate(user, password);
			if(b) {
				return new ModelAndView("pharmacisthome","data",user);
			}
			else
			{
			return new ModelAndView("pharmacistloginagain");
		    }
		}
		
		
		@RequestMapping(value="/receptionist/add")
		public ModelAndView addReceptionist(@RequestParam(value="name")String name,@RequestParam(value="phnnumber")int phnnumber,@RequestParam(value="email")String email,@RequestParam(value="password")String password)
		{
		ReceptionistDao rd=new ReceptionistDao();
	    Receptionist r=new Receptionist();
	    r.setName(name);
	    r.setPassword(password);
	    r.setEmail(email);
	    r.setPhnnumber(phnnumber);
	    rd.addReceptionist(r);
		return new ModelAndView("adminhome","data",name);
	   }

		
		@RequestMapping(value="/receptionist/login",method=RequestMethod.POST)
		// TODO Auto-generated method stub
		public ModelAndView Login(@RequestParam(value="name")String user, @RequestParam(value="password")String userpass) {
		ReceptionistDao rd=new ReceptionistDao();
		boolean b=rd.LoginValidate(user, userpass);
		if(b)
		{
			return new ModelAndView("receptionisthome","data",user);
			
		}
		else
		{
			return new ModelAndView("receptionistloginagain");
		}
			
			
			
		}
		@RequestMapping(value="/doctor/list")
	public ModelAndView doctorList() {
		DoctorDao dd= new DoctorDao();
		
		List l =dd.doctorList();
		
		
		
		return new ModelAndView("doctorlist","data",l);
			
		}
		@RequestMapping(value="/patient/list")
		public ModelAndView patientList() {
			PatientDao p = new PatientDao();
			List l = p.patientList(); 
			return new ModelAndView("patientlist","data",l);
			
		}
		@RequestMapping(value="/pharmacist/list")
		public ModelAndView pharmacistList() {
			PharmacistDao pd= new PharmacistDao();
			List l = pd.pharmacistList();
			
			return new ModelAndView("pharmacistlist","data",l);
			
		}
		@RequestMapping(value="/receptionist/list")
		public ModelAndView receptionistList() {
			ReceptionistDao rd = new ReceptionistDao();
			List l= rd.receptionistList();
			return new ModelAndView("receptionistlist","data",l);
			
		}
		 @RequestMapping(value="/appointments/add")
		    public ModelAndView appointments(@RequestParam(value="time") String time, @RequestParam(value="date")String date, @RequestParam(value="specialist")String specialist,  @RequestParam(value="illness")String illness, @RequestParam(value="patientname")String patientname)
		    {
		    AppointmentsDao ap=new AppointmentsDao();
		   
		    Appointments a =new Appointments();
		   
		    a.setTime(time);
		    a.setDate(date);
		    a.setSpecialist(specialist);
		   
		    a.setIllness(illness);
		    a.setPatientname(patientname);
		    ap.bookAppointments(a);
		        return new ModelAndView("");
		       
		    }

		@Override
		@RequestMapping(value="/appointments/make")
		public ModelAndView makeAppointment(@RequestParam(value="time") String time, @RequestParam(value="date")String date, @RequestParam(value="specialist")String specialist,  @RequestParam(value="illness")String illness, @RequestParam(value="patientname")String patientname,@RequestParam(value="appid") int id) {
			// TODO Auto-generated method stub
			AppointmentsDao ad = new AppointmentsDao();
			ConfirmedAppointment cp = new ConfirmedAppointment();
			cp.setName(patientname);
			cp.setSpecialist(specialist);
			cp.setIllness(illness);
			cp.setDate(date);
			cp.setTime(time);
			
			List l = ad.makeAppointments(cp, id);
			
			
			return new ModelAndView("appointmentlist","data",l);
		}

		@Override
		@RequestMapping(value="/appointments/list")
		public ModelAndView appointmentList() {
			// TODO Auto-generated method stub
			AppointmentsDao ad = new AppointmentsDao();
			List  l= ad.appointmentslist();
			return new ModelAndView("appoitmentlist","data",l);
		}

		@Override
		@RequestMapping(value="/doctor/appointment",method=RequestMethod.POST)
		public ModelAndView doctorApplist(@RequestParam(value="name")String doctorname,@RequestParam(value="date") String date) {
			// TODO Auto-generated method stub
			DoctorDao d = new DoctorDao();
			List l= d.doctorAppList(doctorname, date);
			
			return new ModelAndView("doctorapplist","data",l);
		}

		@Override
		@RequestMapping(value="/appointment/status")
		public ModelAndView appointmentStatus(HttpSession session) {
			// TODO Auto-generated method stub
			String name = (String) session.getAttribute("user");
			System.out.print(name);
			PatientDao pd = new  PatientDao();
			List l = pd.appointmentStatus(name);
			
			return new ModelAndView("appointmentstatus","data",l);
		}
		@RequestMapping(value="/medicalstock/add",method=RequestMethod.POST)
		public ModelAndView addMedicalstock(@RequestParam(value="medicinename")String medicinename,@RequestParam(value="quantity")String quantity,@RequestParam(value="components")String components,@RequestParam(value="manufacturingdate")String manufacturingdate,@RequestParam(value="expirydate")String expirydate,@RequestParam(value="price")float price) {
			PharmacistDao md = new PharmacistDao();
			Medicalstock ms = new Medicalstock();
			ms.setMedicinename(medicinename);
			ms.setQuantity(quantity);
			ms.setComponents(components);
			ms.setManufacturingdate(manufacturingdate);
			ms.setExpirydate(expirydate);
			ms.setPrice(price);
			md.AddMedicalstock(ms);
			
			 return new ModelAndView("","","") ;
		}
		@RequestMapping(value="/medicalstocklist/list")
		public ModelAndView MedicalstockList() {
			PharmacistDao ms=new PharmacistDao();
			List l=ms.MedicalstockList();
			return new ModelAndView("medicalstocklist","data",l);
		}
		@RequestMapping(value = "/edit/medicalstock", method = RequestMethod.POST)
		   public ModelAndView editMedicalstock(@RequestParam(value="medicinename")String medicinename,@RequestParam(value="quantity")String quantity,@RequestParam(value="components")String components,@RequestParam(value="manufacturingdate")String manufacturingdate,@RequestParam(value="expirydate")String expirydate,@RequestParam(value="price")float price) {
			    PharmacistDao md = new PharmacistDao();
				Medicalstock ms = new Medicalstock();
				
				ms.setMedicinename(medicinename);
				ms.setQuantity(quantity);
				ms.setComponents(components);
				ms.setManufacturingdate(manufacturingdate);
				ms.setExpirydate(expirydate);
				ms.setPrice(price);
		List l=md.updateMedicalstock(ms);

		    return new ModelAndView("medicalstocklist","data",l);
		}
		@RequestMapping(value="/prescription/add")
		public ModelAndView addprescription(@RequestParam(value="doctorname")String doctorname,@RequestParam(value="patientname")String patientname,@RequestParam(value="patientage")String patientage,@RequestParam(value="patientgender")String patientgender,
				@RequestParam(value="medicine")String medicine,@RequestParam(value="medicinequantity")float medicinequantity,
				@RequestParam(value="medicine1")String medicine1,@RequestParam(value="medicinequantity1")float medicinequantity1,
				@RequestParam(value="medicine2")String medicine2,@RequestParam(value="medicinequantity2")float medicinequantity2,
				@RequestParam(value="medicine3")String medicine3,@RequestParam(value="medicinequantity3")float medicinequantity3,
				@RequestParam(value="medicine4")String medicine4,@RequestParam(value="medicinequantity4")float medicinequantity4) 
		
		{
			
		DoctorDao pre = new DoctorDao();
		Prescription p = new Prescription();
		p.setMedicine(medicine);
		p.setDoctorname(doctorname);
		p.setMedicinequantity(medicinequantity);
		p.setPatientage(patientage);
		p.setPatientgender(patientgender);
		p.setPatientname(patientname);
		p.setMedicine1(medicine1);
		p.setMedicine2(medicine2);
		p.setMedicine3(medicine3);
		p.setMedicine4(medicine4);
		p.setMedicinequantity1(medicinequantity1);
		p.setMedicinequantity2(medicinequantity2);
		p.setMedicinequantity3(medicinequantity3);
	    p.setMedicinequantity4(medicinequantity4);
		pre.addprescription(p);
		
		return new ModelAndView();
		
		}
		
		@RequestMapping(value="/admission")
		public ModelAndView admission(@RequestParam(value="spl")String spl,@RequestParam(value="time")String time,@RequestParam(value="date")String date,@RequestParam(value="patientname")String patientname,@RequestParam(value="age")int age,@RequestParam(value="phonenumber")String phonenumber,@RequestParam(value="illness")String illness,@RequestParam(value="status")String status,@RequestParam(value="floornumber")String floornumber,@RequestParam(value="roomnumber")String roomnumber)
		{
		ReceptionistDao ad=new ReceptionistDao();
	    Admission a=new Admission();
	    a.setPatientname(patientname);
	    a.setAdate(date);
	    a.setSpl(spl);
	    a.setTime(time);
	    a.setStatus(status);
	    a.setAge(age);
	    a.setPhonenumber(phonenumber);
	    a.setIllness(illness);
	    a.setFloornumber(floornumber);
	    a.setRoomnumber(roomnumber);
	    ad.admission(a);
		return new ModelAndView("");
		
	}
		@RequestMapping(value="/room")
		public ModelAndView rooms(@RequestParam(value="patientname")String patientname,@RequestParam(value="floornumber")String floornumber,@RequestParam(value="roomnumber")String roomnumber,@RequestParam(value="availability")String availability)
		{
			
		ReceptionistDao ad=new ReceptionistDao();
	    Rooms r=new Rooms();
	    r.setPatientname(patientname);
	    r.setFloornumber(floornumber);
	    r.setRoomnumber(roomnumber);
	    r.setAvailability(availability);
	    ad.rooms(r);
		return new ModelAndView("");
		
	}
		@RequestMapping(value="/admissionlist")
		public ModelAndView admissionList() {
			ReceptionistDao rd = new ReceptionistDao();
			List l = rd.admissionList();
			
			return new ModelAndView("admission","data", l);
			
		}
		@RequestMapping(value="/generatebill", method = RequestMethod.POST)
		public ModelAndView generateBill(@RequestParam(value="patientname")String name,@RequestParam(value="illness")String illness,@RequestParam(value="phno")String phno) {
			
			ReceptionistDao rd = new ReceptionistDao();
			Bill b = rd.billGenerate(name,illness,phno);
			
			return new ModelAndView("bill","data",b);
			
		}
		
		

	
}