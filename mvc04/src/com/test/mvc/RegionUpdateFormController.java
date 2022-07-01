/*======================================================
	RegionUpdateFormController.java
	- 사용자 정의 컨트롤러 클래스
	- 직원 데이터 수정 폼 요청에 대한 액션 처리
	- DAO 객체에 대한 의존성 주입(DI)을 위한 준비 필요
	  → 인터페이스 형태의 자료형을 속성으로 구성
	  → setter 메소드 구성
=======================================================*/
/*
	insertformController에서는 employeeDAO 만 주입받아서 처리했었는데
	updateFormController에서는 그 방법으로 말고, 만약 employeeDAO에 지역,직위,부서 리스트가 없었을 때
	employeeDAO, regionDAO, positionDAO, departmentDAO 다 주입받아야 하는
	방식으로 처리해보자
*/
package com.test.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class RegionUpdateFormController implements Controller
{
	
	
	// 주요 속성 구성
	private IRegionDAO dao;
	
	
	// setter 구성
	public void setDao(IRegionDAO dao)
	{
		this.dao = dao;
	}
	
	
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// 액션 코드 
		
		ModelAndView mav = new ModelAndView();
		
		// 세션 처리과정 추가 -----------------------------------------------------------------
		HttpSession session = request.getSession();
		
		if (session.getAttribute("name")==null)			//-- 로그인이 되어 있지 않은 상황
		{
			mav.setViewName("redirect:loginform.action"); 	
			return mav;
		}
		else if (session.getAttribute("admin")==null)	//-- 로그인은 되었지만 관리자가 아닌 상황
		{
			mav.setViewName("redirect:logout.action");
			return mav;
		}
			
		// ----------------------------------------------------------------- 세션 처리과정 추가		
		
		try
		{
			String regionId = request.getParameter("regionId");
			
			Region region = new Region();
			
			region = dao.searchId(regionId);
			
			
			mav.addObject("region", region);
			
			// 이 때 지정하게 되는 뷰
			mav.setViewName("/WEB-INF/view/RegionUpdateForm.jsp");
			
			
		} catch (Exception e)
		{	
			System.out.println(e.toString());
		}
		
		
		return mav;
	}




}
