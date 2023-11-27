package com.hos.model;

public class DocImageVO {
	/* 경로 */
	private String uploadPath;
	/* uuid */
	private String uuid;
	/* 파일 이름 */
	private String fileName;
	/* 상품 id */
	private int DOCTORNUM;
	public String getUploadPath() {
		return uploadPath;
	}
	public void setUploadPath(String uploadPath) {
		this.uploadPath = uploadPath;
	}
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public int getDOCTORNUM() {
		return DOCTORNUM;
	}
	public void setDOCTORNUM(int dOCTORNUM) {
		DOCTORNUM = dOCTORNUM;
	}
	@Override
	public String toString() {
		return "DocImageVO [uploadPath=" + uploadPath + ", uuid=" + uuid + ", fileName=" + fileName + ", DOCTORNUM="
				+ DOCTORNUM + "]";
	}
	
}
