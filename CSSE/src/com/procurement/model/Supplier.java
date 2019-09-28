package com.procurement.model;

public class Supplier {
	String SupId;
	String SupName;
	String SupLocation;
	String SupPhn;
	String SupEmail;
	public String getSupId() {
		return SupId;
	}
	public void setSupId(String supId) {
		SupId = supId;
	}
	public String getSupName() {
		return SupName;
	}
	public void setSupName(String supName) {
		SupName = supName;
	}
	public String getSupLocation() {
		return SupLocation;
	}
	public void setSupLocation(String supLocation) {
		SupLocation = supLocation;
	}
	public String getSupPhn() {
		return SupPhn;
	}
	public void setSupPhn(String supPhn) {
		SupPhn = supPhn;
	}
	public String getSupEmail() {
		return SupEmail;
	}
	public void setSupEmail(String supEmail) {
		SupEmail = supEmail;
	}
	public Supplier(String supId, String supName, String supLocation, String supPhn, String supEmail) {
		super();
		SupId = supId;
		SupName = supName;
		SupLocation = supLocation;
		SupPhn = supPhn;
		SupEmail = supEmail;
	}
	

}
