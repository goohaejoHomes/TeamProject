package com.project.erp.DAO;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.erp.DTO.BoardDTO;
import com.project.erp.DTO.BoardSearchDTO;
import com.project.erp.DTO.MainInfoDTO;
import com.project.erp.DTO.MemberDTO;
import com.project.erp.DTO.MyHomeDTO;

@Repository
public class MainDAOImpl implements MainDAO  {

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public MemberDTO getMyPageList(int mem_no) {
		MemberDTO myPage = this.sqlSession.selectOne(
				"com.project.erp.DAO.MainDAO.getCheck_IdCnt"
				, mem_no
		);
		return myPage;
	}
	
	@Override
	public MemberDTO getModify_chk(int mem_no) {
		MemberDTO modifiy = this.sqlSession.selectOne(
				"com.project.erp.DAO.MainDAO.getCheck_IdCnt"
				, mem_no
		);
		return modifiy;
	}


	

	@Override
	public int getModify_checkPwdCnt(Map<String, String> map) {
		int modify_checkPwdCnt = this.sqlSession.selectOne(
				"com.project.erp.DAO.MainDAO.getModify_checkPwdCnt"
				, map
		);
		return modify_checkPwdCnt;
	}

	@Override
	public int infoUpdate(MemberDTO mainDTO) {
		int infoUpdateCnt = this.sqlSession.update(
				"com.project.erp.DAO.MainDAO.infoUpdate"
				, mainDTO
		);
				return infoUpdateCnt;
	}

	@Override
	public int deleteMember(String mem_no) {
		int deleteMemberCnt = this.sqlSession.delete(
				"com.project.erp.DAO.MainDAO.deleteMember"
				, mem_no
				);
		return deleteMemberCnt;
	}

	@Override
	public List<MainInfoDTO> getMapOutList(int loc_no) {
		List<MainInfoDTO> mapInfoOut = this.sqlSession.selectList(
				"com.project.erp.DAO.MainDAO.getMapOutList"
				,loc_no
			);
		return mapInfoOut;
	}


	

}
