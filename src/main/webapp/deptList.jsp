<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="vo.*"%>
<%@ page import="dao.*"%>
<%@ page import = "java.sql.*" %>

<%
	// 1 controller
	// -> 모델값을 제공하는것은 모델, 컨트롤러가 모델한테서 값을 넘겨받고 뷰에세 넘겨주는 역할
	int currentPage = 1;
	int rowPerPage = 10;

	//	모델 값을 만드는 코드
	// 모델을 가져오는 코드 selectDeptList -> 모델
	DeptDao deptDao = new DeptDao();
	ArrayList<Dept> list = deptDao.selectDeptList(currentPage, rowPerPage); 
		
	
	// 2 model -> 메서드로 처리
	
	// 3 view -> 컨트롤러가 준 모델값을 통해 뷰를 보여주는
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		<table>
			<tr>
				<th>부서번호</th>
				<th>부서명</th>
			</tr>
			<%
				for(Dept d : list) {
				%>
					<tr>
						<td><%=d.getDeptNo()%></td>
						<td><%=d.getDeptName()%></td>
					</tr>
				<%
				}
			%>
		</table>
	</body>
</html>