package novus.domain;
public class ItemVO {

   private int itemNo;
   private String itemName;
   private String category;
   private String brandName;
   private int price;
   private int count;
   private String itemImg;
   private String itemContent;
   private String itemSearchText;
   
//   MultipartFile file;
//   
//   public MultipartFile getFile() {
//        return file;
//    }
//   
//    public void setFile(MultipartFile file) {
//        this.file = file;
//      
//        // 업로드 파일 접근
//        if(! file.isEmpty()){
//            this.itemImg = file.getOriginalFilename();
//         
//            File f = new File("C:\\spring\\novus\\novusShopping\\src\\main\\webapp\\resources\\upload\\"+itemImg);
//         
//            try {
//                file.transferTo(f);
//            } catch (IllegalStateException e) {            
//                e.printStackTrace();
//            } catch (IOException e) {
//                e.printStackTrace();
//            }
//        }
//    }
   
   public int getItemNo() {
      return itemNo;
   }
   public void setItemNo(int itemNo) {
      this.itemNo = itemNo;
   }
   public String getItemName() {
      return itemName;
   }
   public void setItemName(String itemName) {
      this.itemName = itemName;
   }
   public String getCategory() {
      return category;
   }
   public void setCategory(String category) {
      this.category = category;
   }
   public String getBrandName() {
      return brandName;
   }
   public void setBrandName(String brandName) {
      this.brandName = brandName;
   }
   public int getPrice() {
      return price;
   }
   public void setPrice(int price) {
      this.price = price;
   }
   public int getCount() {
      return count;
   }
   public void setCount(int count) {
      this.count = count;
   }
   public String getItemImg() {
      return itemImg;
   }
   public void setItemImg(String itemImg) {
      this.itemImg = itemImg;
   }
   public String getItemContent() {
      return itemContent;
   }
   public void setItemContent(String itemContent) {
      this.itemContent = itemContent;
   }
   public String getItemSearchText() {
      return itemSearchText;
   }
   public void setItemSearchText(String itemSearchText) {
      this.itemSearchText = itemSearchText;
   }

}