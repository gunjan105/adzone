package pojo;
// Generated 14 Oct, 2019 12:44:52 AM by Hibernate Tools 5.2.3.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * PublicityDetails generated by hbm2java
 */
public class PublicityDetails implements java.io.Serializable {

	private Integer publicityId;
	private String publicityName;
	private String publicityAddress;
	private String publicityContact;
	private String publicityEmail;
	private String publicityRegistrationNumber;
	private String adhaarNo;
	private String websiteLink;
	private String password;
	private String city;
	private String state;
	private int pincode;
	private String publicityType;
	private int numOfHoarding;
	private Date publicityRegisterDate;
	private Integer publicityRating;
	private String publicityStatus;
	private Set productses = new HashSet(0);

	public PublicityDetails() {
	}

	public PublicityDetails(String publicityName, String publicityContact, String publicityEmail,
			String publicityRegistrationNumber, String password, String city, String state, int pincode,
			String publicityType, int numOfHoarding, Date publicityRegisterDate, String publicityStatus) {
		this.publicityName = publicityName;
		this.publicityContact = publicityContact;
		this.publicityEmail = publicityEmail;
		this.publicityRegistrationNumber = publicityRegistrationNumber;
		this.password = password;
		this.city = city;
		this.state = state;
		this.pincode = pincode;
		this.publicityType = publicityType;
		this.numOfHoarding = numOfHoarding;
		this.publicityRegisterDate = publicityRegisterDate;
		this.publicityStatus = publicityStatus;
	}

	public PublicityDetails(String publicityName, String publicityAddress, String publicityContact,
			String publicityEmail, String publicityRegistrationNumber, String adhaarNo, String websiteLink,
			String password, String city, String state, int pincode, String publicityType, int numOfHoarding,
			Date publicityRegisterDate, Integer publicityRating, String publicityStatus, Set productses) {
		this.publicityName = publicityName;
		this.publicityAddress = publicityAddress;
		this.publicityContact = publicityContact;
		this.publicityEmail = publicityEmail;
		this.publicityRegistrationNumber = publicityRegistrationNumber;
		this.adhaarNo = adhaarNo;
		this.websiteLink = websiteLink;
		this.password = password;
		this.city = city;
		this.state = state;
		this.pincode = pincode;
		this.publicityType = publicityType;
		this.numOfHoarding = numOfHoarding;
		this.publicityRegisterDate = publicityRegisterDate;
		this.publicityRating = publicityRating;
		this.publicityStatus = publicityStatus;
		this.productses = productses ;
		
	}

	public Integer getPublicityId() {
		return this.publicityId;
	}

	public void setPublicityId(Integer publicityId) {
		this.publicityId = publicityId;
	}

	public String getPublicityName() {
		return this.publicityName;
	}

	public void setPublicityName(String publicityName) {
		this.publicityName = publicityName;
	}

	public String getPublicityAddress() {
		return this.publicityAddress;
	}

	public void setPublicityAddress(String publicityAddress) {
		this.publicityAddress = publicityAddress;
	}

	public String getPublicityContact() {
		return this.publicityContact;
	}

	public void setPublicityContact(String publicityContact) {
		this.publicityContact = publicityContact;
	}

	public String getPublicityEmail() {
		return this.publicityEmail;
	}

	public void setPublicityEmail(String publicityEmail) {
		this.publicityEmail = publicityEmail;
	}

	public String getPublicityRegistrationNumber() {
		return this.publicityRegistrationNumber;
	}

	public void setPublicityRegistrationNumber(String publicityRegistrationNumber) {
		this.publicityRegistrationNumber = publicityRegistrationNumber;
	}

	public String getAdhaarNo() {
		return this.adhaarNo;
	}

	public void setAdhaarNo(String adhaarNo) {
		this.adhaarNo = adhaarNo;
	}

	public String getWebsiteLink() {
		return this.websiteLink;
	}

	public void setWebsiteLink(String websiteLink) {
		this.websiteLink = websiteLink;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public int getPincode() {
		return this.pincode;
	}

	public void setPincode(int pincode) {
		this.pincode = pincode;
	}

	public String getPublicityType() {
		return this.publicityType;
	}

	public void setPublicityType(String publicityType) {
		this.publicityType = publicityType;
	}

	public int getNumOfHoarding() {
		return this.numOfHoarding;
	}

	public void setNumOfHoarding(int numOfHoarding) {
		this.numOfHoarding = numOfHoarding;
	}

	public Date getPublicityRegisterDate() {
		return this.publicityRegisterDate;
	}

	public void setPublicityRegisterDate(Date publicityRegisterDate) {
		this.publicityRegisterDate = publicityRegisterDate;
	}

	public Integer getPublicityRating() {
		return this.publicityRating;
	}

	public void setPublicityRating(Integer publicityRating) {
		this.publicityRating = publicityRating;
	}

	public String getPublicityStatus() {
		return this.publicityStatus;
	}

	public void setPublicityStatus(String publicityStatus) {
		this.publicityStatus = publicityStatus;
	}

	public Set getProductses() {
		return this.productses;
	}

	public void setProductses(Set productses) {
		this.productses = productses;
	}

}