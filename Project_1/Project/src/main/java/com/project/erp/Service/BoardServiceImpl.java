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
import com.project.erp.DTO.BoardDTO;
import com.project.erp.DTO.CommentDTO;
import com.project.erp.Util.FileUpload;

@Service
@Transactional
public class BoardServiceImpl implements BoardService  {

	@Autowired
	private BoardDAO boardDAO;
	
	String uploadDir = "C:\\xxx\\Project_1_1015\\Project\\src\\main\\resources\\static\\resources\\img\\";
	
	@Override
	public BoardDTO getBoard(int b_no) {
		//Ʈ������� �ɸ��� �� 
		// -> SQL ������ �������̸� SQL���� 1���� ������ DB���� ����(update, select)
		
		//-------------------------------------------------
		//[BoardDAOImpl ��ü]�� updateReadcount �޼ҵ带 ȣ���Ͽ� [��ȸ���� �����ϰ�]
		// ������ ���� ������ ��´�.
		//-------------------------------------------------
		int updateCnt= this.boardDAO.updateReadcount(b_no);
		
		//-------------------------------------------------
		//������ ���� ������ 0�̸� null �����ϱ�
		// �� ��� �Խ��� ���� ������ �����ߴٸ� null �����ϱ�
		//-------------------------------------------------
		if(updateCnt==0) {return null;}
		
		//-------------------------------------------------
		//[BoardDAOImpl ��ü]�� getBoard �޼ҵ带 ȣ���Ͽ� [1�� �Խ��� ��]�� ��´�.
		//-------------------------------------------------
		BoardDTO boardDTO = this.boardDAO.getBoard(b_no);
		
		//-------------------------------------------------
		//[1�� �Խ��� ��]�� ����� BoardDTO ��ü �����ϱ�
		//-------------------------------------------------
		return boardDTO;
	}

	@Override
	public int insertBoard(BoardDTO boardDTO, MultipartFile multi) throws Exception {
		//-------------------------------------------------
		//����� ���� FileUpload ��ü �����ϱ�
		//-------------------------------------------------		
		FileUpload fileUpload = new FileUpload(multi);
		//-------------------------------------------------
		//boardDTO �ȿ� newFileName�� ������
		//-------------------------------------------------
		boardDTO.setPic(fileUpload.getNewFileName());
		
		//dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
		//-------------------------------------------------
		//BoardDAOImpl ��ü�� insertBoard �޼ҵ带 ȣ���Ͽ� �Խ��� �� �Է� �� �Է� ���� ���� ���� ���
		//���� insertBoard�� �����ϸ� ���� updatePrintNo�� ��ҵ�
		//-------------------------------------------------
		int boardRegCnt = this.boardDAO.insertBoard(boardDTO);
		if(boardDTO.getPic()!=null && boardDTO.getPic().length()>0) {
			int pictureRegCnt = this.boardDAO.insertPicture(boardDTO);
		}
		//dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
		
		//-------------------------------------------------
		//���Ͼ��ε� �ϱ�
		// DB���� ���� ���Ͼ��ε带 �ϴ� ����
		// DB�������� ������ �߻��� ��� Ʈ����ǰ� ���� ���Ͼ��ε尡 ���� ����
		// <����> ���� DB���� ���� ���Ͼ��ε尡 �� ��� ���� ���ε� ���� DB�������� ������ �߻��ϸ�
		// 			���Ͼ��ε带 ��� �� �� ����
		//-------------------------------------------------
		fileUpload.uploadFile(uploadDir);
		
		//-------------------------------------------------
		//1�� �Խ��� �� �Է� ���� ���� ���� �����ϱ�
		//-------------------------------------------------		
		return boardRegCnt;
	}
	

	public int updateBoard (BoardDTO boardDTO, MultipartFile multi) throws Exception{
		//dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
		//-------------------------------------------------
		//[BoardDAOImpl ��ü]�� getBoardCnt �޼ҵ带 ȣ���Ͽ�
		// ������ �Խ����� ���� ������ ��´�.
		//-------------------------------------------------
		int boardCnt = this.boardDAO.getBoardCnt(boardDTO);
			// �Խ����� �������� ������ -1�� ����
		if(boardCnt==0) {return -1;}
		
		//dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
		
		//-------------------------------------------------
		//����� ���� FileUpload ��ü �����ϱ�
		//-------------------------------------------------		
		FileUpload fileUpload = new FileUpload(multi);
		//-------------------------------------------------
		//���ε��� ������ ���ο� �̸� ���ϱ�
		//-------------------------------------------------
		String newFileName = null;
		//-------------------------------------------------
		//���� üũ ���� ���ϱ�
		//���࿡ ������ üũ�Ǿ� ���� ������
		//-------------------------------------------------
		String is_del = boardDTO.getIs_del();
		/*
		if(is_del==null) {
			//���ε��� ������ ���ο� �̸� ���ϱ�
			// BoardDTO ��ü�� ���ο� ���ϸ� �����ϱ�
			newFileName = fileUpload.getNewFileName();
			boardDTO.setPic(newFileName);
		}
		*/
		newFileName = fileUpload.getNewFileName(is_del==null);
		boardDTO.setPic(newFileName);
		
		//dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
		//-------------------------------------------------
		// board���̺� �ִ� ���� �̹��� �̸� ��������
		//-------------------------------------------------
		String pic = this.boardDAO.getPic(boardDTO);
		String newPic = boardDTO.getPic();
		
		//-------------------------------------------------
		//[BoardDAOImpl ��ü]�� updateBoard �޼ҵ带 ȣ���Ͽ� 
		//�Խ��� �� ���� �� �Է� ���� ���� ���� ���
		//-------------------------------------------------
		int updateCnt = this.boardDAO.updateBoard(boardDTO);
		
		//���� ���� ������ ���� update
		if(pic!=null && pic.length()>0) {
			if(is_del==null) {
				if(newPic!=null && newPic.length()>0) {
					int updatePicCnt = this.boardDAO.updatePicture(boardDTO);
				}
			}
			else {
				int deletePicCnt = this.boardDAO.deletePicture(boardDTO);
			}
		}
		//���� ���� ������ ���� insert
		else {
			if(newPic!=null && newPic.length()>0) {
				int pictureRegCnt = this.boardDAO.upInsertPicture(boardDTO);
			}
		}
		//dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
		
		//-------------------------------------------------
		//���� ���ε� �ϱ�
		//���ε� �� ������ �ΰ� ���ο� ������ ���� �� ���ε�� ������ �״�� �������� ���ο� ���Ͽ� �����(stream)
		//-------------------------------------------------
		//is_del�� üũ�� �ȵǾ� ������
		if(is_del==null) {
			//���� ���ε�� ������ ������
			
			//if(multi!=null && multi.isEmpty()==false) {
				//-------------------------------------------------
				//���� �̹��� ���� �����ϱ�
				//-------------------------------------------------
				// board���̺� �̹��� �̸��� ������ ���� �����ϱ�
				/*
				if(pic!=null && pic.length()>0) {
					fileUpload.deleteFile(uploadDir+pic);
				}
				*/
				// �ι�° ���ڰ� true�� ��쿡�� ������
				fileUpload.deleteFile(
						uploadDir+pic
						, multi!=null && multi.isEmpty()==false && pic!=null && pic.length()>0);
				//-------------------------------------------------
				//���� ���ε��ϱ�
				//-------------------------------------------------
				fileUpload.uploadFile(uploadDir);
			//}
		
		
		}
		//is_del�� üũ�� �Ǿ� ������
		else {
			//-------------------------------------------------
			//���� �̹��� ���� �����ϱ�
			//-------------------------------------------------
			/*
			if(pic!=null && pic.length()>0) {
				fileUpload.deleteFile(uploadDir+pic);
			}
			*/
			
			fileUpload.deleteFile(uploadDir+pic, pic!=null && pic.length()>0);
		}
		
		return updateCnt;
	}
	
	
	public int deleteBoard(BoardDTO boardDTO) {
		int boardCnt = this.boardDAO.getBoardCnt(boardDTO);
		if(boardCnt==0) {return -2;}
		
		
		String pic = this.boardDAO.getPic(boardDTO);
		
		
		int deleteComment = this.boardDAO.deleteBComment(boardDTO);
		int deleteCnt = this.boardDAO.deleteBoard(boardDTO);
		System.out.println("deleteCnt : "+deleteCnt);
		if(pic!=null&&pic.length()>0) {
			File file = new File(uploadDir+pic);
			file.delete();
		}
		
		return deleteCnt;
		
	}

	@Override
	public int insertComment(CommentDTO commentDTO) {
		int commentRegCnt = this.boardDAO.insertComment(commentDTO);
		return commentRegCnt;
	}

	@Override
	public int deleteComment(CommentDTO commentDTO) {
		int commentCnt = this.boardDAO.getCommentCnt(commentDTO);
		if(commentCnt==0) {return -1;}
		int deleteCnt = this.boardDAO.deleteComment(commentDTO);
		
		return deleteCnt;
	}

	
	


}
