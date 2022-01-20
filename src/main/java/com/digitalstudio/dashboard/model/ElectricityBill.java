package com.digitalstudio.dashboard.model;

import java.sql.Blob;
import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;
import lombok.ToString;

@Entity
@Table(name = "ds_electricity_bill")

@Data
@AllArgsConstructor
@RequiredArgsConstructor
@ToString
public class ElectricityBill {
	@Id
	@Column(name = "bill_id")
	private String billId;

	@Column(name = "bill_customer_id")
	private String billCustomerId;

	@Column(name = "bill_customer_name")
	private String billCustomerName;

	@Column(name = "bill_amount")
	private Double billAmount;

	@Column(name = "bill_entry_date")
	private LocalDateTime billEntryDate;

	@Column(name = "customer_id")
	private String customerId;
	
	@Column(name = "bill_status")
	private String billStatus;
	
	@Column(name = "bill_payment_receipt")
	private Blob billPaymentReceipt;
	
	@Column(name = "bill_comment")
	private String billComment;

	@PrePersist
	private void onCreate() {
		billEntryDate = LocalDateTime.now();
		billStatus = "PENDING";
	}
	
	

}
