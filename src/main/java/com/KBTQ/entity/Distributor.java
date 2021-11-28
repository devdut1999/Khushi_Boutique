package com.KBTQ.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.KBTQ.validation.ValidEmail;


@Entity
@Table(name = "distributor")
public class Distributor {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "distributor_id")
	private int id;

	@Column(name = "distributor_name")
	@NotNull(message = "is required")
	@Size(min = 1, message = "is required")
	private String distributorName;

	@Column(name="street")
	private String street;
	
	@Column(name="city")
	private String city;
	
	@Column(name="state")
	private String state;

	@ValidEmail
	@NotNull(message = "is required")
	@Size(min = 1, message = "is required")
	@Column(name = "email")
	private String email;
	
	//no-arg constructor
	public Distributor() {
			
	}

	//getters and setters
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDistributorName() {
		return distributorName;
	}

	public void setDistributorName(String distributorName) {
		this.distributorName = distributorName;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	//to String
	
	@Override
	public String toString() {
		return "Distributor [id=" + id + ", distributorName=" + distributorName + ", street=" + street + ", city=" + city + ", state="
				+ state + ", email=" + email + "]";
	}
	
	

}
