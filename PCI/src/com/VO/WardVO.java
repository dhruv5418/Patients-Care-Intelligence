package com.VO;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="ward_master")
public class WardVO
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int wardId;
	

	@Column(name="wardname")
	private String wardName;
	

	@Column(name="wardtype")
	private String wardType;


	






	public int getWardId() {
		return wardId;
	}


	public void setWardId(int wardId) {
		this.wardId = wardId;
	}


	public String getWardType() {
		return wardType;
	}


	public void setWardType(String wardType) {
		this.wardType = wardType;
	}


	public String getWardName() {
		return wardName;
	}


	public void setWardName(String wardName) {
		this.wardName = wardName;
	}
	
	
	
}
