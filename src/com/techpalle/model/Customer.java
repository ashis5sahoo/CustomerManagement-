package com.techpalle.model;
public class Customer
{
	private String cid;
	private String cname;
	private String cemail;
	private String cpassword;
	private long cmobile;
	private String cstate;
	public String getId() { return cid; }
	public void setId(String cid) { this.cid = cid; }
	public String getName() { return cname; }
	public void setName(String cname) { this.cname = cname; }
	public String getMail() { return cemail; }
	public void setMail(String cemail) { this.cemail = cemail; }
	public String getPassword() { return cpassword; }
	public void setPassword(String cpassword) { this.cpassword = cpassword; }
	public long getMobile() { return cmobile; }
	public void setMobile(long cmobile) { this.cmobile = cmobile; }
	public String getState() { return cstate; }
	public void setState(String cstate) { this.cstate = cstate; }
	public Customer(String cname, String cemail, String cpassword, long cmobile,  String cstate) {
		super();
		this.cname = cname;
		this.cemail = cemail;
		this.cpassword = cpassword;
		this.cmobile = cmobile;
		this.cstate = cstate;
	}
}
