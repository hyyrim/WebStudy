/*
 * myMenu
 */

function myMenu(status) // 상태값을 넘긴다.
{
	var menu = document.getElementById("menuTable");
	
	if (status==1)
	{
		// js 에서 css 컨트롤은 .style로 컨트롤한다.
		// block 이면 블럭단위 / inline 이면 라인단위
		menu.style.display = "block";
	}
	else
	{
		menu.style.display = "none";
	}
}

/* 이와같이 함수 두개 만들지 않아도 됨
function myMenu1()
{
	
}

function myMenu2()
{
	
}
*/