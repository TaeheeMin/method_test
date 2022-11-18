<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "service.*" %>
<%@ page import = "java.util.ArrayList" %>
<%
	// controller
	
	// model
	/*
		메서드 :
		1) 코드(여러 명령문)를 하나의 이름으로 묶어 놓은 것
		2) 입력값이 필요할 수도있다. -> 메서드의 매개변수
		3) 반환값이 있을수도 있음 -> 메서드의 리턴값
		4) 메서드는 클래스 안에 만들어진다.(일반, static) -> 일반은 this로 호출, static안에서는 일반메서드 호출 불가
		5) 메서드 이름으로 호출
	*/
	
	System.out.println("직접");
	// 구구단 출력
	int dan = 2;
	for(int i = 1; i<10; i++){
		System.out.println(2 + "*" + i + "=" + 2*i);
	}
	
	// 구구단을 툴력하는 코드에 이름 부여 = 메서드
	// 변수 생성, 반복문, 출력
	// 메서드 생성 -> GuGu클래스 안에 일반 메서드로 생성 -> 입력값 필요없고 반환값도 필요없다.
	
	System.out.println("메서드 호출");
	// 메서드 호출
	// 객체 만들고 메서드 호출 -> 변수 생성
	new service.GuGu().secondDan();

	// 클래스 풀네임을 사용하지 않는게 -> import
	GuGu gugu = new GuGu();
	gugu.secondDan();
	
	System.out.println("리턴값, 호출하는 곳에 출력");
	// 리턴값 존재하게
	// 호출하는 곳(jsp)에 출력
	String result = gugu.secondDanResult();
	
	// 반환값을 더 깔끔하게
	ArrayList<String> resultList = gugu.secondDanResultList();
	
	// 특정 단이 아닌 입력값 받아 원하는 단 출력
	ArrayList<String> resultList7 = gugu.secondDanResultList(7);
	//view
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>method test</title>
	</head>
	
	<body>
		<%=result %>
		<h2>2</h2>
		<%
			for(String s : resultList) {
		%>
				<div><%=s%></div>
		<%
			}
		%>
		<h2>7</h2>
		<%
			for(String s : resultList7) {
		%>
				<div><%=s%></div>
		<%
			}
		%>
		
	</body>
</html>