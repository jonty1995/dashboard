package com.digitalstudio.dashboard.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@RequiredArgsConstructor
@ToString
public class ElectricityBillDTOV1 {

	private String mobileNumber;
	private boolean newCustomer;
	private String customerName;
	private String customerId;
	private Double amount;
	private String comment;


}
