package com.digitalstudio.dashboard.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.digitalstudio.dashboard.exception.ResourceNotFoundException;
import com.digitalstudio.dashboard.model.Customers;
import com.digitalstudio.dashboard.model.ElectricityBill;
import com.digitalstudio.dashboard.model.ElectricityBillDTOV1;
import com.digitalstudio.dashboard.model.ElectricityBillDTOV2;
import com.digitalstudio.dashboard.repository.CustomRepositoryImpl;
import com.digitalstudio.dashboard.repository.CustomerRepository;
import com.digitalstudio.dashboard.service.ElectricityBillService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/electricity-bill")
public class ElectricityBillController {
	@Autowired
	private CustomerRepository customerRepository;
	@Autowired
	private CustomRepositoryImpl customRepositoryImpl;
	@Autowired
	private ElectricityBillService electricityBillService;

	@GetMapping("/getExistingCustomer/{mobileNumber}")
	public ResponseEntity<Customers> getExistingMobileNumber(@PathVariable Long mobileNumber) {
		log.debug("getExistingMobileNumber : {}", mobileNumber);
		Customers customer = customerRepository.findByMobileNumber(mobileNumber).orElseThrow(
				() -> new ResourceNotFoundException("Customer not found with mobile number " + mobileNumber));

		return ResponseEntity.ok(customer);

	}

	@ResponseBody
	@GetMapping("/getExistingBillCustomerId/{mobileNumber}")
	public List<ElectricityBill> getExistingBillCustomerId(@PathVariable Long mobileNumber) throws Exception {
		log.debug("getExistingBillCustomerId : {}", mobileNumber);
		return customRepositoryImpl.findBillCustomerId(mobileNumber);
	}

	@ResponseBody
	@PostMapping("/save")
	public ResponseEntity<String> saveElectricityBill(@RequestBody ElectricityBillDTOV1 electricityBillDTO)
			throws Exception {
		log.debug("save : {}", electricityBillDTO);
		electricityBillService.saveElectricityBill(electricityBillDTO);
		return ResponseEntity.ok().body("Success");

//		ElectricityBillDTO obj = new ElectricityBillDTO();
//		obj.setA("x");
//		obj.setB("y");
//		HttpHeaders headers = new HttpHeaders();
//		headers.add("Custom-Header", "foo");
//		
//
	}

	@ResponseBody
	@GetMapping("/getTableData")
	public List<ElectricityBillDTOV2> getTableData(
			@RequestParam(required = false, name = "fromDt") @DateTimeFormat(pattern = "dd/MM/yyyy") Date fromDt,
			@RequestParam(required = false, name = "toDt") @DateTimeFormat(pattern = "dd/MM/yyyy") Date toDt) {
		log.debug("getTableData : fromDt:{} , toDt:{}", fromDt, toDt);
		return electricityBillService.getTableData(fromDt, toDt);
	}
}
