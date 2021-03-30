package com.VO;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;



@Entity
@Table(name="patientscheduledetails")
public class PatientschedularVO {

	@Id
	@GeneratedValue
	private int pscheduleId;
	
	@ManyToOne
	private PatientVO patientVO;
	
	@Column(name="patientMedicine")
	private String patientMedicine;
	
	@Column(name="medicineDescription")
	private String medicineDescription;
	
	@Column(name="medicineTime")
	private String medicineTime;

	public int getPscheduleId() {
		return pscheduleId;
	}

	public void setPscheduleId(int pscheduleId) {
		this.pscheduleId = pscheduleId;
	}

	public PatientVO getPatientVO() {
		return patientVO;
	}

	public void setPatientVO(PatientVO patientVO) {
		this.patientVO = patientVO;
	}

	public String getPatientMedicine() {
		return patientMedicine;
	}

	public void setPatientMedicine(String patientMedicine) {
		this.patientMedicine = patientMedicine;
	}

	public String getMedicineDescription() {
		return medicineDescription;
	}

	public void setMedicineDescription(String medicineDescription) {
		this.medicineDescription = medicineDescription;
	}

	public String getMedicineTime() {
		return medicineTime;
	}

	public void setMedicineTime(String medicineTime) {
		this.medicineTime = medicineTime;
	}
	
}
