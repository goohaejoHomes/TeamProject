package com.project.erp.DAO;


import java.util.List;
import java.util.Map;

import com.project.erp.DTO.MainInfoDTO;
import com.project.erp.DTO.MemberDTO;

public interface MainDAO {
	
	MemberDTO getMyPageList(int mem_no);

	// public String getCheck_modify(Map<String, String> map);

	MemberDTO getModify_chk(int mem_no);	

	int getModify_checkPwdCnt(Map<String, String> map);

	int infoUpdate(MemberDTO mainDTO);

	int deleteMember(String mem_no);

	List<MainInfoDTO> getMapOutList(int loc_no);
	
	
}