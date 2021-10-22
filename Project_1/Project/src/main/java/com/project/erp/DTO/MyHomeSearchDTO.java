package com.project.erp.DTO;


import java.util.List;

public class MyHomeSearchDTO {
	private String complex_name; // Ű���尡 ����� �Ӽ�����
	private String loc_no;
	private String loc_detail_no;
	private List<String> supply_type_no;
	private String area_grade_no;
	private String target_code;	
	
	private String state; 
	private String rent_deposit;
	private String move_date;
	//���� ������ ���� default���� ���� �ְ� ����
	//location.reaplace�� ó�� ���ö� �ƹ��� �Ķ���͵� ������ ���� �ʱ� ������
	//ó���� �ƹ��͵� �˻��� ���� ���� �׷��� ������ default���� �־��־����
	private int selectPageNo=1; //������ ������ ��������ȣ�� ����Ǵ� �Ӽ�����, �ݵ�� ����Ʈ���� �־�� DB������ ������ ����
	private int rowCntPerPage=10;//��ȭ�鿡 ������ ���� ������ ����Ǵ� �Ӽ�����
	public String getComplex_name() {
		return complex_name;
	}
	public void setComplex_name(String complex_name) {
		this.complex_name = complex_name;
	}
	public String getLoc_no() {
		return loc_no;
	}
	public void setLoc_no(String loc_no) {
		this.loc_no = loc_no;
	}
	public String getLoc_detail_no() {
		return loc_detail_no;
	}
	public void setLoc_detail_no(String loc_detail_no) {
		this.loc_detail_no = loc_detail_no;
	}
	public List<String> getSupply_type_no() {
		return supply_type_no;
	}
	public void setSupply_type_no(List<String> supply_type_no) {
		this.supply_type_no = supply_type_no;
	}
	public String getArea_grade_no() {
		return area_grade_no;
	}
	public void setArea_grade_no(String area_grade_no) {
		this.area_grade_no = area_grade_no;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getRent_deposit() {
		return rent_deposit;
	}
	public void setRent_deposit(String rent_deposit) {
		this.rent_deposit = rent_deposit;
	}
	public String getMove_date() {
		return move_date;
	}
	public void setMove_date(String move_date) {
		this.move_date = move_date;
	}
	public int getSelectPageNo() {
		return selectPageNo;
	}
	public void setSelectPageNo(int selectPageNo) {
		this.selectPageNo = selectPageNo;
	}
	public int getRowCntPerPage() {
		return rowCntPerPage;
	}
	public void setRowCntPerPage(int rowCntPerPage) {
		this.rowCntPerPage = rowCntPerPage;
	}
	public String getTarget_code() {
		return target_code;
	}
	public void setTarget_code(String target_code) {
		this.target_code = target_code;
	}
	
	
	
	
	
}
