/*=====================================
	RegListController.java
	- 사용자 정의 컨트롤러 클래스
======================================*/

package com.test.mvc;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class RegListController implements Controller
{
	private IRegionDAO dao;
	
	public void setDao(IRegionDAO dao)
	{
		this.dao = dao;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// 액션 코드 
		
		ModelAndView mav = new ModelAndView();
		
		// 로그인 여부만 확인 → 관리자인지 확인할 필요 없음
		// 세션 처리과정 추가 -----------------------------------------------------------------
		HttpSession session = request.getSession();
		
		if (session.getAttribute("name")==null)			//-- 로그인이 되어 있지 않은 상황
		{
			// 로그인 폼으로 다시 돌려보냄
			// 로그인해야 여기 들어올 수 있어
			mav.setViewName("redirect:loginform.action"); 	
			return mav;
		}
		
		
		// 이 코드 추가되면, 로그아웃 된 상태에서
		// http://localhost:8090/mvc04/emplist.action
		// 그냥 입력하면 못 들어감!
			
		// ----------------------------------------------------------------- 세션 처리과정 추가   
		
		
		ArrayList<Region> regionList = new ArrayList<Region>();
		
		try
		{
			regionList = dao.list();
			
			mav.addObject("regionList", regionList);
			
			mav.setViewName("/WEB-INF/view/RegList.jsp");
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return mav;
	}

}
