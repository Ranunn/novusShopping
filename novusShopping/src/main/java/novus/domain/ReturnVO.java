package novus.domain;

import java.io.File;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public class ReturnVO {

      private int orderNo;         // 주문번호
      private int orderItemNo;      // 주문 상품 번호
      private int memNo;            // 회원번호
      private String itemName;      // 상품명
      private String rFname;      // 파일명
      private long rFsize;         // 파일용량
      
      
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
      //*************************************************
      public int getOrderNo() {
         return orderNo;
      }
      public void setOrderNo(int orderNo) {
         this.orderNo = orderNo;
      }
      public int getOrderItemNo() {
         return orderItemNo;
      }
      public void setOrderItemNo(int orderItemNo) {
         this.orderItemNo = orderItemNo;
      }
      public int getMemNo() {
         return memNo;
      }
      public void setMemNo(int memNo) {
         this.memNo = memNo;
      }
      public String getItemName() {
         return itemName;
      }
      public void setItemName(String itemName) {
         this.itemName = itemName;
      }
      
      
}