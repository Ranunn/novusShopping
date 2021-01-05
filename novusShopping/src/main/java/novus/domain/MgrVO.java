package novus.domain;

// 직원 정보 
public class MgrVO {
	
	private int mgrNo;		// 사번
	private String mgrName;	// 사원명
	private String mgrJob;	// 직급
	private String mgrDept;	// 부서
	private String mgrHire;	// 입사일
	private int mgrSal;	// 급여
	private String mgrEmail;	// 이메일
	private String mgrResign;	// 퇴사여부
	private String mgrEtc="회원가입을 축하합니다.";	// 비고
	private String mgrId;	// 아이디
	private String mgrPass;	// 비밀번호
	private String mgrTel;
	
	// setter, getter
	
	public String getMgrTel() {
		return mgrTel;
	}
	public void setMgrTel(String mgrTel) {
		this.mgrTel = mgrTel;
	}
	public int getMgrNo() {
		return mgrNo;
	}
	public void setMgrNo(int mgrNo) {
		this.mgrNo = mgrNo;
	}
	public String getMgrName() {
		return mgrName;
	}
	public void setMgrName(String mgrName) {
		this.mgrName = mgrName;
	}
	public String getMgrJob() {
		return mgrJob;
	}
	public void setMgrJob(String mgrJob) {
		this.mgrJob = mgrJob;
	}
	public String getMgrDept() {
		return mgrDept;
	}
	public void setMgrDept(String mgrDept) {
		this.mgrDept = mgrDept;
	}
	public String getMgrHire() {
		return mgrHire;
	}
	public void setMgrHire(String mgrHire) {
		this.mgrHire = mgrHire;
	}
	public int getMgrSal() {
		return mgrSal;
	}
	public void setMgrSal(int mgrSal) {
		this.mgrSal = mgrSal;
	}
	public String getMgrEmail() {
		return mgrEmail;
	}
	public void setMgrEmail(String mgrEmail) {
		this.mgrEmail = mgrEmail;
	}
	public String getMgrResign() {
		return mgrResign;
	}
	public void setMgrResign(String mgrResign) {
		this.mgrResign = mgrResign;
	}
	public String getMgrEtc() {
		return mgrEtc;
	}
	public void setMgrEtc(String mgrEtc) {
		this.mgrEtc = mgrEtc;
	}
	public String getMgrId() {
		return mgrId;
	}
	public void setMgrId(String mgrId) {
		this.mgrId = mgrId;
	}
	public String getMgrPass() {
		return mgrPass;
	}
	public void setMgrPass(String mgrPass) {
		this.mgrPass = mgrPass;
	}


}
