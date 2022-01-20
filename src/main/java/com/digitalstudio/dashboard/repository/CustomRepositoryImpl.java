package com.digitalstudio.dashboard.repository;

import java.time.LocalDateTime;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.digitalstudio.dashboard.model.ElectricityBill;
import com.digitalstudio.dashboard.model.ElectricityBillDTOV2;

@Repository
public class CustomRepositoryImpl {
	@PersistenceContext
	EntityManager entityManager;

	public List<ElectricityBill> findBillCustomerId(Long mobileNumber) throws Exception {
		Query q = entityManager.createNativeQuery(
				"select e.* from electricity_bill e, customers c  where e.customer_id = c.customer_id and c.mobile_number =:mobile_number ",
				ElectricityBill.class);
		q.setParameter("mobile_number", mobileNumber);
		return q.getResultList();

	}

	public List<ElectricityBillDTOV2> findAllByElectricBillDateBetween(LocalDateTime fromDt, LocalDateTime toDt) {

		// c.mobile_number as mobileNumber, e.bill_customer_name as customerName,
		// e.bill_customer_id as customerId, e.bill_amount as amount, e.bill_comment as
		// comment, e.bill_entry_date as entryDate, e.bill_status as status
		Query q = entityManager.createNativeQuery(
				" select  c.mobile_number, e.* " + " from electricity_bill e, customers c where "
						+ " bill_entry_date between :fromDt and :toDt " + " and e.customer_id = c.customer_id ",
				"ElectricityBillDTOMapping");

		q.setParameter("fromDt", fromDt);
		q.setParameter("toDt", toDt);
		return (List<ElectricityBillDTOV2>) q.getResultList();
	}

}
