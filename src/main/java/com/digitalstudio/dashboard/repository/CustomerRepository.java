package com.digitalstudio.dashboard.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.digitalstudio.dashboard.model.Customers;

public interface CustomerRepository extends JpaRepository<Customers, String> {
	Optional<Customers> findByMobileNumber(Long mobileNumber);
	
	@Query("SELECT coalesce(max(SUBSTRING(c.customerId,-4)), 0) FROM Customers c")
	Long getMaxCustomerId();
	
	
}
