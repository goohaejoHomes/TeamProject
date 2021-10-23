package com.project.erp.Controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.erp.DAO.MyHomeDAO;
import com.project.erp.DTO.MyHomeDTO;
import com.project.erp.DTO.MyHomeSearchDTO;
import com.project.erp.Service.MyHomeService;
import com.project.erp.Util.MyHomeValidator;
import com.project.erp.Util.Util;

@Controller
public class MyHomeController {

	@Autowired
	private MyHomeDAO myHomeDAO;
	@Autowired
	private MyHomeService myHomeService;


	@RequestMapping(value="/searchMyHome.do")
	public ModelAndView SeacrhMyHome( MyHomeSearchDTO myHomeSearchDTO
			,@RequestParam(value="xxx"	
					,required=false
					,defaultValue="0"
					) String xxx
			,@RequestParam(value="loc_no"	
					,required=false
					,defaultValue="0"
					) int loc_no
		) throws Exception {
		System.out.println(myHomeSearchDTO.getTarget_code());
		List<MyHomeDTO> locationList = this.myHomeDAO.getLocationList();
		List<MyHomeDTO> loc_detailList = this.myHomeDAO.getLoc_detailList(xxx);
		List<MyHomeDTO> supply_typeList = this.myHomeDAO.getSupply_typeList();
		List<MyHomeDTO> area_gradeList = this.myHomeDAO.getArea_gradeList();
		
		int rentalListAllCnt = this.myHomeDAO.getRentalListAllCnt(myHomeSearchDTO);
		List<Map<String,String>> rentalList = this.myHomeDAO.getRentalList(myHomeSearchDTO);
		
		int selectPageNo = myHomeSearchDTO.getSelectPageNo();
		int rowCntPerPage = myHomeSearchDTO.getRowCntPerPage();
		int pageNoCntPerPage = 10;
		
		Map<String,Integer> map= Util.getPagingNos(rentalListAllCnt
				, pageNoCntPerPage
				, selectPageNo
				, rowCntPerPage);
		
		//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
		//HashMap<String,Integer> ��ü�� ����� ������ ���õ� ������ ��ȣ��
		//BoardSearchDTO��ü�� setSelectPageNo�޼ҵ� ȣ��� ������
		myHomeSearchDTO.setSelectPageNo(map.get("selectPageNo"));
		
		//������ȣ
		int start_serial_no = (selectPageNo-1)*rowCntPerPage+1;
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("searchPage/searchMyHome.jsp");
		mav.addObject("locationList", locationList);
		mav.addObject("loc_no",loc_no);
		mav.addObject("loc_detailList", loc_detailList);
		mav.addObject("supply_typeList", supply_typeList);
		mav.addObject("area_gradeList", area_gradeList);
		mav.addObject("rentalListAllCnt", rentalListAllCnt);
		mav.addObject("rentalList", rentalList);
		
		mav.addObject("start_serial_no", start_serial_no);
		
		mav.addObject("pagingNos",map );
		
		return mav;
	}

	@RequestMapping(value="/myHomeContentForm.do")
	public ModelAndView goMyHomeContentForm(
			@RequestParam(value="rental_detail_no") int rental_detail_no // "b_no"�� ���� ���� ���������� spring�� �˾Ƽ� �ٲ���
			) {
		//----------------------------------------------------
		// [BoardServiceImpl ��ü]�� getBoard �޼ҵ� ȣ��� [1���� �Խ��Ǳ�]�� BoardDTO ��ü�� ��ƿ���
		//----------------------------------------------------
		MyHomeDTO myHomeDTO = this.myHomeDAO.getMyHome(rental_detail_no);
			//readcount�� �����ϱ� ������ update������ �־� Ʈ������� �ɸ�
		//----------------------------------------------------
		//[ModelAndView ��ü] �����ϱ�
		//[ModelAndView ��ü]�� [ȣ���� JSP ��������]�� �����ϱ�
		//[ModelAndView ��ü]�� DB���� ����� ��� 
		//[ModelAndView ��ü] �����ϱ�
		//---------------------------------------------------
		List<MyHomeDTO> sameComplexList = this.myHomeDAO.getSameComplexList(rental_detail_no);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("searchPage/myHomeContentForm.jsp");
		
		mav.addObject("rental_detail_no", rental_detail_no);
		mav.addObject("myHomeDTO", myHomeDTO);
		mav.addObject("sameComplexList", sameComplexList);
		return mav;
	}

	@RequestMapping(value="/myHomeRegForm.do")
	public ModelAndView goMyHomeRegForm(@RequestParam(value="xxx",required=false,defaultValue="0") String xxx) {
		
		List<MyHomeDTO> supply_typeList = this.myHomeDAO.getSupply_typeList();
		List<MyHomeDTO> locationList = this.myHomeDAO.getLocationList();
		List<MyHomeDTO> loc_detailList = this.myHomeDAO.getLoc_detailList(xxx);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("searchPage/myHomeRegForm.jsp");
		mav.addObject("supply_typeList",supply_typeList);
		mav.addObject("locationList", locationList);
		mav.addObject("loc_detailList", loc_detailList);
		return mav;
	}
	
	@RequestMapping(value="/myHomeUpDelForm.do")
	public ModelAndView goMyHomeUpDelForm(
			@RequestParam(value="rental_detail_no") int rental_detail_no 
			,@RequestParam(value="rental_no") int rental_no 
			,@RequestParam(value="xxx"	
			,required=false
			,defaultValue="0"
			) String xxx
			){
		MyHomeDTO myHomeDTO = this.myHomeDAO.getMyHome(rental_detail_no);
		List<MyHomeDTO> supply_typeList = this.myHomeDAO.getSupply_typeList();
		
		List<MyHomeDTO> locationList = this.myHomeDAO.getLocationList();
		List<MyHomeDTO> loc_detailList = this.myHomeDAO.getLoc_detailList(xxx);
		String loc_no = myHomeDTO.getLoc_no();
		List<MyHomeDTO> firstLoc_detailList = this.myHomeDAO.getFirst_detailList();
		List<MyHomeDTO> xxxTargetCode = this.myHomeDAO.getXxxTargetCode(rental_no);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("searchPage/myHomeUpDelForm.jsp");
		mav.addObject("myHomeDTO", myHomeDTO);
		mav.addObject("supply_typeList", supply_typeList);
		mav.addObject("locationList", locationList);
		mav.addObject("loc_detailList", loc_detailList);
		mav.addObject("firstLoc_detailList", firstLoc_detailList);
		mav.addObject("xxxTargetCode", xxxTargetCode);
		return mav;
	}

	
	@RequestMapping( 
			value = "/myHomeUpDelProc.do"
			, method = RequestMethod.POST
			, produces = "application/json;charset=UTF-8" 
	)
	@ResponseBody
	public Map<String,String> checkMyHomeUpDelForm(
			//+++++++++++++++++++++++++++++++++++++++++++++++++
			// �Ķ���Ͱ��� ������ [BoardDTO ��ü]�� �Ű������� ����
			//+++++++++++++++++++++++++++++++++++++++++++++++++
			MyHomeDTO myHomeDTO
			
			//+++++++++++++++++++++++++++++++++++++++++++++++++
			// "upDel"��� �Ķ���͸��� �Ķ���Ͱ��� ����� �Ű����� upDel ����
			//+++++++++++++++++++++++++++++++++++++++++++++++++
			, @RequestParam(value="upDel") String upDel
			
		) throws Exception {

		int myHomeUpDelCnt =0;
		//��ȿ�� üũ ���� �޽����� ������ ���� msg ����
		if(upDel.equals("up")) {
			//----------------------------------------------------
			
			//----------------------------------------------------
			//[ModelAndView ��ü]�� ��ȿ�� üũ �����޽��� �����ϱ�
			//----------------------------------------------------
			
			//���� msg�ȿ� ""�� ����Ǿ� ������, �� ��ȿ�� üũ�� ���������
			
				//���� DB����
				//----------------------------------------------------
				//[BoardServiceImpl ��ü]�� updateBoard �޼ҵ� ȣ��� 
				// �Խ��� �� �����ϰ� [�Խ��� ���� �������� ����] ���
				//----------------------------------------------------
					// ����� 1�̸�(�� ���� ����) ����
				//boardDTO�� �Ķ���Ͱ��� �������
				myHomeUpDelCnt = this.myHomeService.updateMyHome(myHomeDTO);
				//System.out.println("boardUpdateCnt => "+ boardUpDelCnt); // DB���� �����ߴ��� Ȯ��
			
		}
		//----------------------------------------------------
		//���� �Խ��� ���� ���� => ��ȿ���˻� �ʿ����
		//----------------------------------------------------
		else if(upDel.equals("del")) {
			//----------------------------------------------------
			//[BoardServiceImpl ��ü]�� deleteBoard �޼ҵ� ȣ���
			//���� �����ϰ� [���� �������� ����] ���
			//----------------------------------------------------
			myHomeUpDelCnt = this.myHomeDAO.deleteMyHome(myHomeDTO);
		}

		//*******************************************
		// HashMap<String,String> ��ü �����ϱ�
		// HashMap<String,String> ��ü�� �Խ��� ����.���� �������� ���� �����ϱ�
		// HashMap<String,String> ��ü�� ��ȿ�� üũ �� �޽��� �����ϱ�
		// HashMap<String,String> ��ü �����ϱ�
		//*******************************************
		Map<String, String> map = new HashMap<String,String>();
		map.put("myHomeUpDelCnt", myHomeUpDelCnt+"");		
		return map;
	}	
	
	//---------------------------
	// homeRegProc.do ���� 
	//---------------------------
	@RequestMapping(
			value="/homeRegProc.do"
			,method=RequestMethod.POST
			,produces="application/json;charset=UTF-8"
		)
		@ResponseBody
		public int insertHome(MyHomeDTO myhomeDTO) {
		//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
		System.out.println("Controller insertHome => " + myhomeDTO.getSupply_type_no());
		System.out.println("Controller insertHome => " + myhomeDTO.getComplex_name());
		System.out.println("Controller insertHome => " + myhomeDTO.getDedicated_area());
		//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
		int homeRegCnt = this.myHomeService.insertHome(myhomeDTO);
		//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
		System.out.println("Controller homeRegCnt => " + homeRegCnt);
		//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
		
		return homeRegCnt;
		
		
		
	}
	
}
