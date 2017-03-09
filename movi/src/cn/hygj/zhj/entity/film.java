package cn.hygj.zhj.entity;

import java.io.Serializable;

public class film implements Serializable {
	 private int fid;
	 private String fpicture ;      
	 private String fname; 	   
	 private String fperformer;     
	 private int fmtime;             
	 private String fcountry;       
	 private String ftype ;         
	 private String fbtime;        
	 private int fprice;          
	 private String fbriefing ;
	 
	 
	public film(int fid, String fpicture, String fname, String fperformer,
			int fmtime, String fcountry, String ftype, String fbtime,
			int fprice, String fbriefing) {
		super();
		this.fid = fid;
		this.fpicture = fpicture;
		this.fname = fname;
		this.fperformer = fperformer;
		this.fmtime = fmtime;
		this.fcountry = fcountry;
		this.ftype = ftype;
		this.fbtime = fbtime;
		this.fprice = fprice;
		this.fbriefing = fbriefing;
	}

	public film() {
	
	}
	
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public String getFpicture() {
		return fpicture;
	}
	public void setFpicture(String fpicture) {
		this.fpicture = fpicture;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getFperformer() {
		return fperformer;
	}
	public void setFperformer(String fperformer) {
		this.fperformer = fperformer;
	}
	public int getFmtime() {
		return fmtime;
	}
	public void setFmtime(int fmtime) {
		this.fmtime = fmtime;
	}
	public String getFcountry() {
		return fcountry;
	}
	public void setFcountry(String fcountry) {
		this.fcountry = fcountry;
	}
	public String getFtype() {
		return ftype;
	}
	public void setFtype(String ftype) {
		this.ftype = ftype;
	}
	public String getFbtime() {
		return fbtime;
	}
	public void setFbtime(String fbtime) {
		this.fbtime = fbtime;
	}
	public int getFprice() {
		return fprice;
	}
	public void setFprice(int fprice) {
		this.fprice = fprice;
	}
	public String getFbriefing() {
		return fbriefing;
	}
	public void setFbriefing(String fbriefing) {
		this.fbriefing = fbriefing;
	}
	 
	 
}
