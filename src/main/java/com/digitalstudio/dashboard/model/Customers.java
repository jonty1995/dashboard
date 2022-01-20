package com.digitalstudio.dashboard.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;
import lombok.ToString;

@Entity
@Table(name = "ds_customers")

@Data
@AllArgsConstructor
@RequiredArgsConstructor
@ToString
public class Customers {
	@Id
	@Column(name = "customer_id")
	private String customerId;
	@Column(name = "customer_name")
	private String customerName;
	@Column(name = "mobile_number")
	private Long mobileNumber;
	@Column(name = "location")
	private String location;
}
