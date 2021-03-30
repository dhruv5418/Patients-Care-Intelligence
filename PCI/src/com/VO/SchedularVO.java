package com.VO;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="schedular_master")
public class SchedularVO {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int schedularId;
	
	@Column(name="startdate")
	private String startDate;
	
	@Column(name="starttime")
	private String startTime;
	
	@Column(name="enddate")
	private String endDate;

	@Column(name="endtime")
	private String endTime;
	
	@Column(name="currentdate")
	private String currentDate;
		
	@ManyToOne
	NurseVO nurseVO;
	
	@ManyToOne
	WardVO wardVO;

	public int getSchedularId() {
		return schedularId;
	}

	public void setSchedularId(int schedularId) {
		this.schedularId = schedularId;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getCurrentDate() {
		return currentDate;
	}

	public void setCurrentDate(String currentDate) {
		this.currentDate = currentDate;
	}

	public NurseVO getNurseVO() {
		return nurseVO;
	}

	public void setNurseVO(NurseVO nurseVO) {
		this.nurseVO = nurseVO;
	}

	public WardVO getWardVO() {
		return wardVO;
	}

	public void setWardVO(WardVO wardVO) {
		this.wardVO = wardVO;
	}
	
	
		
}
