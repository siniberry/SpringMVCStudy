/*============================================================
	RegionInsertController.java
	- 사용자 정의 컨트롤러 클래스
	- 직원 데이터 입력 액션 수행 → DAO 필요
	- 이후 employeelist.action 을 다시 요청할 수 있도록 안내
	- DAO 객체에 대한 의존성 주입(DI)을 위한 준비
	  → 인터페이스 형태의 자료형을 속성으로 구성
	  → setter 메소드 구성
=============================================================*/


package com.test.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class RegionInsertController implements Controller
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
		
		// 데이터 수신 →RegionInsertForm.jsp 로 부터...
		String regionName = request.getParameter("regionName");
		
		try
		{
			Region region = new Region();
			
			region.setRegionName(regionName);
		
			
			dao.add(region);
			
			
			// check~!!!
			//mav.setViewName("EmployeeList.jsp");
			// 내가 추가해줄테니까 넌 돌아가서 리스트 봐~ 라고 할껀데
			// 위에처럼 view 호출해주면 안된다.
			// 이건 뭐를 가지고 클라이언트 만나는 게 아님
			
			// '내가 갱신했으니까, 클라이언트한테 다시 요청하라고 해' 라고 해야함
			mav.setViewName("redirect:regionlist.action");

			
			
		} catch (Exception e)
		{	
			System.out.println(e.toString());
		}
		
		
		return mav;
	}

}
