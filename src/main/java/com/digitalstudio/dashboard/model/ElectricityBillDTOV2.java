package com.digitalstudio.dashboard.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.SqlResultSetMapping;
import javax.persistence.EntityResult;
import javax.persistence.FieldResult;
import javax.persistence.Id;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;
import lombok.ToString;

@Entity
@SqlResultSetMapping(name = "ElectricityBillDTOMapping", entities = {
		@EntityResult(entityClass = ElectricityBillDTOV2.class, fields = {
				@FieldResult(name = "billId", column = "bill_id"),
				@FieldResult(name = "mobileNumber", column = "mobile_number"),
				@FieldResult(name = "customerName", column = "bill_customer_name"),
				@FieldResult(name = "customerId", column = "bill_customer_id"),
				@FieldResult(name = "amount", column = "bill_amount"),
				@FieldResult(name = "comment", column = "bill_comment"),
				@FieldResult(name = "entryDate", column = "bill_entry_date"),
				@FieldResult(name = "status", column = "bill_status") }) })
@Data
@AllArgsConstructor
@RequiredArgsConstructor
@ToString
public class ElectricityBillDTOV2 {
	@Id
	private String billId;
	private String mobileNumber;
	private String customerName;
	private String customerId;
	private Double amount;
	private String comment;
//	@DateTimeFormat(pattern = "dd/mm/yyyy")
	private Date entryDate;
	private String status;
}
