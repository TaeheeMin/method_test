package service;
import vo.*;
public class MemberService {
	public boolean loginBool(String id, String pw){
		String sysId="admin";
		String sysPw="1234";
		if(id.equals(sysId) && pw.equals(sysPw)) {
			return true;//로그인 성공
		}
		return false;
	}
	
	public Member loginMember(Member paramMember) {
		Member returnMember = null;
		//db에서 가저오는 정보
		String sysId="admin";
		String sysPw="1234";
		String sysName="관리자";
		
		if(paramMember.getId().equals(sysId) && paramMember.getPw().equals(sysPw)) {
			returnMember= new Member();
			returnMember.setId(sysId);
			returnMember.setName(sysName);
			return returnMember;//로그인 성공
		}
		return null;
	}
	// mvc중 모델 분리 -> 모델1
	// 메서드가 모델역할(요청처리)
	// action에는 vc만
	// 모델1 -> vo분리, 모델분리???
}
