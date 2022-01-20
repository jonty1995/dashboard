package com.digitalstudio.dashboard.utility;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.digitalstudio.dashboard.repository.CustomerRepository;
import com.digitalstudio.dashboard.repository.ElectricityBillRepository;

@Component
public class IdGenerator {

	@Autowired
	private CustomerRepository customerRepository;

	@Autowired
	private ElectricityBillRepository electricityBillRepository;

	public String getIdForCustomer() {
		long nextId = customerRepository.getMaxCustomerId() + 1;
		return "C" + LocalDateTime.now().format(DateTimeFormatter.ofPattern("ddMMyyyy"))
				+ String.format("%05d", nextId);
	}

	public String getIdForElectricityBill() {
		long nextId = electricityBillRepository.getMaxBillId() + 1;
		return "EB" + LocalDateTime.now().format(DateTimeFormatter.ofPattern("ddMMyyyy"))
				+ String.format("%05d", nextId);
	}
}
