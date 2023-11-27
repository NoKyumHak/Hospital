package com.hos.model;

import java.util.List;

public class DoctorVO {
	private int DOCTORNUM;
	private String DOCTORNAME;
	private String DOCTORCONTENT;
	private String SUBJECT;
	private List<DocImageVO> imageList;
	public int getDOCTORNUM() {
		return DOCTORNUM;
	}
	public void setDOCTORNUM(int dOCTORNUM) {
		DOCTORNUM = dOCTORNUM;
	}
	public String getDOCTORNAME() {
		return DOCTORNAME;
	}
	public void setDOCTORNAME(String dOCTORNAME) {
		DOCTORNAME = dOCTORNAME;
	}
	public String getDOCTORCONTENT() {
		return DOCTORCONTENT;
	}
	public void setDOCTORCONTENT(String dOCTORCONTENT) {
		DOCTORCONTENT = dOCTORCONTENT;
	}
	public String getSUBJECT() {
		return SUBJECT;
	}
	public void setSUBJECT(String sUBJECT) {
		SUBJECT = sUBJECT;
	}
	public List<DocImageVO> getImageList() {
		return imageList;
	}
	public void setImageList(List<DocImageVO> imageList) {
		this.imageList = imageList;
	}
	@Override
	public String toString() {
		return "DoctorVO [DOCTORNUM=" + DOCTORNUM + ", DOCTORNAME=" + DOCTORNAME + ", DOCTORCONTENT=" + DOCTORCONTENT
				+ ", SUBJECT=" + SUBJECT + ", imageList=" + imageList + "]";
	}
	
}
