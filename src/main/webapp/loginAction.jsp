<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "vo.*" %>
<%@ page import = "service.*" %>
<%
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