package com.project.erp.Controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.erp.DAO.BoardDAO;
import com.project.erp.DTO.BoardDTO;
import com.project.erp.DTO.BoardSearchDTO;
import com.project.erp.DTO.CommentDTO;
import com.project.erp.Service.BoardService;
import com.project.erp.Util.BoardValidator;
import com.project.erp.Util.Util;

@Controller
public class BoardController {

	@Autowired
	private BoardService boardService;
	
	
	@Autowired
	private BoardDAO boardDAO;
	
	@GetMapping("write")
	public String boardWrite() {
	  return "views/boardRegForm";
	}


	@RequestMapping(value="/boardList.do")
	public ModelAndView getCommunication(BoardSearchDTO boardSearchDTO) throws Exception {
		int boardListAllCnt = this.boardDAO.getBoardListAllCnt(boardSearchDTO);
		
		int selectPageNo = boardSearchDTO.getSelectPageNo();
		int rowCntPerPage = boardSearchDTO.getRowCntPerPage();
		int pageNoCntPerPage = 10;
		
		Map<String,Integer> map= Util.getPagingNos(boardListAllCnt
				, pageNoCntPerPage
				, selectPageNo
				, rowCntPerPage);
		
		//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
		//HashMap<String,Integer> ��ü�� ����� ������ ���õ� ������ ��ȣ��
		//BoardSearchDTO��ü�� setSelectPageNo�޼ҵ� ȣ��� ������
		boardSearchDTO.setSelectPageNo(map.get("selectPageNo"));
		
		//������ȣ
		int start_serial_no = (selectPageNo-1)*rowCntPerPage+1;
		//System.out.println("BoardController.getBoardList �޼ҵ� ȣ�� ����");
		//----------------------------------------------------
		//����Ŭ board���̺� ���� ������(n��m��)�� �˻��ؼ� �ڹ� ��ü�� �����ϱ�	
		// ��, [�˻����ǿ� �´� �Խ��� ���] ���
		// Ʈ������� �ɸ��� �ʱ� ������ @Service, @Transactional Ŭ���� ������ �ʾƵ� ��
		//----------------------------------------------------
		List<Map<String,String>> boardList = this.boardDAO.getBoardList(boardSearchDTO);

		List<Map<String,String>> noticeList = this.boardDAO.getNoticeList();
		
		List<BoardDTO> headCategoryList = this.boardDAO.getHeadCategory();
		//----------------------------------------------------
		//[ModelAndView ��ü] �����ϱ�
		//[ModelAndView ��ü]�� [ȣ���� JSP ��������]�� �����ϱ�
		//[ModelAndView ��ü]�� [�Խ��� ��� �˻� ���] �����ϱ�
		//[ModelAndView ��ü]�� [�Խ��� ��� �˻� ����� �� ����] �����ϱ�
		//[ModelAndView ��ü]�� [������ ������ ��ȣ]�� �����ϱ�
		//[ModelAndView ��ü]�� [���� ȭ�鿡 �������� ������ ��ȣ�� �ּ� ������ ��ȣ]�� �����ϱ�
		//[ModelAndView ��ü]�� [���� ȭ�鿡 �������� ������ ��ȣ�� �ִ� ������ ��ȣ]�� �����ϱ�
		//[ModelAndView ��ü]�� [������ ������ ��ȣ]�� �����ϱ�
		//[ModelAndView ��ü]�� [�� ȭ�鿡 ������ ���� ����]�� �����ϱ�
		//[ModelAndView ��ü]�� [�� ȭ�鿡 ������ �������� ����]�� �����ϱ�
		//----------------------------------------------------
		ModelAndView mav = new ModelAndView();
		//mav.setViewName("boardPage/boardList.jsp");
		mav.setViewName("boardPage/boardList.jsp");
		mav.addObject("boardList", boardList);
		mav.addObject("boardListAllCnt", boardListAllCnt);
		mav.addObject("noticeList", noticeList);
		
		mav.addObject("start_serial_no", start_serial_no);
		
		mav.addObject("pagingNos",map );
		
		mav.addObject("headCategoryList", headCategoryList);

		return mav;
	}
	
	@RequestMapping(value="/boardRegForm.do")
	public ModelAndView goBoardRegForm() { 
		List<BoardDTO> headCategoryList = this.boardDAO.getHeadCategory();
		//----------------------------------------------------
		//[ModelAndView ��ü] �����ϱ�
		//[ModelAndView ��ü]�� [ȣ���� JSP ��������]�� �����ϱ�
		//[ModelAndView ��ü] �����ϱ�
		//----------------------------------------------------
		ModelAndView mav = new ModelAndView();
		mav.addObject("headCategoryList", headCategoryList);
		mav.setViewName("boardPage/boardRegForm.jsp");
		return mav;
	}
	
	
	@RequestMapping( 
			value = "/boardRegProc.do"
			, method = RequestMethod.POST
			, produces = "application/json;charset=UTF-8" 
	)
	@ResponseBody
	public Map<String,String> insertBoard( 
		//+++++++++++++++++++++++++++++++++++++++++++++++++
		// �Ķ���Ͱ��� ������ [BoardDTO ��ü]�� �Ű������� ����
		//+++++++++++++++++++++++++++++++++++++++++++++++++
			// [�Ķ���͸�]�� [BoradDTO ��ü]�� [�Ӽ�������]�� ������
			// setter �޼ҵ尡 �۵��Ǿ� [�Ķ���Ͱ�]�� [�Ӽ�����]�� ����ȴ�.
			// [�Ӽ�������]�� �����ϴ� [�Ķ���͸�]�� ������ setter �޼ҵ尡 �۵����� �ʴ´�.
			// [�Ӽ�������]�� �����ϴ� [�Ķ���͸�]�� �ִµ� �Ķ���Ͱ��� ������
				// [�Ӽ�����]�� �ڷ����� ������� ������ null���� ����ȴ�.
				// �̶� [�Ӽ�����]�� �ڷ����� �⺻���� ��� null���� ����� �� ���� ������ �߻��Ѵ�.
				// �̷� ������ ���Ϸ��� �Ķ���Ͱ��� �⺻���̰ų� �Ӽ������� �ڷ����� String���� �ؾ��Ѵ�.
				// �̷� ������ �߻��ϸ� �޼ҵ���� ���౸���� �ϳ��� ������� ������ �����Ѵ�.
			// �Ű������� ���� [DTO ��ü]�� �� �޼ҵ尡 ���� �� ȣ��Ǵ� JSP �������� �״�� �̵��Ѵ�.
			// ��, HttpServletRequest ��ü�� boardDTO��� Ű�������� ����ȴ�.
		BoardDTO boardDTO 
		
		//+++++++++++++++++++++++++++++++++++++++++++++++++
		// <input type="file name=img> �Է¾���� ������ ����� MultipartFile ��ü ���� �Ű����� ����
		// <����> ���ε�� ������ ��� MultipartFile��ü�� �����Ǿ� ���´�.
		// MultipartFile ���ε�� ������ ����
		//+++++++++++++++++++++++++++++++++++++++++++++++++
		, @RequestParam("img") MultipartFile multi
		
		//+++++++++++++++++++++++++++++++++++++++++++++++++
		// Error ��ü�� �����ϴ� BindingResult ��ü�� ����Ǿ� ������ �Ű����� bindingResult ����
		// BindingResult ��ü => ��ȿ�� �˻�
		//+++++++++++++++++++++++++++++++++++++++++++++++++
		, BindingResult bindingResult
	) {
		
		//----------------------------------------------------
		//���ε� �� ������ ũ��� Ȯ���� üũ�ϱ�
		//----------------------------------------------------
		//���࿡ ���ε�� ������ ������
		if(multi.isEmpty()==false) {
			//���࿡ ���ε�� ������ ũ�Ⱑ 1,000,000 byte(=1,000KB)���� ũ��
			if(multi.getSize()>1000000) {
				Map<String,String> map = new HashMap<String, String>();
				map.put("boardRegCnt", "0");
				map.put("msg", "���ε� ������ 1000kb���� ũ�� �ȵ˴ϴ�.");
				return map; // return�� ������ �޼ҵ� �ߴ�, �����ʿ� ���� ������ �޼ҵ� ȣ���� ������ ������
			}
			
			//���࿡ ���ε�� ������ Ȯ���ڰ� �̹��� Ȯ���ڰ� �ƴϸ�
			String fileName=multi.getOriginalFilename();
			
			if(fileName.endsWith(".jpg")==false && fileName.endsWith(".gif")==false && fileName.endsWith(".png")==false) {
				Map<String,String> map = new HashMap<String, String>();
				map.put("boardRegCnt", "0");
				map.put("msg", "�̹��� ������ �ƴմϴ�.");
				return map;
			}
		}
		
		//----------------------------------------------------
		//�Խ��� ��� ���� ���ΰ� ����� ���� ����->1�� ����Ǹ� �����ߴٴ� �ǹ�
		//��ȿ�� üũ ���� �޽����� ������ �� �ִ� ���� msg ����
		//----------------------------------------------------
		int boardRegCnt=0;
		//��ȿ�� üũ ���� �޽����� ������ ���� msg ����
		String msg = "";
		
		//���� ó��
		try { 
			//----------------------------------------------------
			//check_BoardDTO �޼ҵ带 ȣ���Ͽ� [��ȿ�� üũ]�� �ϰ� ����� ���
			//��ȿ��Ȯ�ο� �����ϸ� DB������ �� �� ����
				//check_BoardDTO �޼ҵ带 ���� �����ϴ� ����
					//��ȿ�� üũ -> ��۴ޱ�, ���� ��� �ݺ������� �����ϱ� ����
					// �������� ����
			//----------------------------------------------------	
			// check_BoardDTO �޼ҵ带 ȣ���Ͽ� ��ȿ�� üũ�ϰ� �����޽��� ���� ���
				// boardDTO, bindingResult�� �޸���ġ�ּҸ� �־���
			msg = check_BoardDTO(boardDTO, bindingResult);
			
			//----------------------------------------------------
			//���� msg�ȿ� ""�� ����Ǿ� ������, �� ��ȿ�� üũ�� ��������� DB���� ����
			//----------------------------------------------------
			//if(msg.length()==0){
			if( msg.equals("") ) {
				//----------------------------------------------------
				//[BoardServiceImpl ��ü]�� insertBoard �޼ҵ� ȣ��� 
				// �Խ��� �� �Է��ϰ� [�Խ��� �Է� �������� ����] ���
				//----------------------------------------------------
					// ����� 1�̸�(�� ���� ����) ����
				//boardDTO�� �Ķ���Ͱ��� �������
				boardRegCnt = this.boardService.insertBoard(boardDTO, multi);
				//System.out.println("boardRegCnt => "+ boardRegCnt); // DB���� �����ߴ��� Ȯ��
				
				//System.out.println("BoardController.insertBoard �޼ҵ� ȣ�� ����"); 				
			}
		}catch(Exception e){
			//�� try �������� ������ �߻��ϸ�
			// �Ʒ� �ڵ� ����
			boardRegCnt = -1;
			msg="�������� ���� �߻�! ���������ڿ��� ���� �ٶ�";
		}
		//----------------------------------------------------
		//HashMap<String,String>��ü �����ϱ�
		//HashMap<String,String>��ü�� �Խ��� �Է� ���� ���� ���� �����ϱ�
		//HashMap<String,String>��ü�� ��ȿ�� üũ�� �޽��� �����ϱ�
		//HashMap<String,String>��ü �����ϱ�
		//----------------------------------------------------
		Map<String,String> map = new HashMap<String,String>();
		map.put("boardRegCnt", boardRegCnt+"");
		map.put("msg", msg); 
		return map;
	}
	
	private String check_BoardDTO(BoardDTO boardDTO, BindingResult bindingResult) {
		String checkMsg = "";
		//----------------------------------------------------
		//BoardDTO ��ü�� ����� �������� ��ȿ�� üũ�� BoardValidator ��ü �����ϱ�
		//BoardValidator ��ü�� validate �޼ҵ带 ȣ���Ͽ� ��ȿ�� üũ �����ϱ�
		//----------------------------------------------------
		BoardValidator boardValidator = new BoardValidator();
			// �޼ҵ常 ȣ�� (���ϰ��� ����)
		boardValidator.validate(
				boardDTO  // ��ȿ���� üũ�� DTO ��ü
				, bindingResult // ��ȿ�� üũ ����� �����ϴ� BindingResult ��ü
		);
		
		//----------------------------------------------------
		//���� BindingResult ��ü�� hasErrors() �޼ҵ带 ȣ���Ͽ� true���� ������(��ȿ�� üũ�� ���� �߻�)
		//----------------------------------------------------
		if(bindingResult.hasErrors()) {
			// ���� checkMsg�� BoardValidator ��ü�� ����� ����� ��� �����ϱ� 
			checkMsg = bindingResult.getFieldError().getCode();
		}		
		//----------------------------------------------------
		//checkMsg���� ���� �����ϱ�
		//----------------------------------------------------
		return checkMsg;
	}
	
	@RequestMapping(value="/boardContentForm.do")
	public ModelAndView goBoardContentForm(
			@RequestParam(value="b_no" , required=false , defaultValue="0") int b_no // "b_no"�� ���� ���� ���������� spring�� �˾Ƽ� �ٲ���
			,CommentDTO commentDTO
			
			) {
		//System.out.println(commentDTO.getCom_contents()); 
		
		// ��� �� ���� ��������
		int CommentAllCnt = this.boardDAO.getCommentListAllCnt(commentDTO);
		
		// ����¡ ó�� ����
		int last_pageNo = 0;
		int min_pageNo = 0;
		int max_pageNo = 0;
		int selectPageNo = commentDTO.getSelectPageNo();
		int rowCntPerPage = commentDTO.getRowCntPerPage();
		int pageNoCntPerPage = 5;
		
		//-----------------------------------------------------------------
		// ���� �˻� �� ������� ������ 0���� ũ�� , �� �˻�������� ������
		//-----------------------------------------------------------------
		if( CommentAllCnt>0 ) {
			// ������ ������ ��ȣ ���ϱ� 
			last_pageNo = CommentAllCnt/rowCntPerPage;
				if( CommentAllCnt%rowCntPerPage>0 ) { last_pageNo++; }
			// ���� ������ ������ ��ȣ�� ������ ������ ��ȣ���� ũ�� 
			if( selectPageNo>last_pageNo ) {
				// selectPageNo ������ 1 �����ϱ�
				selectPageNo = 1;
				// BoardSearchDTO ��ü�� selectPageNo �Ӽ� ������ 1 �����ϱ� 
				commentDTO.setSelectPageNo(selectPageNo);
			}
			// �� ȭ�鿡 ���� �ּ� ������ ��ȣ ���ϱ� 
			min_pageNo = ( selectPageNo-1 ) / pageNoCntPerPage * pageNoCntPerPage + 1;	
			// �� ȭ�鿡 ���� �ִ� ������ ��ȣ ���ϱ� 
			max_pageNo = min_pageNo + pageNoCntPerPage - 1;
				if( max_pageNo>last_pageNo ) { max_pageNo=last_pageNo; }
		}
		
		// ��� ����Ʈ ��� 
		List<Map<String,String>> commentList = this.boardDAO.getCommentList(commentDTO);
		
		//----------------------------------------------------
		// [BoardServiceImpl ��ü]�� getBoard �޼ҵ� ȣ��� [1���� �Խ��Ǳ�]�� BoardDTO ��ü�� ��ƿ���
		//----------------------------------------------------
		BoardDTO boardDTO = this.boardService.getBoard(b_no);
			//readcount�� �����ϱ� ������ update������ �־� Ʈ������� �ɸ�

		
		
		//----------------------------------------------------
		//[ModelAndView ��ü] �����ϱ�
		//[ModelAndView ��ü]�� [ȣ���� JSP ��������]�� �����ϱ�
		//[ModelAndView ��ü]�� DB���� ����� ��� 
		//[ModelAndView ��ü] �����ϱ�
		//----------------------------------------------------
		ModelAndView mav = new ModelAndView();
		mav.setViewName("boardPage/boardContentForm.jsp");
		
		mav.addObject("b_no", b_no);
		mav.addObject("boardDTO", boardDTO);
		mav.addObject("CommentAllCnt", CommentAllCnt);
		mav.addObject("commentList", commentList);
		// ����¡ó�� ���� 
		mav.addObject("last_pageNo"	, last_pageNo);		
		mav.addObject("min_pageNo"	, min_pageNo);		
		mav.addObject("max_pageNo"	, max_pageNo);	
		mav.addObject("selectPageNo"	 , selectPageNo);
		mav.addObject("rowCntPerPage"	 , rowCntPerPage);
		mav.addObject("pageNoCntPerPage" , pageNoCntPerPage);
		
		return mav;
	}
	

	@RequestMapping(value="/boardUpDelForm.do")
	public ModelAndView goBoardUpDelForm(
			//----------------------------------------------------
			//"b_no" ��� �Ķ���͸��� �Ķ���Ͱ��� ����Ǵ� �Ű����� b_no����
			// ���� �Ǵ� ������ �Խ��� ���� ��ȣ�� �����¸Ű����� ����
			//----------------------------------------------------
			@RequestParam(value="b_no") int b_no 
		) {
		
		//----------------------------------------------------
		//boardDAOImpl ��ü�� getBoard �޼ҵ� ȣ��� 1���� �Խ��Ǳ���
		//BoardDTO ��ü�� ��Ƽ� ��������
		//----------------------------------------------------
		//=>���� �������� ��ġ�� ����Ÿ� ���ο� �޼ҵ带 ������ ��
			// �ֳ��ϸ� �������� getBoard �޼ҵ�� ��ȸ���� 1 ������Ű�� ������
		//BoardDTO boardDTO=this.boardService.getBoard_without_updateReadcount(b_no);
		//=>���� �������� ��ġ�� �ʰ� ����Ÿ� ���� getBoard �޼ҵ带 ����� �� ����
		
		//�ǽð����� �Խ��� �� �ٽ� �������� ���� : ������ �������� ���� �ֱ� ������
		BoardDTO boardDTO = this.boardDAO.getBoard(b_no);
		List<BoardDTO> headCategoryList = this.boardDAO.getHeadCategory();

		//----------------------------------------------------
		//[ModelAndView ��ü] �����ϱ�
		//[ModelAndView ��ü]�� [ȣ���� JSP ��������]�� �����ϱ�
		//[ModelAndView ��ü]�� DB���� ����� ��� 
		//[ModelAndView ��ü] �����ϱ�
		//----------------------------------------------------
		ModelAndView mav = new ModelAndView();
		mav.setViewName("boardPage/boardUpDelForm.jsp");
		mav.addObject("headCategoryList", headCategoryList);
		mav.addObject("boardDTO",boardDTO);
		return mav;
	}
	
	
	//@RequestMapping�� ���� �޼ҵ��� �Ű������� DTO�� ������
	//�Ķ���͸�� BoardDTO�� �Ӽ��������� ���⸸ �ϸ� �˾Ƽ� �Ӽ������ȿ� �Ķ���� ���� �����Ŵ
	@RequestMapping( 
			value = "/boardUpDelProc.do"
			, method = RequestMethod.POST
			, produces = "application/json;charset=UTF-8" 
	)
	@ResponseBody
	public Map<String,String> checkBoardUpDelForm(
			//+++++++++++++++++++++++++++++++++++++++++++++++++
			// �Ķ���Ͱ��� ������ [BoardDTO ��ü]�� �Ű������� ����
			//+++++++++++++++++++++++++++++++++++++++++++++++++
			BoardDTO boardDTO
			
			//+++++++++++++++++++++++++++++++++++++++++++++++++
			// <input type="file name=img> �Է¾���� ������ ����� MultipartFile ��ü ���� �Ű����� ����
			// <����> ���ε�� ������ ��� MultipartFile��ü�� �����Ǿ� ���´�.
			//+++++++++++++++++++++++++++++++++++++++++++++++++
			, @RequestParam("img") MultipartFile multi
			
			//+++++++++++++++++++++++++++++++++++++++++++++++++
			// "upDel"��� �Ķ���͸��� �Ķ���Ͱ��� ����� �Ű����� upDel ����
			//+++++++++++++++++++++++++++++++++++++++++++++++++
			, @RequestParam(value="upDel") String upDel
			
			//+++++++++++++++++++++++++++++++++++++++++++++++++
			// Error ��ü�� �����ϴ� BindingResult ��ü�� ����Ǿ� ������ �Ű����� bindingResult ����
			// BindingResult ��ü => ��ȿ�� �˻�
			//+++++++++++++++++++++++++++++++++++++++++++++++++
			, BindingResult bindingResult
		) throws Exception {
		//----------------------------------------------------
		//���ε� �� ������ ũ��� Ȯ���� üũ�ϱ�
		//----------------------------------------------------
		//���࿡ ���ε�� ������ ������
		if(multi.isEmpty()==false) {
			//���࿡ ���ε�� ������ ũ�Ⱑ 1,000,000 byte(=1,000KB)���� ũ��
			if(multi.getSize()>1000000) {
				Map<String,String> map = new HashMap<String, String>();
				map.put("boardRegCnt", "0");
				map.put("msg", "���ε� ������ 1000kb���� ũ�� �ȵ˴ϴ�.");
				return map; // return�� ������ �޼ҵ� �ߴ�, �����ʿ� ���� ������ �޼ҵ� ȣ���� ������ ������
			}

			//���࿡ ���ε�� ������ Ȯ���ڰ� �̹��� Ȯ���ڰ� �ƴϸ�
			String fileName=multi.getOriginalFilename();
			
			if(fileName.endsWith(".jpg")==false && fileName.endsWith(".gif")==false && fileName.endsWith(".png")==false) {
				Map<String,String> map = new HashMap<String, String>();
				map.put("boardRegCnt", "0");
				map.put("msg", "�̹��� ������ �ƴմϴ�.");
				return map;
			}
		}
		
		int boardUpDelCnt =0;
		//��ȿ�� üũ ���� �޽����� ������ ���� msg ����
		String msg = "";
		//----------------------------------------------------
		//���� �Խ��� ���� ���� => ��ȿ�� �˻� �ʿ�
		//���� �����ϰ� ���� �������� ���� ���
		//----------------------------------------------------
		if(upDel.equals("up")) {

			//----------------------------------------------------
			//check_BoardDTO �޼ҵ带 ȣ���Ͽ� [��ȿ�� üũ]�� �ϰ� ����� ���
			//��ȿ��Ȯ�ο� �����ϸ� DB������ �� �� ����
			//----------------------------------------------------	
			
				// check_BoardDTO �޼ҵ带 ȣ���Ͽ� ��ȿ�� üũ�ϰ� �����޽��� ���� ���
				// boardDTO, bindingResult�� �޸���ġ�ּҸ� �־���
			msg = check_BoardDTO(boardDTO, bindingResult);
			
			//----------------------------------------------------
			//[ModelAndView ��ü]�� ��ȿ�� üũ �����޽��� �����ϱ�
			//----------------------------------------------------
			
			//���� msg�ȿ� ""�� ����Ǿ� ������, �� ��ȿ�� üũ�� ���������
			if(msg.equals("")) {
				//���� DB����
				//----------------------------------------------------
				//[BoardServiceImpl ��ü]�� updateBoard �޼ҵ� ȣ��� 
				// �Խ��� �� �����ϰ� [�Խ��� ���� �������� ����] ���
				//----------------------------------------------------
					// ����� 1�̸�(�� ���� ����) ����
				//boardDTO�� �Ķ���Ͱ��� �������
				boardUpDelCnt = this.boardService.updateBoard(boardDTO, multi);
				//System.out.println("boardUpdateCnt => "+ boardUpDelCnt); // DB���� �����ߴ��� Ȯ��
			}
		}
		//----------------------------------------------------
		//���� �Խ��� ���� ���� => ��ȿ���˻� �ʿ����
		//----------------------------------------------------
		else if(upDel.equals("del")) {

			//----------------------------------------------------
			//[BoardServiceImpl ��ü]�� deleteBoard �޼ҵ� ȣ���
			//���� �����ϰ� [���� �������� ����] ���
			//----------------------------------------------------
			boardUpDelCnt = this.boardService.deleteBoard(boardDTO);

		}
		
		//*******************************************
		// HashMap<String,String> ��ü �����ϱ�
		// HashMap<String,String> ��ü�� �Խ��� ����.���� �������� ���� �����ϱ�
		// HashMap<String,String> ��ü�� ��ȿ�� üũ �� �޽��� �����ϱ�
		// HashMap<String,String> ��ü �����ϱ�
		//*******************************************
		Map<String, String> map = new HashMap<String,String>();
		map.put("boardUpDelCnt", boardUpDelCnt+"");		
		map.put("msg",msg);
		return map;
	}
	
	
	@RequestMapping( 
			value = "/commentRegProc.do"
			, method = RequestMethod.POST
			, produces = "application/json;charset=UTF-8" 
	)
	@ResponseBody
	public int insertComment( 
		//+++++++++++++++++++++++++++++++++++++++++++++++++
		// �Ķ���Ͱ��� ������ [BoardDTO ��ü]�� �Ű������� ����
		//+++++++++++++++++++++++++++++++++++++++++++++++++
			// [�Ķ���͸�]�� [BoradDTO ��ü]�� [�Ӽ�������]�� ������
			// setter �޼ҵ尡 �۵��Ǿ� [�Ķ���Ͱ�]�� [�Ӽ�����]�� ����ȴ�.
			// [�Ӽ�������]�� �����ϴ� [�Ķ���͸�]�� ������ setter �޼ҵ尡 �۵����� �ʴ´�.
			// [�Ӽ�������]�� �����ϴ� [�Ķ���͸�]�� �ִµ� �Ķ���Ͱ��� ������
				// [�Ӽ�����]�� �ڷ����� ������� ������ null���� ����ȴ�.
				// �̶� [�Ӽ�����]�� �ڷ����� �⺻���� ��� null���� ����� �� ���� ������ �߻��Ѵ�.
				// �̷� ������ ���Ϸ��� �Ķ���Ͱ��� �⺻���̰ų� �Ӽ������� �ڷ����� String���� �ؾ��Ѵ�.
				// �̷� ������ �߻��ϸ� �޼ҵ���� ���౸���� �ϳ��� ������� ������ �����Ѵ�.
			// �Ű������� ���� [DTO ��ü]�� �� �޼ҵ尡 ���� �� ȣ��Ǵ� JSP �������� �״�� �̵��Ѵ�.
			// ��, HttpServletRequest ��ü�� boardDTO��� Ű�������� ����ȴ�.
		CommentDTO commentDTO 

	) {
		//System.out.println(commentDTO.getCom_no());
		//----------------------------------------------------
		//���ε� �� ������ ũ��� Ȯ���� üũ�ϱ�
		//----------------------------------------------------
		//���࿡ ���ε�� ������ ������
		// ��� �Է��ϰ� [��� �Է� ������ ��������]
		int commentRegCnt = this.boardService.insertComment(commentDTO);
		return commentRegCnt;
		}	

	@RequestMapping( 
			value = "/commentDelProc.do"
			, method = RequestMethod.POST
			, produces = "application/json;charset=UTF-8" 
	)
	@ResponseBody
	public int goCommentUpDelForm( 
		//+++++++++++++++++++++++++++++++++++++++++++++++++
		// �Ķ���Ͱ��� ������ [BoardDTO ��ü]�� �Ű������� ����
		//+++++++++++++++++++++++++++++++++++++++++++++++++
			// [�Ķ���͸�]�� [BoradDTO ��ü]�� [�Ӽ�������]�� ������
			// setter �޼ҵ尡 �۵��Ǿ� [�Ķ���Ͱ�]�� [�Ӽ�����]�� ����ȴ�.
			// [�Ӽ�������]�� �����ϴ� [�Ķ���͸�]�� ������ setter �޼ҵ尡 �۵����� �ʴ´�.
			// [�Ӽ�������]�� �����ϴ� [�Ķ���͸�]�� �ִµ� �Ķ���Ͱ��� ������
				// [�Ӽ�����]�� �ڷ����� ������� ������ null���� ����ȴ�.
				// �̶� [�Ӽ�����]�� �ڷ����� �⺻���� ��� null���� ����� �� ���� ������ �߻��Ѵ�.
				// �̷� ������ ���Ϸ��� �Ķ���Ͱ��� �⺻���̰ų� �Ӽ������� �ڷ����� String���� �ؾ��Ѵ�.
				// �̷� ������ �߻��ϸ� �޼ҵ���� ���౸���� �ϳ��� ������� ������ �����Ѵ�.
			// �Ű������� ���� [DTO ��ü]�� �� �޼ҵ尡 ���� �� ȣ��Ǵ� JSP �������� �״�� �̵��Ѵ�.
			// ��, HttpServletRequest ��ü�� boardDTO��� Ű�������� ����ȴ�.
		CommentDTO commentDTO 
		, @RequestParam(value="com_no") int com_no
	) {
		commentDTO.setCom_no(com_no);
		//System.out.println("��Ʈ�ѷ� ���� ����");		
			// ���� �����ϰ� ���� �������� ���� ���
		 int commentDelCnt = this.boardService.deleteComment(commentDTO);
		//System.out.println("��Ʈ�ѷ� ���� ��");
		return commentDelCnt;
	}

	
	
	
}
