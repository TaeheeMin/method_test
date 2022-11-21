package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import vo.Dept;

public class DeptDao {
	// insert
	public int insertDept(Dept dept) throws Exception {
		return 0;
	}
	// delete
	public Dept deleteDept(String deptNo) throws Exception {
		return null;
	}
	// update
	public Dept updateDept(Dept dept) throws Exception {
		return null;
	}
	// select One
	public Dept selectOne(String deptNo) throws Exception {
		return null;
	}
	// select List
	public ArrayList<Dept> selectDeptList(int currentPage, int rowPerPage) throws Exception { // 예외처리
		// 반환타입 변수
		ArrayList<Dept> list = new ArrayList<Dept>();
		
		//biginRow를 구하는 알고리즘
		int beginRow =  (currentPage - 1) * rowPerPage;
		
		//db조회 알고리즘
		Class.forName("org.mariadb.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3306/employees","root", "java1234");
		String sql = "SELECT dept_no deptNo, dept_name deptName FROM departments LIMIT ?,?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setInt(1, beginRow);
		stmt.setInt(2, rowPerPage);
		
		ResultSet rs = stmt.executeQuery();
		while(rs.next()) {
			Dept d = new Dept();
			d.setDeptNo(rs.getString("deptNo"));
			d.setDeptName(rs.getString("deptName"));
			list.add(d);
		}
		/*
			// db연결
			
			// select결과값 가져오기
			
			// list값으로 반환
		*/
		
		rs.close();
		stmt.close();
		conn.close();
		return list;
	}
	// 
}
