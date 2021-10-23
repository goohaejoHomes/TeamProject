package com.project.erp.Service;

import java.io.File;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.project.erp.DAO.BoardDAO;
import com.project.erp.DAO.MyHomeDAO;
import com.project.erp.DTO.BoardDTO;
import com.project.erp.DTO.MyHomeDTO;
import com.project.erp.Util.FileUpload;

@Service
@Transactional
public class MyHomeServiceImpl implements MyHomeService  {

	@Autowired
	private MyHomeDAO myHomeDAO;

	@Override
	public int updateMyHome(MyHomeDTO myHomeDTO) {
		int deleteTargetCnt =this.myHomeDAO.deleteTarget(myHomeDTO);
		int updateRentalCnt = this.myHomeDAO.updateRental(myHomeDTO);
		int myHomeUpDelCnt = this.myHomeDAO.updateRentalDetail(myHomeDTO);
		List<String> target_codeList = myHomeDTO.getTarget_codeList();
		for(int i = 0; i<target_codeList.size(); i++) {
			int targetCnt = this.myHomeDAO.insertTarget(target_codeList.get(i));
		}
		return myHomeUpDelCnt;
	}

	@Override
	public int insertHome(MyHomeDTO myHomeDTO) {
		int homeRegCnt = this.myHomeDAO.insertHome(myHomeDTO);

			int insertHomeDetailCnt = this.myHomeDAO.insertHomeDetailCnt(myHomeDTO);
			List<String> target_codeList = myHomeDTO.getTarget_codeList();
			for(int i = 0; i<target_codeList.size(); i++) {
				int targetCnt = this.myHomeDAO.insertTarget(target_codeList.get(i));
			}
		return homeRegCnt;
	}

	@Override
	public int deleteMyHome(MyHomeDTO myHomeDTO) {
		int deleteTargetCnt =this.myHomeDAO.deleteTarget(myHomeDTO);
		int deleteMyHomeCnt = this.myHomeDAO.deleteMyHome(myHomeDTO);
		return deleteMyHomeCnt;
	}



}
