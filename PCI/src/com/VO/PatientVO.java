package com.VO;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="patientdetails")
public class PatientVO {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int patientId;
	
	@Column(name="patientContact")
	private String patientContact;
	
	@Column(name="patientName")
	private String patientName;
	
	@Column(name="patientDOB")
	private String patientDOB;
	
	@Column(name="patientGender")
	private String patientGender;
	
	@Column(name="patientAddress")
	private String patientAddress;
	
	@Column(name="patientRoomNo")
	private String patientRoomNo;
	
	@Column(name="patientBedNo")
	private String patientBedNo;
	
	@ManyToOne
	private WardVO wardVO;

	public int getPatientId() {
		return patientId;
	}

	public void setPatientId(int patientId) {
		this.patientId = patientId;
	}

	public String getPatientContact() {
		return patientContact;
	}

	public void setPatientContact(String patientContact) {
		this.patientContact = patientContact;
	}

	public String getPatientName() {
		return patientName;
	}

	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}

	public String getPatientDOB() {
		return patientDOB;
	}

	public void setPatientDOB(String patientDOB) {
		this.patientDOB = patientDOB;
	}

	public String getPatientGender() {
		return patientGender;
	}

	public void setPatientGender(String patientGender) {
		this.patientGender = patientGender;
	}

	public String getPatientAddress() {
		return patientAddress;
	}

	public void setPatientAddress(String patientAddress) {
		this.patientAddress = patientAddress;
	}

	public String getPatientRoomNo() {
		return patientRoomNo;
	}

	public void setPatientRoomNo(String patientRoomNo) {
		this.patientRoomNo = patientRoomNo;
	}

	public String getPatientBedNo() {
		return patientBedNo;
	}

	public void setPatientBedNo(String patientBedNo) {
		this.patientBedNo = patientBedNo;
	}

	public WardVO getWardVO() {
		return wardVO;
	}

	public void setWardVO(WardVO wardVO) {
		this.wardVO = wardVO;
	}
	
	
	
	

}
