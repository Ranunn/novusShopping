package novus.domain;

import com.sun.istack.internal.NotNull;

// 주문정보 

public class OrderVO {
   private int orderNo=0;         // 주문번호
	private int price=0;            // 가격
	private int orderItemNo=3;      // 주문 상품 번호
	private int memNo=3;
   private String orderDate="0";      // 주문 날짜
	private int count=0;            // 수량
	private String payment="없음";         // 결제 방식
	private String delivery="주문완료";      // 배송 상황
	private String memName="홍길룽";      // 회원명
	private String itemName="상품";      // 상품명
   
      
   // setter, getter
   public int getOrderNo() {
      return orderNo;
   }
   public void setOrderNo(int orderNo) {
      this.orderNo = orderNo;
   }
   public int getPrice() {
      return price;
   }
   public void setPrice(int price) {
      this.price = price;
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
   public String getOrderDate() {
      return orderDate;
   }
   public void setOrderDate(String orderDate) {
      this.orderDate = orderDate;
   }
   public int getCount() {
      return count;
   }
   public void setCount(int count) {
      this.count = count;
   }
   public String getPayment() {
      return payment;
   }
   public void setPayment(String payment) {
      this.payment = payment;
   }
   public String getDelivery() {
      return delivery;
   }
   public void setDelivery(String delivery) {
      this.delivery = delivery;
   }
   public String getMemName() {
      return memName;
   }
   public void setMemName(String memName) {
      this.memName = memName;
   }
   public String getItemName() {
      return itemName;
   }
   public void setItemName(String itemName) {
      this.itemName = itemName;
   }
      
}