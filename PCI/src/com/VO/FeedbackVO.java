package com.VO;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="feedback_master")
public class FeedbackVO {

	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int feedbackId;
	
	@Column(name="star")
	private String star;
	
	@Column(name="message")
	private String message;
	
	@Column(name="date")
	private String date;
	
	@Column(name="time")
	private String time;
	
	public int getFeedbackId() {
		return feedbackId;
	}

	public void setFeedbackId(int feedbackId) {
		this.feedbackId = feedbackId;
	}

	public String getStar() {
		return star;
	}

	public void setStar(String star) {
		this.star = star;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public LoginVO getLvo() {
		return lvo;
	}

	public void setLvo(LoginVO lvo) {
		this.lvo = lvo;
	}

	@ManyToOne
	LoginVO lvo;
	
	
}
