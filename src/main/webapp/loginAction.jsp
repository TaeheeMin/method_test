<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "vo.*" %>
<%@ page import = "service.*" %>
<%
	//1. 요정분석 : 로그인 사용할 아이디와 비밀번호 입력받아 사용
	request.setCharacterEncoding("utf-8");
	
	// 작성 확인
	if(request.getParameter("memberId") == null || request.getParameter("memberPw") == null || request.getParameter("memberId").equals("") || request.getParameter("memberPw").equals("")){
		System.out.println("1.로그인실패");
		response.sendRedirect(request.getContextPath()+"/loginForm.jsp");
		return;
	} // 내용 미입력시 메세지, 폼이동
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	// MemberService.loginBool(id, pw)
	MemberService memberService = new MemberService();
	boolean logincheck = memberService.loginBool(id, pw);
	if(logincheck) {
		System.out.println("로그인 성공");
	} else {
		System.out.println("로그인 실패");
		
	}
	
	// MemberService.loginBool(Member paramMember)
	Member paramMember = new Member();
	paramMember.setId(id);
	paramMember.setPw(pw); //묶어
	Member returnMember = memberService.loginMember(paramMember);
	if(returnMember == null) {
		System.out.println("로그인 실패");
	} else {
		System.out.println("로그인 성공");
		// session.setAttribute("loginMember", returnMember);
	}
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		
	</body>
</html>