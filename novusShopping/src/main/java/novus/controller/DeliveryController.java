package novus.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import novus.domain.ItemVO;
import novus.domain.ReviewVO;
import novus.domain.SearchCntVO;
import novus.service.MemberServiceImpl;
import novus.service.ReviewServiceImpl;

@Controller
public class DeliveryController {
	

	@Autowired
	private ReviewServiceImpl reviewService;
	@Autowired 
	private MemberServiceImpl memberService;
	
	// 주문내역 페이지로 이동
	@RequestMapping("mem/myOrder/myOrder.nv")
	public ModelAndView myOrder() {
		System.out.println("/mem/myOrder/myOrder.nv 요청 (1)");
		// DB의 모든 주문내역을 가져오기
		List<Map<String, Object>> result = memberService.selectBuyList();

		
		
		// 콘솔에 찍어보기
/*		System.out.println("/mem/myOrder/myOrder.nv 2요청 (4):" + result.size());

		for(int i=0; i<result.size(); i++) {
			System.out.println(result.get(i));
			System.out.println(result.get(i).get("PRICE"));
		}
*/		
		
		// 가져온 값을 담아서 뷰 페이지로 전달
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mem/myOrder/myOrder");
		mv.addObject("buyList", result);
		return mv;
	}
	
	// 배송 조회 팝업 페이지로 이동
	@RequestMapping("mem/myOrder/myDelivery.nv")
	public ModelAndView myDelivery(ItemVO vo) {
		System.out.println("/mem/myOrder/myDelivery.nv 요청");
		ItemVO result = memberService.selectBuy(vo);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mem/myOrder/myDelivery");
		mv.addObject("item", result);
		return mv;
	}
	
	// 교환/반품 페이지로 이동
	@RequestMapping("mem/myOrder/myExchange.nv")
	public ModelAndView myExchange(ItemVO vo) {
		System.out.println("/mem/myOrder/myExchange.nv 요청");
		ItemVO result = memberService.selectBuy(vo);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mem/myOrder/myExchange");
		mv.addObject("item", result);
		return mv;
	}
	
	// 교환/반품 내용 입력
	@RequestMapping("mem/myOrder/saveExchange.nv")
	public ModelAndView saveExchange(ReviewVO vo) {
		System.out.println("mem/myOrder/saveExchange.nv 요청");
		// 교환/반품 글을 DB에 등록
		reviewService.insertReturn(vo);
		// 해당 상품번호의 리뷰 수를 1 증가
		reviewService.refundCnt(vo);
		
		// DB의 모든 주문내역을 가져오기
		List<Map<String, Object>> result = memberService.selectBuyList();
				
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mem/myOrder/myOrder");
		mv.addObject("buyList", result);
		return mv;
	}
	
	// 리뷰 작성 페이지로 이동
	@RequestMapping("mem/myOrder/myReview.nv")
	public ModelAndView myReview(ItemVO vo) {
		System.out.println("/mem/myOrder/myReview.nv 요청");
		ItemVO result = memberService.selectBuy(vo);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mem/myOrder/myReview");
		mv.addObject("item", result);
		return mv;
	}
	
	// 리뷰 내용 입력
	@RequestMapping("mem/myOrder/saveReview.nv")
	public ModelAndView saveReview(ReviewVO vo, SearchCntVO vovo) {
		System.out.println("mem/myOrder/saveReview.nv 요청");
		// 리뷰 내용을 DB에 등록
		reviewService.insertReview(vo);
		// 해당 상품번호의 리뷰 수를 1 증가
		reviewService.reviewCnt(vovo);
		
		// DB의 모든 주문내역을 가져오기
		List<Map<String, Object>> result = memberService.selectBuyList();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mem/myOrder/myOrder");
		mv.addObject("buyList", result);
		return mv;
	}

}
