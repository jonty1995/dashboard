package com.digitalstudio.dashboard.repository;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.digitalstudio.dashboard.model.ElectricityBill;

public interface ElectricityBillRepository extends JpaRepository<ElectricityBill, String> {

	@Query("SELECT coalesce(max(SUBSTRING(eb.billId,-4)), 0)  FROM ElectricityBill eb")
	Long getMaxBillId();

	

}
