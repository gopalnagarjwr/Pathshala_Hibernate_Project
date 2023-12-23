package EM;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;

@Entity
public class Teachers {
   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id ;
   private String firstName;
   private String LastName;
   private String Address;
   private String Qualification;
   private int Experience;
   private int Age;
   private String Gender;
   private String Subject;
   private long Contact;
   private long Adhar;
   private String RigesterationDate;
   @Lob
   private String img;
public String getImg() {
	return img;
}
public void setImg(String img) {
	this.img = img;
}
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
public String getQualification() {
	return Qualification;
}
public void setQualification(String qualification) {
	Qualification = qualification;
}
public int getExperience() {
	return Experience;
}
public void setExperience(int experience) {
	Experience = experience;
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
public String getSubject() {
	return Subject;
}
public void setSubject(String subject) {
	Subject = subject;
}
public long getContact() {
	return Contact;
}
public void setContact(long contact) {
	Contact = contact;
}
public long getAdhar() {
	return Adhar;
}
public void setAdhar(long adhar) {
	Adhar = adhar;
}
public String getRigesterationDate() {
	return RigesterationDate;
}
public void setRigesterationDate(String rigesterationDate) {
	RigesterationDate = rigesterationDate;
}
@Override
public String toString() {
	return "Teachers [id=" + id + ", firstName=" + firstName + ", LastName=" + LastName + ", Address=" + Address
			+ ", Qualification=" + Qualification + ", Experience=" + Experience + ", Age=" + Age + ", Gender=" + Gender
			+ ", Subject=" + Subject + ", Contact=" + Contact + ", Adhar=" + Adhar + ", RigesterationDate="
			+ RigesterationDate + "]";
}
   
   
   
   
	
}
