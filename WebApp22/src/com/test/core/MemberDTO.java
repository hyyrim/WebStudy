/*======================
	MemberDTO.java
======================*/

package com.test.core;

public class MemberDTO
{
	private String name, tel, addr;

	// default 생성자
	public MemberDTO()
	{
	}
	
	// name ,tel, addr 을 매개변수로 받는 생성자
	public MemberDTO(String name, String tel, String addr)
	{
		this.name = name;
		this.tel = tel;
		this.addr = addr;
	}
	
	// getter / setter 구성
	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public String getTel()
	{
		return tel;
	}

	public void setTel(String tel)
	{
		this.tel = tel;
	}

	public String getAddr()
	{
		return addr;
	}

	public void setAddr(String addr)
	{
		this.addr = addr;
	}
	
	
	
}
