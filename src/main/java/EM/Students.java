package EM;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Students {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String firstName;
	private String LastName;
	private String Address;
	private int Standard;
	private int Age;
	private String Gender;
	private long Adhar;
	private long Contact;
	private String EnrollDate;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return LastName;
	}

	public void setLastName(String lastName) {
		LastName = lastName;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public int getStandard() {
		return Standard;
	}

	public void setStandard(int standard) {
		Standard = standard;
	}

	public int getAge() {
		return Age;
	}

	public void setAge(int age) {
		Age = age;
	}

	public String getGender() {
		return Gender;
	}

	public void setGender(String gender) {
		Gender = gender;
	}

	public long getAdhar() {
		return Adhar;
	}

	public void setAdhar(long adhar) {
		Adhar = adhar;
	}

	public long getContact() {
		return Contact;
	}

	public void setContact(long contact) {
		Contact = contact;
	}

	public String getEnrollDate() {
		return EnrollDate;
	}

	public void setEnrollDate(String enrollDate) {
		EnrollDate = enrollDate;
	}

	@Override
	public String toString() {
		return "Studentes [id=" + id + ", firstName=" + firstName + ", LastName=" + LastName + ", Address=" + Address
				+ ", Class=" + Standard + ", Age=" + Age + ", Gender=" + Gender + ", Adhar=" + Adhar + ", Contact="
				+ Contact + ", EnrollDate=" + EnrollDate + "]";
	}

}
