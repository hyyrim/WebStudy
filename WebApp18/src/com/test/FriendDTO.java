/*====================
	FriendDTO.java
====================*/

package com.test;

public class FriendDTO
{
	private String name;		//-- 이름
	private int age;			//-- 나이
	private String gender;		//-- 성별
	private String[] ideal;		//-- 이상형 check~!!!
	//-- 이상형은 여러 개의 데이터가 동시에 전달되므로
	//	 즉, 다중 선택이 가능하도록 구성된 컨트롤이기 때문에
	//	 배열로 처리한다.
	
	// getter / setter 구성
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public int getAge()
	{
		return age;
	}
	public void setAge(int age)
	{
		this.age = age;
	}
	public String getGender()
	{
		return gender;
	}
	public void setGender(String gender)
	{
		this.gender = gender;
	}
	public String[] getIdeal()
	{
		return ideal;
	}
	public void setIdeal(String[] ideal)
	{
		this.ideal = ideal;
	}
	
	
	
}
