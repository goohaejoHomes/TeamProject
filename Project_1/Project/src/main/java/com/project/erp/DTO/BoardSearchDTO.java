package com.project.erp.DTO;


import java.util.List;

public class BoardSearchDTO {
	private String keyword1; // Ű���尡 ����� �Ӽ�����
	
	private String head_category;
	
	private String searchStandard;
	
	
	//���� ������ ���� default���� ���� �ְ� ����
	//location.reaplace�� ó�� ���ö� �ƹ��� �Ķ���͵� ������ ���� �ʱ� ������
	//ó���� �ƹ��͵� �˻��� ���� ���� �׷��� ������ default���� �־��־����
	private int selectPageNo=1; //������ ������ ��������ȣ�� ����Ǵ� �Ӽ�����, �ݵ�� ����Ʈ���� �־�� DB������ ������ ����
	private int rowCntPerPage=10;//��ȭ�鿡 ������ ���� ������ ����Ǵ� �Ӽ�����
	
	
	
	public String getKeyword1() {
		return keyword1;
	}
	public void setKeyword1(String keyword1) {
		this.keyword1 = keyword1;
	}
	public String getHead_category() {
		return head_category;
	}
	public void setHead_category(String head_category) {
		this.head_category = head_category;
	}
	public String getSearchStandard() {
		return searchStandard;
	}
	public void setSearchStandard(String searchStandard) {
		this.searchStandard = searchStandard;
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
	

}
