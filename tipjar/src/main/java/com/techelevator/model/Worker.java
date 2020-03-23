package com.techelevator.model;

import java.time.LocalDate;

public class Worker {

	private int workerId;
	private String firstName;
	private String lastName;
	private String establishment;
	private String industry;
	private String status;
	private String venmo;
	private String paypalLink;
	private String imagePath;	
	private String personalMessage;	
	private LocalDate entered;
	
	public LocalDate getEntered() {
		return entered;
	}
	public void setEntered(LocalDate entered) {
		this.entered = entered;
	}
	public int getWorkerId() {
		return workerId;
	}
	public void setWorkerId(int workerId) {
		this.workerId = workerId;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEstablishment() {
		return establishment;
	}
	public void setEstablishment(String establishment) {
		this.establishment = establishment;
	}
	public String getIndustry() {
		return industry;
	}
	public void setIndustry(String industry) {
		this.industry = industry;
	}
	public String getVenmo() {
		return venmo;
	}
	public void setVenmo(String venmo) {
		this.venmo = venmo;
	}
	public String getPaypalLink() {
		return paypalLink;
	}
	
	public void setPaypalLink(String paypalLink) {
		this.paypalLink = paypalLink;
	}

	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public String getPersonalMessage() {
		return personalMessage;
	}
	public void setPersonalMessage(String personalMessage) {
		this.personalMessage = personalMessage;
	}
}
