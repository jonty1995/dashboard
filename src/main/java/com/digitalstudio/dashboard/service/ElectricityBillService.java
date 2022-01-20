package com.digitalstudio.dashboard.service;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.digitalstudio.dashboard.model.Customers;
import com.digitalstudio.dashboard.model.ElectricityBill;
import com.digitalstudio.dashboard.model.ElectricityBillDTOV1;
import com.digitalstudio.dashboard.model.ElectricityBillDTOV2;
import com.digitalstudio.dashboard.repository.CustomRepositoryImpl;
import com.digitalstudio.dashboard.repository.CustomerRepository;
import com.digitalstudio.dashboard.repository.ElectricityBillRepository;
import com.digitalstudio.dashboard.utility.DateConversion;
import com.digitalstudio.dashboard.utility.IdGenerator;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class ElectricityBillService {

	@Autowired
	private IdGenerator idGenerator;

	@Autowired
	private DateConversion dateConversion;

	@Autowired
	private CustomRepositoryImpl CustomRepositoryImpl;

	@Autowired
	private CustomerRepository customerRepository;

	@Autowired
	private ElectricityBillRepository electricityBillRepository;

	@Transactional
	public void saveElectricityBill(ElectricityBillDTOV1 electricityBillDTO) throws Exception {
		log.debug("{}", electricityBillDTO);
		if (electricityBillDTO.isNewCustomer()) {
			log.debug("New Customer");
			Customers customer = new Customers(idGenerator.getIdForCustomer(), electricityBillDTO.getCustomerName(),
					Long.parseLong(electricityBillDTO.getMobileNumber()), "");
			log.debug("{}", customer);
			Customers response = customerRepository.save(customer);
			if (response != null) {
				log.debug("New Customer Created!");
			}

		}

		String customerId = customerRepository.findByMobileNumber(Long.parseLong(electricityBillDTO.getMobileNumber()))
				.orElseGet(() -> new Customers()).getCustomerId();

		ElectricityBill electricityBill = new ElectricityBill(idGenerator.getIdForElectricityBill(),
				electricityBillDTO.getCustomerId(), electricityBillDTO.getCustomerName(),
				electricityBillDTO.getAmount(), null, customerId, null, null, electricityBillDTO.getComment());
		electricityBillRepository.save(electricityBill);

	}

	public List<ElectricityBillDTOV2> getTableData(Date fromDt, Date toDt) {
		Calendar c = Calendar.getInstance();

		if (fromDt == null) {
			c.set(Calendar.DAY_OF_MONTH, 1);
			c.set(Calendar.HOUR_OF_DAY, 0);
			c.set(Calendar.MINUTE, 0);
			c.set(Calendar.SECOND, 0);
			c.set(Calendar.MILLISECOND, 0);
			fromDt = c.getTime();
		}

		if (toDt == null) {
			c.set(Calendar.DAY_OF_MONTH, 1);
			c.add(Calendar.MONTH, 1);
			c.set(Calendar.DAY_OF_MONTH, 1);
			c.add(Calendar.DATE, -1);
			c.set(Calendar.HOUR_OF_DAY, 23);
			c.set(Calendar.MINUTE, 59);
			c.set(Calendar.SECOND, 59);
			c.set(Calendar.MILLISECOND, 999);
			toDt = c.getTime();
		}
		log.debug("getTableData : fromDt:{} , toDt:{}", fromDt, toDt);
		return CustomRepositoryImpl.findAllByElectricBillDateBetween(
				dateConversion.convertToLocalDateTimeViaInstant(fromDt),
				dateConversion.convertToLocalDateTimeViaInstant(toDt));

	}

}
