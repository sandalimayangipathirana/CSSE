package com.procurement.model;
import java.sql.Date;

public class RFQ {
	String rfqno;
	String rfqName;
	String rfqDept;
	String rfqTitle;
	Date rfqDate;
	Double rfqTotal;
	String rfqStatus;
	public RFQ(String rfqno, String rfqName, String rfqDept, String rfqTitle, Date rfqDate, Double rfqTotal,
			String rfqStatus) {
		super();
		this.rfqno = rfqno;
		this.rfqName = rfqName;
		this.rfqDept = rfqDept;
		this.rfqTitle = rfqTitle;
		this.rfqDate = rfqDate;
		this.rfqTotal = rfqTotal;
		this.rfqStatus = rfqStatus;
	}
	public String getRfqno() {
		return rfqno;
	}
	public void setRfqno(String rfqno) {
		this.rfqno = rfqno;
	}
	public String getRfqName() {
		return rfqName;
	}
	public void setRfqName(String rfqName) {
		this.rfqName = rfqName;
	}
	public String getRfqDept() {
		return rfqDept;
	}
	public void setRfqDept(String rfqDept) {
		this.rfqDept = rfqDept;
	}
	public String getRfqTitle() {
		return rfqTitle;
	}
	public void setRfqTitle(String rfqTitle) {
		this.rfqTitle = rfqTitle;
	}
	public Date getRfqDate() {
		return rfqDate;
	}
	public void setRfqDate(Date rfqDate) {
		this.rfqDate = rfqDate;
	}
	public Double getRfqTotal() {
		return rfqTotal;
	}
	public void setRfqTotal(Double rfqTotal) {
		this.rfqTotal = rfqTotal;
	}
	public String getRfqStatus() {
		return rfqStatus;
	}
	public void setRfqStatus(String rfqStatus) {
		this.rfqStatus = rfqStatus;
	}
	
	
}
