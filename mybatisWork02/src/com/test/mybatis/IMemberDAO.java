/*===================
	IMemberDAO.java
	- 인터페이스
=====================*/
package com.test.mybatis;

import java.util.ArrayList;

public interface IMemberDAO
{
	public int add(MemberDTO m);
	public int count();
	public ArrayList<MemberDTO> list();
	
	/* 삭제 기능 처리 ② */
	public int remove(int mid);
}
