package com.project.erp.Controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.erp.DAO.LoginDAO;
import com.project.erp.DAO.MainDAO;
import com.project.erp.DTO.MemberDTO;
import com.project.erp.DTO.MainInfoDTO;

@Controller
public class MainController {


	//---------------------------
	@Autowired
	private LoginDAO loginDAO;
	//---------------------------

	//---------------------------
	@Autowired
	private MainDAO mainDAO;
	//---------------------------
	

	//---------------------------
	// loginForm.do 접속 
	//---------------------------

	@RequestMapping(value="/main.do")
	public ModelAndView MainForm(			
			@RequestParam(value="loc_no"	
			,required=false
			,defaultValue="0"
			)  int loc_no) {
		List<MainInfoDTO> mapInfoOut = this.mainDAO.getMapOutList(loc_no);

		System.out.println(mapInfoOut.size());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mainPage/main.jsp");

		mav.addObject("mapInfoOut", mapInfoOut);
		return mav;
	}

	@RequestMapping(value="/map.do")
	public ModelAndView map() {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mainPage/map_iframe.jsp");
		return mav;
	}

	@RequestMapping(value="/admin_page.do")
	public ModelAndView admin() {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/admin_page.jsp");
		return mav;
	}
	
	@RequestMapping(value="/info.do")
	public ModelAndView Info() {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("infoPage/info.jsp");
		return mav;
	}
	
	@RequestMapping(value="/selfDiagnosis.do")
	public ModelAndView SelfDiagnosis() {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("selfDiagnosis/selfDiagnosis.jsp");
		return mav;
	}	

	
	@RequestMapping(value="/checkHappyHome.do")
	public ModelAndView CheckHappyHome() {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("selfDiagnosis/checkHappyHome.jsp");
		return mav;
		
	}
	

	
	@RequestMapping(value="/checkRental.do")
	public ModelAndView CheckRental() {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("selfDiagnosis/checkRental.jsp");
		return mav;
		
	}
	
	//---------------------------
			// MyPage.do 접속 @@@
			//---------------------------
			@RequestMapping(value="/mypage.do")
			public ModelAndView MyPage(
					@RequestParam(value="mem_no") int mem_no
			) {
				System.out.println("넘어온 데이터"+mem_no);
				MemberDTO myPageList = this.mainDAO.getMyPageList(mem_no);
				ModelAndView mav = new ModelAndView();
				mav.setViewName("mainPage/mypage.jsp");
				mav.addObject("myPageList", myPageList);

				return mav;
				}
					
				@RequestMapping(
					value="/mypageProc.do"
					,method=RequestMethod.POST
					,produces="application/json;charset=UTF-8"
				)
						
				@ResponseBody
				public Map<String,String> mypageProc(       
					MemberDTO mainDTO
					, HttpSession session
					, HttpServletResponse response)
				{
					
				return null;
			}
				
				//---------------------------
				//  modify_check.do 접속 @@@
				//---------------------------
				@RequestMapping(value="/modify_check.do")
				public ModelAndView modify_check(
						@RequestParam(value="mem_no") int mem_no
				) {
					MemberDTO modify_chk = this.mainDAO.getModify_chk(mem_no);
					ModelAndView mav = new ModelAndView();
					mav.setViewName("mainPage/modify_check.jsp");
					mav.addObject("modify_chk", modify_chk);
					mav.addObject("mem_no", mem_no);
					return mav;
					}
						
				@RequestMapping(
					value="/modify_checkProc.do"
					,method=RequestMethod.POST
					,produces="application/json;charset=UTF-8"
				)
				@ResponseBody
				public int modify_checkProc(       
						@RequestParam(value="mem_no") String mem_no,
						@RequestParam(value="pwd_chk") String pwd_chk)
				{
					Map<String,String> map = new HashMap<String,String>();
					map.put("mem_no", mem_no);
					map.put("pwd_chk", pwd_chk);
				
					int modify_checkPwdCnt = this.mainDAO.getModify_checkPwdCnt(map);
					
				return modify_checkPwdCnt;
			}
		
						
					
							
					
					//---------------------------
					// modify_info.do 접속 @@@
					//---------------------------	
					
					@RequestMapping(value="/modify_info.do")
					public ModelAndView modify_info(
							@RequestParam(value="mem_no") int mem_no
					) {
						MemberDTO myPageList = this.mainDAO.getMyPageList(mem_no);
						ModelAndView mav = new ModelAndView();
						mav.setViewName("mainPage/modify_info.jsp");
						mav.addObject("myPageList", myPageList);

						return mav;
						}
							
						@RequestMapping(
							value="/modify_infoProc.do"
							,method=RequestMethod.POST
							,produces="application/json;charset=UTF-8"
						)
								
						@ResponseBody
						public int modifyInfoProc(       
							MemberDTO mainDTO
							, HttpSession session
							, HttpServletResponse response)
						{
						int infoUpdateCnt = this.mainDAO.infoUpdate(mainDTO);
						return infoUpdateCnt;
					}
					
					
				//---------------------------
				// delete_check.do 접속 @@@
				//---------------------------	
						
				@RequestMapping(
						value="/delete_checkProc.do"
						,method=RequestMethod.POST
						,produces="application/json;charset=UTF-8"
					)
				@ResponseBody
				public int delete_checkProc(       
						@RequestParam(value="mem_no") String mem_no,
						@RequestParam(value="pwd_chk") String pwd_chk)
				{
					System.out.println(mem_no);
					System.out.println(pwd_chk);
					Map<String,String> map = new HashMap<String,String>();
					map.put("mem_no", mem_no);
					map.put("pwd_chk", pwd_chk);
					int deleteMemberCnt = 0;
					int modify_checkPwdCnt = this.mainDAO.getModify_checkPwdCnt(map);
					
					if(modify_checkPwdCnt==1) {
						deleteMemberCnt = this.mainDAO.deleteMember(mem_no);
					}else {
						deleteMemberCnt = -2;//비밀번호 일치하지 않음
					}
					System.out.println(deleteMemberCnt);
					
				return deleteMemberCnt;
			}
				
					
		
		

	
}
