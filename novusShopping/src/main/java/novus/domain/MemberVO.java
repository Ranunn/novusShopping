package novus.domain;

// 회원정보
public class MemberVO {
   
   private int memNo;    // 회원번호
   private String memId;     // 아이디
   private String memPass;      // 비밀번호
   private String memName;    // 이름
   private String memTel;     // 전화번호
   private String memAddr;    // 주소
   private String memBirth;    // 생년월일
   private String memEmail;     // 이메일
   private String memGrade;    // 회원등급
   private int memVIP;    // VIP등급 기준치
   private int memVVIP;   // VVIP등급 기준치
   private int memTotal;    // 누적구매금액
   
   // setter, getter
   public int getMemNo() {
      return memNo;
   }
   public void setMemNo(int memNo) {
      this.memNo = memNo;
   }
   public String getMemId() {
      return memId;
   }
   public void setMemId(String memId) {
      this.memId = memId;
   }
   
   
   public String getMemPass() {
      return memPass;
   }
   public void setMemPass(String memPass) {
      this.memPass = memPass;
   }
   public String getMemName() {
      return memName;
   }
   public void setMemName(String memName) {
      this.memName = memName;
   }
   public String getMemTel() {
      return memTel;
   }
   public void setMemTel(String memTel) {
      this.memTel = memTel;
   }
   public String getMemAddr() {
      return memAddr;
   }
   public void setMemAddr(String memAddr) {
      this.memAddr = memAddr;
   }
   public String getMemBirth() {
      return memBirth;
   }
   public void setMemBirth(String memBirth) {
      this.memBirth = memBirth;
   }
   public String getMemEmail() {
      return memEmail;
   }
   public void setMemEmail(String memEmail) {
      this.memEmail = memEmail;
   }
   public String getMemGrade() {
      return memGrade;
   }
   public void setMemGrade(String memGrade) {
      this.memGrade = memGrade;
   }
   public int getMemVIP() {
      return memVIP;
   }
   public void setMemVIP(int memVIP) {
      this.memVIP = memVIP;
   }
   public int getMemVVIP() {
      return memVVIP;
   }
   public void setMemVVIP(int memVVIP) {
      this.memVVIP = memVVIP;
   }
   public int getMemTotal() {
      return memTotal;
   }
   public void setMemTotal(int memTotal) {
      this.memTotal = memTotal;
   }
}