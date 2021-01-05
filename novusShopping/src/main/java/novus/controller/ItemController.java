package novus.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import novus.domain.CartVO;
import novus.service.ItemServiceImpl;

@Controller
public class ItemController {
	@Autowired
	private ItemServiceImpl itemService;
	
	// 메인 화면
	@RequestMapping("main.nv")
	public void main() {
		System.out.println("main.nv 요청");
	}
	
	// 쇼핑몰 소개
	@RequestMapping("novusInfo.nv")
	public void novusInfo() {
		System.out.println("novusInfo.nv 요청");
	}
	
	
	//////////// 카페고리별
	// 상품 목록-핸드폰
	@RequestMapping("item/ItemList/itemList.nv")
	public void itemList() {
		System.out.println("item/ItemList/itemList.nv 요청");
	}
	// 상품 목록-태블릿
	@RequestMapping("item/ItemList/itemTablet.nv")
	public void itemTablet() {
		System.out.println("item/ItemList/itemTablet.nv 요청");
	}
	// 상품 목록-스마트워치
	@RequestMapping("item/ItemList/itemWatch.nv")
	public void itemWatch() {
		System.out.println("item/ItemList/itemWatch.nv 요청");
	}
	// 상품 목록-노트북
	@RequestMapping("item/ItemList/itemNotebook.nv")
	public void itemNotebook() {
		System.out.println("item/ItemList/itemNotebook.nv 요청");
	}
	// 상품 목록-무선이어폰
	@RequestMapping("item/ItemList/itemEars.nv")
	public void itemEars() {
		System.out.println("item/ItemList/itemEars.nv 요청");
	}
	// 상품 목록-기타 기기
	@RequestMapping("item/ItemList/itemEtc.nv")
	public void itemEtc() {
		System.out.println("item/ItemList/itemEtc.nv 요청");
	}
	
	//////////// 브랜드별
	// 애플 1페이지
	@RequestMapping("item/ItemList/itemApple.nv")
	public void itemApple() {
		System.out.println("item/ItemList/itemApple.nv 요청");
	}
	// 애플 2페이지
	@RequestMapping("item/ItemList/itemApple2.nv")
	public void itemApple2() {
		System.out.println("item/ItemList/itemApple2.nv 요청");
	}
	// 애플 3페이지
	@RequestMapping("item/ItemList/itemApple3.nv")
	public void itemApple3() {
		System.out.println("item/ItemList/itemApple3.nv 요청");
	}
	// 삼성 1페이지
	@RequestMapping("item/ItemList/itemSamsung.nv")
	public void itemSamsung() {
		System.out.println("item/ItemList/itemSamsung.nv 요청");
	}
	// 삼성 2페이지
	@RequestMapping("item/ItemList/itemSamsung2.nv")
	public void itemSamsung2() {
		System.out.println("item/ItemList/itemSamsung2.nv 요청");
	}
	// 엘지
	@RequestMapping("item/ItemList/itemLG.nv")
	public void itemLG() {
		System.out.println("item/ItemList/itemLG.nv 요청");
	}
	
	//////////// 상품 세부 정보 - 핸드폰
	@RequestMapping("item/ItemInfo/itemDetails.nv")
	public void itemDetailst() {
		System.out.println("item/ItemInfo/itemDetails.nv 요청");
	}
	@RequestMapping("item/ItemInfo/itemDetailsMini.nv")
	public void itemDetailstMini() {
		System.out.println("item/ItemInfo/itemDetailsMini.nv 출력");
	}
	@RequestMapping("item/ItemInfo/itemDetailsUltra.nv")
	public void itemDetailstUltra() {
		System.out.println("item/ItemInfo/itemDetailsUltra.nv 출력");
	}
	@RequestMapping("item/ItemInfo/itemDetailsi12.nv")
	public void itemDetailsti12() {
		System.out.println("item/ItemInfo/itemDetailsi12.nv 출력");
	}
	@RequestMapping("item/ItemInfo/itemDetailsWing.nv")
	public void itemDetailstWing() {
		System.out.println("item/ItemInfo/itemDetailsWing.nv 출력");
	}
	@RequestMapping("item/ItemInfo/itemDetailsVelvet.nv")
	public void itemDetailsVelvet() {
		System.out.println("item/ItemInfo/itemDetailsVelvet.nv 출력");
	}
	
	//////////////// 상품 세부 정보 - 태블릿
	@RequestMapping("item/ItemInfo/itemDetailsS7+.nv")
	public void itemDetailsS7Plus() {
		System.out.println("item/ItemInfo/itemDetailsS7+.nv 출력");
	}
	@RequestMapping("item/ItemInfo/itemDetailsS7.nv")
	public void itemDetailsS7() {
		System.out.println("item/ItemInfo/itemDetailsS7.nv 출력");
	}
	@RequestMapping("item/ItemInfo/itemDetailsPro.nv")
	public void itemDetailsPro() {
		System.out.println("item/ItemInfo/itemDetailsPro.nv 출력");
	}
	@RequestMapping("item/ItemInfo/itemDetails8th.nv")
	public void itemDetails8th() {
		System.out.println("item/ItemInfo/itemDetails8th.nv 출력");
	}
	@RequestMapping("item/ItemInfo/itemDetailsAir.nv")
	public void itemDetailsAir() {
		System.out.println("item/ItemInfo/itemDetailsAir.nv 출력");
	}
	@RequestMapping("item/ItemInfo/itemDetailsGpad.nv")
	public void itemDetailsGpad() {
		System.out.println("item/ItemInfo/itemDetailsGpad.nv 출력");
	}
	
	//////////// 상품 세부 정보 - 스마트워치
	@RequestMapping("item/ItemInfo/itemDetailsWatch3.nv")
	public void itemDetailsWatch3() {
		System.out.println("item/ItemInfo/itemDetailsWatch3.nv 출력");
	}
	@RequestMapping("item/ItemInfo/itemDetailsActive.nv")
	public void itemDetailsActive() {
		System.out.println("item/ItemInfo/itemDetailsActive.nv 출력");
	}
	@RequestMapping("item/ItemInfo/itemDetailsFit.nv")
	public void itemDetailsFit() {
		System.out.println("item/ItemInfo/itemDetailsFit.nv 출력");
	}
	@RequestMapping("item/ItemInfo/itemDetailsW7.nv")
	public void itemDetailsW7() {
		System.out.println("item/ItemInfo/itemDetailsW7.nv 출력");
	}
	@RequestMapping("item/ItemInfo/itemDetailsSeries6silver.nv")
	public void itemDetailsSeries6silver() {
		System.out.println("item/ItemInfo/itemDetailsSeries6silver.nv 출력");
	}
	@RequestMapping("item/ItemInfo/itemDetailsSeries6rose.nv")
	public void itemDetailsSeries6rose() {
		System.out.println("item/ItemInfo/itemDetailsSeries6rose.nv 출력");
	}
	
	////////////// 상품 세부 정보 - 노트북
	@RequestMapping("item/ItemInfo/itemDetailsFlex.nv")
	public void itemDetailsFlex() {
		System.out.println("item/ItemInfo/itemDetailsFlex.nv 출력");
	}
	@RequestMapping("item/ItemInfo/itemDetailsFlexAlpha.nv")
	public void itemDetailsFlexAlpha() {
		System.out.println("item/ItemInfo/itemDetailsFlexAlpha.nv 출력");
	}
	@RequestMapping("item/ItemInfo/itemDetailsBookS.nv")
	public void itemDetailsBookS() {
		System.out.println("item/ItemInfo/itemDetailsBookS.nv 출력");
	}
	@RequestMapping("item/ItemInfo/itemDetailsPro13.nv")
	public void itemDetailsPro13() {
		System.out.println("item/ItemInfo/itemDetailsPro13.nv 출력");
	}
	@RequestMapping("item/ItemInfo/itemDetailsPro16.nv")
	public void itemDetailsPro16() {
		System.out.println("item/ItemInfo/itemDetailsPro16.nv 출력");
	}
	@RequestMapping("item/ItemInfo/itemDetailsGram.nv")
	public void itemDetailsGram() {
		System.out.println("item/ItemInfo/itemDetailsGram.nv 출력");
	}
	
	/////////////// 상품 세부 정보 - 무선이어폰
	@RequestMapping("item/ItemInfo/itemDetailsBudsLivepack.nv")
	public void itemDetailsBudsLivepack() {
		System.out.println("item/ItemInfo/itemDetailsBudsLivepack.nv 출력");
	}
	@RequestMapping("item/ItemInfo/itemDetailsBudsPlus.nv")
	public void itemDetailsBudsPlus() {
		System.out.println("item/ItemInfo/itemDetailsBudsPlus.nv 출력");
	}
	@RequestMapping("item/ItemInfo/itemDetailsBudsLive.nv")
	public void itemDetailsBudsLive() {
		System.out.println("item/ItemInfo/itemDetailsBudsLive.nv 출력");
	}
	@RequestMapping("item/ItemInfo/itemDetailsAirpots.nv")
	public void itemDetailsAirpots() {
		System.out.println("item/ItemInfo/itemDetailsAirpots.nv 출력");
	}
	@RequestMapping("item/ItemInfo/itemDetailsAirpotsLess.nv")
	public void itemDetailsAirpotsLess() {
		System.out.println("item/ItemInfo/itemDetailsAirpotsLess.nv 출력");
	}
	@RequestMapping("item/ItemInfo/itemDetailsAirpotsPro.nv")
	public void itemDetailsAirpotsPro() {
		System.out.println("item/ItemInfo/itemDetailsAirpotsPro.nv 출력");
	}
	
	////////////// 상품 세부 정보 - 기타기기
	@RequestMapping("item/ItemInfo/itemDetailsPencil1st.nv")
	public void itemDetailsPencil1st() {
		System.out.println("item/ItemInfo/itemDetailsPencil1st.nv 출력");
	}
	@RequestMapping("item/ItemInfo/itemDetailsPencil2nd.nv")
	public void itemDetailsPencil2nd() {
		System.out.println("item/ItemInfo/itemDetailsPencil2nd.nv 출력");
	}
	
	// 장바구니 디비연결
	@RequestMapping("item/ItemList/cart.nv")
	public ModelAndView cart() {
		System.out.println("item/ItemList/cart.nv 요청");
		// DB의 cart 테이블에 있는 정보를 모두 불러오기
		List<Map<String, Object>> result = itemService.cartList();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("item/ItemList/cart");
		mv.addObject("cartList", result);
		return mv;
	}
	// 장바구니에 상품 추가//////////////////////////////////////////
	@RequestMapping("item/ItemInfo/cartInsert.nv")
	public ModelAndView cartInsert(CartVO vo) {
		System.out.println("item/ItemList/cartInsert.nv 요청");
		
		/* 이따 값 잘 넘어가지면 이건 삭제하세용
		String itemName = vo.getItemName();
		String itemImg = vo.getItemImg();
		int itemNo = vo.getItemNo();
		 */
		// 장바구니 추가
		itemService.cartInsert(vo);
		
		int price = vo.getPrice();
		int count = vo.getCount();
		int totalPrice = price * count;
		vo.setTotalPrice(totalPrice);
		// 여기에 insert 진행~
		

		// DB의 cart 테이블에 있는 정보를 모두 불러오기
		List<Map<String, Object>> result = itemService.cartList();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("item/ItemList/cart");
		mv.addObject("cartList", result);
		return mv;
//		return "redirect:item/ItemList/cart.nv";
	}

	// 상품 리뷰
	@RequestMapping("item/ItemInfo/itemReview.nv")
	public void itemReview() {
		System.out.println("item/ItemInfo/itemReview.nv 요청");
	}

}
