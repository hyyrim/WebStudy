<%@page import="com.test.BoardDTO"%>
<%@page import="com.test.BoardDAO"%>
<%@page import="com.util.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath(); 	
%>
<%
	// 수정 액션 요청 시 넘어온 게시물 번호 및 페이지 번호 데이터 수신
	int num = Integer.parseInt(request.getParameter("num"));
	String pageNum = request.getParameter("pageNum");
	
	Connection conn = DBConn.getConnection();
	BoardDAO dao = new BoardDAO(conn);
	
	BoardDTO dto = dao.getReadData(num);
	
	DBConn.close();

	if(dto==null)
		response.sendRedirect("List.jsp");
	
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Updated.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/created.css">

<script type="text/javascript" src="<%=cp%>/js/util.js"></script>
<script type="text/javascript">

	function sendIt()
	{
		f = document.myForm;
		
		// 입력 내용에 대한 유효성 검사
		
		// 제목 입력 확인 ----------------------
		str = f.subject.value;
		str = str.trim();
		
		// ※ javascript 에는 trim() 이 존재하지 않음.
		//	  외부에서 참조한 util.js 파일에 만들어 두었음.
		
		// 테스트
		//alert("|" + str + "|");
		
		if(!str)
		{
			alert("\제목을 입력하세요.");
			f.subject.focus();
			return;
		}
		// ---------------------- 제목 입력 확인
		
		// 이름 입력 확인 ----------------------
		str = f.name.value;
		str = str.trim();
		
		if(!str)
		{
			alert("\n작성자 이름을 입력하세요.");
			f.name.focus();
			return;
		}
		// ---------------------- 이름 입력 확인
		
		// 이메일 검사 -------------------------
		if (f.email.value)	// 제약조건이 NOT NULL 이 아니였기 때문에 입력한 경우에만 검사
		{
			if (!isValidEmail(f.email.value))
			{
				alert("\n정상적인 이메일 형식을 입력하세요.");
				f.email.focus();
				return;
			}
		}
		// ------------------------- 이메일 검사
		
		// 패스워드 입력 확인 ------------------
		str = f.pwd.value;
		str = str.trim();
		
		if (!str)
		{
			alert("\n패스워드를 입력하세요.");
			f.pwd.focus();
			return; // 여기서의 return 은 반환이 아니라 함수 종료이기때문에
					// return false 안해줘도 된다.
		}
		
		
		 var pwdSource = f.pwdSource.value;
		 if(str != pwdSource)
		{
			alert("\n패스워드가 맞지 않습니다");
			f.pwd.focus();
			return;
		}
		
		// ------------------ 패스워드 입력 확인
		
		f.action = "<%=cp%>/Updated_ok.jsp";
		f.submit();
	}

</script>

</head>
<body>

<div id="bbs">

	<div id="bbs_title">
		게 시 판 (JDBC 연동 버전)
	</div>
	
	<form action="" method="post" name="myForm">
		<div id="bbsCreated">
			
			<div class="bbsCreated_bottomLine">
				<dl>
					<dt>제&nbsp;&nbsp;&nbsp;&nbsp;목</dt>
					<dd>
						<input type="text" name="subject" class="boxTF"
						size="74" maxlength="100"
						value="<%=dto.getSubject()%>">
					</dd>
				</dl>
			</div><!-- .bbsCreated_bottomLine -->
		
			<div class="bbsCreated_bottomLine">
				<dl>
					<dt>작 성 자</dt>
					<dd>
						<input type="text" name="name" class="boxTF"
						size="35" maxlength="20"
						value="<%=dto.getName()%>">
					</dd>
				</dl>
			</div><!-- .bbsCreated_bottomLine -->
		
			<div class="bbsCreated_bottomLine">
				<dl>
					<dt>이메일</dt>
					<dd>
						<input type="email" name="email" class="boxTF"
						size="35" maxlength="50"
						value="<%=dto.getEmail()%>">
					</dd>				
				</dl>
			</div><!-- .bbsCreated_bottomLine -->
			
			<div id="bbsCreated_content">
				<dl>
					<dt>내&nbsp;&nbsp;&nbsp;&nbsp;용</dt>
					<dd>
						<textarea rows="12" cols="63" name="content" class="boxTA"
						><%=dto.getContent() %></textarea>
						<!-- \n태그를 <br>로 다시 바꾸지 않아도 된다. -->
						<!-- textarea><dto.getContent() 이렇게써야 띄어쓰기 안나옴 -->
					</dd>
				</dl>
			</div><!-- #bbsCreated_content -->
			
			<div id="bbsCreated_noLine">
				<dl>
					<dt>패스워드</dt>
					<dd>
						<input type="hidden" name="pwdSource" value="<%=dto.getPwd()%>">
						<input type="password" name="pwd" class="boxTF"
						size="" maxlength="7">
						&nbsp;(게시물 수정 및 삭제시 필요)
					</dd>
				</dl>
			</div><!-- #bbsCreated_noLine -->
			
			<div id="bbsCreated_footer">
			
				<!-- Updated_ok.jsp 페이지 요청 과정에서 반드시 필요한 데이터 -->
				<input type="hidden" name="num" value="<%=dto.getNum()%>">
				<input type="hidden" name="pageNum" value="<%=pageNum %>">
								
				<input type="button" value="수정하기" class="btn2" onclick="sendIt()">
				<input type="reset" value="다시입력" class="btn2"
				onclick="document.myForm.subject.focus();">
				<input type="button" value="작성취소" class="btn2"
				onclick="javascript:location.href='<%=cp%>/List.jsp'">
			</div><!-- #bbsCreated_footer -->
			
					
		</div><!-- #bbsCreated -->	
	
	</form>

</div><!-- #bbs -->





</body>
</html>