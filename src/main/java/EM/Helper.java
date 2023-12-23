package EM;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class Helper {

	private static SessionFactory Sessionfectory = getSessionfectory();

	public static SessionFactory getSessionfectory() {
		try {
			Configuration con = new Configuration();
			return con.configure("hibernate.cfg.xml").buildSessionFactory();
		} catch (Throwable ex) {
			System.err.println("Initial SessionFactory creation failed: " + ex);
			throw new ExceptionInInitializerError(ex);
		}
	}

	public static SessionFactory getSession() {
		return Sessionfectory;
	}

	public static void teacherData(String firstName, String LastName, String Address, String Qualification,
			String Experience, String Age, String Gender, String Subject, String Contact, String Adhar,
			String RigesterationDate) {
		Session s = getSession().openSession();
		Transaction t = s.beginTransaction();
		Teachers T = new Teachers();
		T.setFirstName(firstName);
		T.setLastName(LastName);
		T.setAddress(Address);
		T.setQualification(Qualification);
		T.setExperience(Integer.parseInt(Experience));
		T.setAge(Integer.parseInt(Age));
		T.setGender(Gender);
		T.setSubject(Subject);
		T.setContact(Long.parseLong(Contact));
		T.setAdhar(Long.parseLong(Adhar));
		T.setRigesterationDate(RigesterationDate);
		s.save(T);
		t.commit();
		s.close();
	}

	public static void studentData(String firstName, String LastName, String Address, String Standard, String Age,
			String Gender, String Contact, String Adhar, String EnrollDate) {

		Session s = getSession().openSession();
		Transaction t = s.beginTransaction();

		Students st = new Students();

		st.setFirstName(firstName);
		st.setLastName(LastName);
		st.setAddress(Address);
		st.setStandard(Integer.parseInt(Standard));
		st.setAge(Integer.parseInt(Age));
		st.setGender(Gender);
		st.setContact(Long.parseLong(Contact));
		st.setAdhar(Long.parseLong(Adhar));
		st.setEnrollDate(EnrollDate);
		s.save(st);
		t.commit();
		s.close();

	}

	public static void update(String id,String fname, String lname, String add, String cl, String age, String gender,
			String adhar, String ph, String enDate) {
		
		Session s = getSession().openSession();
		Transaction t = s.beginTransaction();
		
		Students st = new Students();
        st.setId(Integer.parseInt(id));
		st.setFirstName(fname);
		st.setLastName(lname);
		st.setAddress(add);
		st.setStandard(Integer.parseInt(cl));
		st.setAge(Integer.parseInt(age));
		st.setGender(gender);
		st.setAdhar(Long.parseLong(adhar));
		st.setContact(Long.parseLong(ph));
		st.setEnrollDate(enDate);
		 s.saveOrUpdate(st);
	        t.commit();
	    	s.close();
	}
	
	public static void teacherUpdate(String id ,String firstName, String LastName, String Address, String Qualification,
			String Experience, String Age, String Gender, String Subject, String Contact, String Adhar,
			String RigesterationDate) {
		Session s = getSession().openSession();
		Transaction t = s.beginTransaction();
		
		Teachers T = new Teachers();
		T.setId(Integer.parseInt(id));
		T.setFirstName(firstName);
		T.setLastName(LastName);
		T.setAddress(Address);
		T.setQualification(Qualification);
		T.setExperience(Integer.parseInt(Experience));
		T.setAge(Integer.parseInt(Age));
		T.setGender(Gender);
		T.setSubject(Subject);
		T.setContact(Long.parseLong(Contact));
		T.setAdhar(Long.parseLong(Adhar));
		T.setRigesterationDate(RigesterationDate);
		 s.saveOrUpdate(T);
	        t.commit();
	    	s.close();
	}
	
	
	public static void employeeDate( String firstName,String LastName,String Address,String work,String email,String Age,String Gender, String Contact, String Adhar,
			String date) {
		Session s = getSession().openSession();
		Transaction t = s.beginTransaction();
		Employee e = new Employee();
		e.setFirstName(firstName);
		e.setLastName(LastName);
		e.setAddress(Address);
		e.setWork(work);
		e.setAge(Integer.parseInt(Age));
		e.setGender(Gender);
		e.setEmail(email);
		e.setContact(Long.parseLong(Contact));
		e.setAdhar(Long.parseLong(Adhar));
		e.setDate(date);
		 s.save(e);
	        t.commit();
	    	s.close();
		
		
	}
	
	public static void employeeUpdate(String id, String firstName,String LastName,String Address,String work,String email,String Age,String Gender, String Contact, String Adhar,
			String date) {
		Session s = getSession().openSession();
		Transaction t = s.beginTransaction();
		Employee e = new Employee();
		
		e.setId(Integer.parseInt(id));
		e.setFirstName(firstName);
		e.setLastName(LastName);
		e.setAddress(Address);
		e.setWork(work);
		e.setAge(Integer.parseInt(Age));
		e.setGender(Gender);
		e.setEmail(email);
		e.setContact(Long.parseLong(Contact));
		e.setAdhar(Long.parseLong(Adhar));
		e.setDate(date);
		 s.saveOrUpdate(e);
	        t.commit();
	    	s.close();
		
		
	}
}
