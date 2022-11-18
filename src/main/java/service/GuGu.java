package service;

import java.util.ArrayList;

public class GuGu {
	public void secondDan() {
		for(int i = 1; i<10; i++){
			System.out.println(2 + "*" + i + "=" + 2*i);
		}
	}
	
	public String secondDanResult() {
		String result = "";
		for(int i = 1; i<10; i++){
			result = result + 2 + "*" + i + "=" + 2*i + "<br>";
		}
		return result;
	}
	
	//입력값이 없다.
	//반환값이 있다.
	public ArrayList<String> secondDanResultList() {
		ArrayList<String> resultList = new ArrayList<String>();
		for(int i = 1; i<10; i++){
			resultList.add(2 + "*" + i + "=" + 2*i);
		}
		return resultList;
	}
	
	//입력값이 있다.
	//반환값이 있다.
	//메서드의 이름이 같은데 가능? -> 입력값 매개변스가 다르면 메서드는 다른것으로 인식해서 오류없음
	//메서드 오버로딩
		public ArrayList<String> secondDanResultList(int dan) {
		if(dan < 0) {
			return null;
		}
		ArrayList<String> resultList = new ArrayList<String>();
		for(int i = 1; i<10; i++){
			resultList.add(dan + "*" + i + "=" + dan*i);
		}
		return resultList;
	}	
	
}
