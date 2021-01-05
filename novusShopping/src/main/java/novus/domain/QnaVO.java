package novus.domain;

import java.io.File;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public class QnaVO {
	private int itemNo =0;
	private String cate =null;
	private String writeDate  =null;
	private String reply  ="미응답";
	private String qtitle  =null;
	private String qcontent =null;
	private String qfname =null;
	private String qip =null;
	private long qfsize =0;
	private String memId =null;
	private String qanswer=null;
	private String answerDate  =null;

	private int qno =0; 
	public int getQno() {
		return qno;
	}
	public void setQno(int qno) {
		this.qno = qno;
	}
	public int getItemNo() {
		return itemNo;
	}
	public void setItemNo(int itemNo) {
		this.itemNo = itemNo;
	}
	public String getCate() {
		return cate;
	}
	public void setCate(String cate) {
		this.cate = cate;
	}
	public String getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public String getQtitle() {
		return qtitle;
	}
	public void setQtitle(String qtitle) {
		this.qtitle = qtitle;
	}
	public String getQcontent() {
		return qcontent;
	}
	public void setQcontent(String qcontent) {
		this.qcontent = qcontent;
	}
	public String getQfname() {
		return qfname;
	}
	public void setQfname(String qfname) {
		this.qfname = qfname;
	}
	public String getQip() {
		return qip;
	}
	public void setQip(String qip) {
		this.qip = qip;
	}
	public long getQfsize() {
		return qfsize;
	}
	public void setQfsize(long qfsize) {
		this.qfsize = qfsize;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getQanswer() {
		return qanswer;
	}
	public void setQanswer(String qanswer) {
		this.qanswer = qanswer;
	}
	public String getAnswerDate() {
		return answerDate;
	}
	public void setAnswerDate(String answerDate) {
		this.answerDate = answerDate;
	}

	
	
	
	//*************************************************
	MultipartFile file;
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	if(! file.isEmpty()){
		this.qfname = file.getOriginalFilename();
		this.qfsize = file.getSize();
		
		//***********************************************
		// 해당 경로로 변경
		File f = new File("C:\\Users\\김도연\\Documents\\카카오톡 받은 파일\\템플릿적용까지\\novusShopping\\src\\main\\webapp\\resources\\upload\\"+qfname);				                 
		try {
			file.transferTo(f);
			
		} catch (IllegalStateException e) {				
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
}

	//setter and getter

}