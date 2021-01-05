package novus.domain;

import java.io.File;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public class ReviewVO {
private int reviewNo;
private int viewCount;
private String itemName;
private int itemNo;
private float grade;
private String writeDate;
private int price;
private String content ;
private String answer; 
private String memId;
private String answerDate;
private String rFname =null;
private long rFsize ;

private String rTitle;
private String reviewSpeed;
private String reviewColor;
//*************************************************
MultipartFile file;
public MultipartFile getFile() {
	return file;
}

public void setFile(MultipartFile file) {
	this.file = file;
if(! file.isEmpty()){
	this.rFname = file.getOriginalFilename();
	this.rFsize = file.getSize();
	
	//***********************************************
	// 해당 경로로 변경
	File f = new File("C:\\Users\\김도연\\Documents\\카카오톡 받은 파일\\템플릿적용까지\\novusShopping\\src\\main\\webapp\\resources\\upload\\"+rFname);				                 
	try {
		file.transferTo(f);
		
	} catch (IllegalStateException e) {				
		e.printStackTrace();
	} catch (IOException e) {
		
		e.printStackTrace();
	}
}
}
public void setReviewNo(int reviewNo) {
	this.reviewNo = reviewNo;
}
public int getViewCount() {
	return viewCount;
}
public int getItemNo() {
	return itemNo;
}
public void setItemNo(int itemNo) {
	this.itemNo = itemNo;
}
public long getRFsize() {
	return rFsize;
}
public void setRFsize(long rFsize) {
	this.rFsize = rFsize;
}
public void setViewCount(int viewCount) {
	this.viewCount = viewCount;
}
public String getItemName() {
	return itemName;
}
public void setItemName(String itemName) {
	this.itemName = itemName;
}
public float getGrade() {
	return grade;
}
public void setGrade(float grade) {
	this.grade = grade;
}
public String getWriteDate() {
	return writeDate;
}
public void setWriteDate(String writeDate) {
	this.writeDate = writeDate;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public String getAnswer() {
	return answer;
}
public void setAnswer(String answer) {
	this.answer = answer;
}
public String getMemId() {
	return memId;
}
public void setMemId(String memId) {
	this.memId = memId;
}
public String getAnswerDate() {
	return answerDate;
}
public void setAnswerDate(String answerDate) {
	this.answerDate = answerDate;
}
public String getRFname() {
	return rFname;
}
public void setRFname(String rFname) {
	this.rFname = rFname;
}public int getReviewNo() {
	return reviewNo;
}

public String getrFname() {
	return rFname;
}

public void setrFname(String rFname) {
	this.rFname = rFname;
}

public long getrFsize() {
	return rFsize;
}

public void setrFsize(long rFsize) {
	this.rFsize = rFsize;
}

public String getrTitle() {
	return rTitle;
}

public void setrTitle(String rTitle) {
	this.rTitle = rTitle;
}

public String getReviewSpeed() {
	return reviewSpeed;
}

public void setReviewSpeed(String reviewSpeed) {
	this.reviewSpeed = reviewSpeed;
}

public String getReviewColor() {
	return reviewColor;
}

public void setReviewColor(String reviewColor) {
	this.reviewColor = reviewColor;
}

}
