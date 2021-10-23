package com.project.erp.DAO;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.erp.DTO.BoardDTO;
import com.project.erp.DTO.BoardSearchDTO;
import com.project.erp.DTO.CommentDTO;

@Repository
public class BoardDAOImpl implements BoardDAO  {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<Map<String,String>> getBoardList(BoardSearchDTO boardSearchDTO){
		List<Map<String,String>> boardList = this.sqlSession.selectList(
				"com.project.erp.DAO.BoardDAO.getBoardList"
				,boardSearchDTO
			);
		return boardList;
	}

	
	public int getBoardListAllCnt(BoardSearchDTO boardSearchDTO) {
		int boardListAllCnt = this.sqlSession.selectOne(
				"com.project.erp.DAO.BoardDAO.getBoardListAllCnt"
				, boardSearchDTO
			);
		
		return boardListAllCnt;
	}


	@Override
	public List<BoardDTO> getHeadCategory() {
		List<BoardDTO> headCategoryList = this.sqlSession.selectList(
				"com.project.erp.DAO.BoardDAO.getHeadCategory"
				);
		return headCategoryList;
				
	}


	@Override
	public int updateReadcount(int b_no) {
		int updateCnt = this.sqlSession.update(
				"com.project.erp.DAO.BoardDAO.updateReadcount" //������ SQL ������ ��ġ ����
				, b_no	// ������ SQL �������� ����� ������ ����
				);
		return updateCnt;	
	}


	@Override
	public BoardDTO getBoard(int b_no) {
		BoardDTO boardDTO = this.sqlSession.selectOne(
					"com.project.erp.DAO.BoardDAO.getBoard"	// ������ SQL ������ ��ġ ����
					,b_no								// ������ SQL �������� ����� ������ ����
				);
		
		return boardDTO;
	}


	@Override
	public List<Map<String, String>> getNoticeList() {
		List<Map<String,String>> noticeList = this.sqlSession.selectList(
				"com.project.erp.DAO.BoardDAO.getNoticeList"
			);
		return noticeList;
	}


	@Override
	public int insertBoard(BoardDTO boardDTO) {
		int boardRegCnt = sqlSession.insert(
				"com.project.erp.DAO.BoardDAO.insertBoard"	
				,boardDTO
				);

		return boardRegCnt;
	}


	@Override
	public int insertPicture(BoardDTO boardDTO) {
		System.out.println(boardDTO.getPic());
		int insertPictureCnt = sqlSession.insert(
				"com.project.erp.DAO.BoardDAO.insertPicture"	
				,boardDTO
				);
		return insertPictureCnt;
	}


	@Override
	public int getBoardCnt(BoardDTO boardDTO) {
		int boardCnt = this.sqlSession.selectOne(
				"com.project.erp.DAO.BoardDAO.getBoardCnt"
				,boardDTO
				);
		return boardCnt;
	}




	@Override
	public String getPic(BoardDTO boardDTO) {
		String pic = this.sqlSession.selectOne(
				"com.project.erp.DAO.BoardDAO.getPic"
				, boardDTO
				);
		return pic;
	}
	
	public int deleteBoard(BoardDTO boardDTO) {
		int deleteCnt = this.sqlSession.delete(
				"com.project.erp.DAO.BoardDAO.deleteBoard"
				, boardDTO
				);
		System.out.println(deleteCnt);
		return deleteCnt;
	}


	@Override
	public int updateBoard(BoardDTO boardDTO) {
		int updateBoardCnt = this.sqlSession.update(
				"com.project.erp.DAO.BoardDAO.updateBoard" //������ SQL ������ ��ġ ����
				, boardDTO	// ������ SQL �������� ����� ������ ����
				);
		return updateBoardCnt;	
	}


	@Override
	public int updatePicture(BoardDTO boardDTO) {
		int updatePicCnt = this.sqlSession.update(
				"com.project.erp.DAO.BoardDAO.updatePicture" //������ SQL ������ ��ġ ����
				, boardDTO	// ������ SQL �������� ����� ������ ����
				);
		return updatePicCnt;	
	}


	@Override
	public int deletePicture(BoardDTO boardDTO) {
		int deletePicCnt = this.sqlSession.delete(
				"com.project.erp.DAO.BoardDAO.deletePicture"
				, boardDTO
				);
		return deletePicCnt;
	}




	@Override
	public int upInsertPicture(BoardDTO boardDTO) {
		int upInsertPictureCnt = sqlSession.insert(
				"com.project.erp.DAO.BoardDAO.upInsertPicture"	
				,boardDTO
				);
		return upInsertPictureCnt;
	}


	@Override
	public int updatePrintNo(CommentDTO commentDTO) {
		int updatePrintNoCnt = this.sqlSession.update(
				"com.project.erp.DAO.BoardDAO.updatePrintNo"
				,commentDTO
				);
		return updatePrintNoCnt;
	}


	@Override
	public int insertComment(CommentDTO commentDTO) {
		System.out.println(commentDTO.getCom_contents());
		int commentRegCnt = sqlSession.insert(
				"com.project.erp.DAO.BoardDAO.insertComment"
				,commentDTO
				);
		return commentRegCnt;
	}


	@Override
	public int getCommentCnt(CommentDTO commentDTO) {
		System.out.println("Ŀ��Ʈ üũ"+commentDTO.getCom_no());
		System.out.println("b_no üũ"+commentDTO.getB_no());
		int commentCnt = this.sqlSession.selectOne(
				"com.project.erp.DAO.BoardDAO.getCommentCnt"
				,commentDTO
				);
		System.out.println("�ڸ�Ʈ ī����"+commentCnt);
		return commentCnt;
	}


	@Override
	public List<Map<String, String>> getCommentList(CommentDTO commentDTO) {
		List<Map<String,String>> commentList = this.sqlSession.selectList(
				"com.project.erp.DAO.BoardDAO.getCommentList"
				,commentDTO
				);
		return commentList;
	}


	@Override
	public int getCommentListAllCnt(CommentDTO commentDTO) {
		int CommentAllCnt = sqlSession.selectOne(
				"com.project.erp.DAO.BoardDAO.getCommentListAllCnt"
				,commentDTO
				);
		return CommentAllCnt;
	}



	@Override
	public int deleteComment(CommentDTO commentDTO) {
		int deleteCommentCnt = this.sqlSession.delete(
				"com.project.erp.DAO.BoardDAO.deleteComment"
				,commentDTO
				);
		return deleteCommentCnt;
	}
	
	@Override
	public int deleteBComment(BoardDTO boardDTO) {
		int deleteCommentCnt = this.sqlSession.delete(
				"com.project.erp.DAO.BoardDAO.deleteBComment"
				,boardDTO
				);
		return deleteCommentCnt;
	}



}
