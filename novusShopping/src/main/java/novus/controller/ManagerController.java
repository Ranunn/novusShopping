package novus.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import novus.domain.DeliveryVO;
import novus.domain.ItemVO;
import novus.domain.MemberVO;
import novus.domain.MgrVO;
import novus.domain.OrderVO;
import novus.domain.QnaVO;
import novus.domain.ReviewVO;
import novus.service.DeliveryService;
import novus.service.ItemService;
import novus.service.MemberServiceImpl;
import novus.service.MgrServiceImpl;
import novus.service.OrderService;
import novus.service.QnaService;
import novus.service.ReviewService;

@Controller
public class ManagerController {
	@Autowired
	private QnaService qnaServe;
	@Autowired
	private ReviewService reviewServe;
	// 관리자 로그인
	@Autowired
	private MemberServiceImpl memberService;
	@Autowired
	private MgrServiceImpl mgrService;
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private DeliveryService deliveryService;
	
	@Autowired
	private ItemService itemService;
	
	@RequestMapping("mem/manager/{url}.nv")
	public String test(@PathVariable String url) {
		return "/mem/manager/"+url;
	}
	
	
	@RequestMapping("Mgr/manager/mgrLogin.nv")
	public void mgrLogin() {
		System.out.println("Mgr/manager/mgrLogin.nv 요청됨");
	}
	
	// 관리자 회원가입
	@RequestMapping("Mgr/manager/mgrSign.nv")
	public void mgrSign() {
		System.out.println("Mgr/manager/mgrSign.nv 요청됨");
	}
	
	// 관리자 아이디 찾기
	@RequestMapping("Mgr/manager/mgrIdSearch.nv")
	public void mgrIdSearch() {
		System.out.println("Mgr/manager/mgrIdSearch.nv 요청됨");
	}
	
	// 관리자 비밀번호 찾기
	@RequestMapping("Mgr/manager/mgrPassSearch.nv")
	public void mgrPassSearch() {
		System.out.println("Mgr/manager/mgrPassSearch.nv 요청됨");
	}
	
	/////////////////////////////////////////////////////////
	// 관리자 상품 관리 리스트
		@RequestMapping("Mgr/ItemMgr/itemMgr.nv")
		public void getItemList(ItemVO vo, Model model) {
			model.addAttribute("itemList", itemService.getItemList(vo));
			System.out.println("Mgr/ItemMgr/itemMgr.nv 요청됨");
		}	
	// 관리자 상품 추가
	@RequestMapping("Mgr/ItemMgr/itemMgrInsert.nv")
	public void itemMgrInsert() {
		System.out.println("Mgr/ItemMgr/itemMgrInsert.nv 요청됨");
	}
	// 관리자 상품 추가2
		@RequestMapping("Mgr/ItemMgr/itemMgrInsertData.nv" )
		public String itemInsert(ItemVO vo) throws IOException {
			itemService.itemInsert(vo);
			return "redirect:/Mgr/ItemMgr/itemMgr.nv";	// 상품 추가하기 버튼 누르면 다시 상품 리스트 페이지로 이동
		}
	
		// 관리자 상품 삭제
		@RequestMapping("Mgr/ItemMgr/itemMgrDelete.nv")
		public void itemDelete(ItemVO vo) {
			itemService.itemDelete(vo);		// 수정하기 페이지에서 삭제버튼 누르면 그 글 삭제됨
			System.out.println("Mgr/ItemMgr/itemDelete.nv 요청됨");
		}
	// 수정할 아이템 불러오기
		@RequestMapping("Mgr/ItemMgr/itemModify.nv")
		public String itemModify(ItemVO vo) throws IOException { 
			System.out.println("Mgr/ItemMgr/itemModifyList.nv 요청됨");
			itemService.itemModify(vo);
			return "redirect:/Mgr/ItemMgr/itemMgr.nv";	// 수정하기 버튼 누르면 다시 상품 리스트 페이지로 이동
		}
		// 관리자 상품 수정 페이지
		@RequestMapping("Mgr/ItemMgr/itemMgrModifyList.nv")
		public void itemModifyList(ItemVO vo, Model model) {
			System.out.println("Mgr/ItemMgr/itemModify.nv 요청됨");
			itemService.itemModifyList(vo);		// itemModifyList여야 값을 가져옴
			model.addAttribute("item", itemService.itemModifyList(vo));
		}
	// 관리자 상품 수정
	@RequestMapping("Mgr/ItemMgr/itemMgrModify.nv")
	public void itemMgrModify() {
		System.out.println("Mgr/ItemMgr/itemMgrModify.nv 요청됨");
	}
	
	// 관리자 상품 검색
		@RequestMapping("Mgr/ItemMgr/itemMgrSearch.nv")
		public void itemSearch(ItemVO vo) {
			itemService.itemSearch(vo);
			System.out.println("Mgr/ItemMgr/itemSearch.nv 요청됨");
		}
		/*@RequestMapping("Mgr/ItemMgr/itemMgrSearch.nv")
		public ModelAndView itemSearch(String searchText, ItemVO vo) {
			List<ItemVO> result = itemService.itemSearch(vo, searchText);
			ModelAndView mv = new ModelAndView();
	        mv.addObject("searchtext", searchText);
	        mv.addObject("itemSearch", result);
	        System.out.println("Mgr/ItemMgr/itemSearch.nv 요청됨");
	        return mv;
		}*/
		// 고객 상품 검색 
		@RequestMapping("item/ItemList/search.nv")
		public void searchResult(String search, Model model) {
			System.out.println("item/ItemList/search.nv 요청");
			model.addAttribute("searchResult", itemService.searchResult(search));
		}
	///////////////////////////////////////////////////////////
		// 관리자 주문 관리
		@RequestMapping("Mgr/OrderMgr/orderMgr.nv")
		public void getOrderList(OrderVO vo, Model model) {
			model.addAttribute("orderList", orderService.getOrderList(vo));
			System.out.println("Mgr/OrderMgr/orderMgr.nv 요청됨");
		}
		// 관리자 배송 관리
		@RequestMapping("Mgr/OrderMgr/deliveryMgr.nv")
		public void getDeliveryList(DeliveryVO vo, Model model) {
			model.addAttribute("deliveryList", deliveryService.getDeliveryList(vo));
			System.out.println("Mgr/OrderMgr/deliveryMgr.nv 요청됨");
		}
	
	
	
	///////////////////////////////////////////////////////////
	// 관리자 리뷰게시판 
	@RequestMapping("Mgr/mgrReviewAndQna/mgrReview.nv")
	public void mgrReview(ReviewVO vo, Model model) {
		System.out.println("Mgr/mgrReviewAndQna/mgrReview.nv 요청됨");
		model.addAttribute("mgrReviewList",reviewServe.getReviewList(vo));
	}
	@RequestMapping("Mgr/mgrReviewAndQna/mgrReviewGrade.nv")
	public void mgrReviewGrade(ReviewVO vo, Model model) {
		System.out.println("Mgr/mgrReviewAndQna/mgrReview.nv 요청됨");
		model.addAttribute("mgrReviewList",reviewServe.getReviewListGrade(vo));
	}
	@RequestMapping("Mgr/mgrReviewAndQna/mgrReviewListGradeAsc.nv")
	public void getReviewListGradeAsc(ReviewVO vo, Model model) {
		System.out.println("Mgr/mgrReviewAndQna/getReviewListGradeAsc.nv 요청됨");
		model.addAttribute("mgrReviewList",reviewServe.getReviewListGradeAsc(vo));
	}
	
	
	
	@RequestMapping("Mgr/mgrReviewAndQna/mgrReviewView_count.nv")
	public void mgrReviewView_count(ReviewVO vo, Model model) {
		System.out.println("Mgr/mgrReviewAndQna/mgrReview.nv 요청됨");
		model.addAttribute("mgrReviewListView_count",reviewServe.getReviewListView_count(vo));
	}
	
	// 관리자 리뷰 상세 확인
	@RequestMapping("Mgr/mgrReviewAndQna/mgrReviewDetail.nv")
	public void mgrReviewDetail(ReviewVO vo, Model model) { 	
		System.out.println("Mgr/mgrReviewAndQna/mgrReviewDetail.nv 요청됨");
		model.addAttribute("mgrReview",reviewServe.searchDetailReview(vo));
	}

	@RequestMapping("Mgr/mgrReviewAndQna/mgrQnaListByCate.nv")
	public void test2(QnaVO vo,Model model) {
		model.addAttribute("mgrQnaListByCate",qnaServe.getQnaByCate(vo));
		
	}
	
	// 관리자 1:1게시판 관리
	@RequestMapping("Mgr/mgrReviewAndQna/mgrQna.nv")
	public void mgrQna(QnaVO vo,Model model) {
		System.out.println("Mgr/mgrReviewAndQna/mgrQna.nv 요청됨");
		model.addAttribute("mgrQnaList",qnaServe.getQnaList(vo));
	}
	
	// 관리자 1:1 상세 확인
	@RequestMapping("Mgr/mgrReviewAndQna/mgrQnaDetail.nv")
	public void mgrQnaDetail(QnaVO vo,Model model) {
		System.out.println("Mgr/mgrReviewAndQna/mgrQnaDetail.nv 요청됨");
		model.addAttribute("mgrQna",qnaServe.searchDetail(vo));
	}
	//관리자 1:1 Qna 답변 저장
	@RequestMapping("Mgr/mgrReviewAndQna/saveQnaAnswer.nv")
	public String saveQnaAnswer(QnaVO vo,Model model) {
		System.out.println("Mgr/mgrReviewAndQna/mgrQnaDetail.nv 요청됨");
		qnaServe.saveQnaAnswer(vo);
		return "redirect:./mgrQna.nv";
	}
	//관리자 리뷰 저장?
	@RequestMapping("Mgr/mgrReviewAndQna/mgrReviewAnswer.nv")
	public String mgrReviewAnswer(ReviewVO vo,Model model) {
		System.out.println("Mgr/mgrReviewAndQna/mgrReviewAnswer.nv 요청됨");
		reviewServe.mgrReviewAnswer(vo);
		return "redirect:./mgrReview.nv";
	
	}
	///////////////////////////////////////////////////////////
	// 관리자 인기 상품 조회
	

	


	

	
	
	
	@RequestMapping("Mgr/mgrReviewAndQna/image.nv")
	public void imageTest() {
		System.out.println("Mgr/Person/memTable.nv 요청됨");
	}
//승옥누나승옥누나승옥누나승옥누나승옥누나승옥누나승옥누나승옥누나승옥누나승옥누나승옥누나승옥누나승옥누나승옥누나승옥누나승옥누나
///////////////////////////////////////////////////////////
// 관리자 인기 상품 조회
///////////////////////////////////////////////////////////

	// 관리자 조회수 조회
	@RequestMapping("Mgr/SearchFavorite/viewCntTable.nv")
	public ModelAndView viewCnt() {
		System.out.println("Mgr/SearchFavorite/viewCntTable.nv 요청됨");
		// DB의 상품번호에 따른 cnt 수 모두 가져오기
		List<Map<String, Object>> result = mgrService.viewCntList();
		
		// 가져온 값을 담아서 뷰 페이지로 전달
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Mgr/SearchFavorite/viewCntTable");
		mv.addObject("cnt", result);
		return mv;
	}
	
	// 관리자 구매수 조회
	@RequestMapping("Mgr/SearchFavorite/buyCntTable.nv")
	public ModelAndView buyCnt() {
		System.out.println("Mgr/SearchFavorite/buyCntTable.nv 요청");
		// DB의 상품번호에 따른 cnt 수 모두 가져오기
		List<Map<String, Object>> result = mgrService.buyCntList();
		
		// 가져온 값을 담아서 뷰 페이지로 전달
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Mgr/SearchFavorite/buyCntTable");
		mv.addObject("cnt", result);
		return mv;
	}
	
	// 관리자 리뷰수 조회
	@RequestMapping("Mgr/SearchFavorite/reviewCntTable.nv")
	public ModelAndView reviewCntTable() {
		System.out.println("Mgr/SearchFavorite/reviewCntTable.nv 요청됨");
		// DB의 상품번호에 따른 cnt 수 모두 가져오기
		List<Map<String, Object>> result = mgrService.reviewCntList();
		
		// 가져온 값을 담아서 뷰 페이지로 전달
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Mgr/SearchFavorite/reviewCntTable");
		mv.addObject("cnt", result);
		return mv;
	}
	
	// 관리자 반품수 조회
	@RequestMapping("Mgr/SearchFavorite/refundCntTable.nv")
	public ModelAndView refundCntTable() {
		System.out.println("Mgr/SearchFavorite/refundCntTable.nv 요청됨");
		// DB의 상품번호에 따른 cnt 수 모두 가져오기
		List<Map<String, Object>> result = mgrService.refundCntList();
		
		// 가져온 값을 담아서 뷰 페이지로 전달
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Mgr/SearchFavorite/refundCntTable");
		mv.addObject("cnt", result);
		return mv;
	}
	
	// 관리자 교환수 조회
	@RequestMapping("Mgr/SearchFavorite/exchangeCntTable.nv")
	public ModelAndView exchangeCntTable() {
		System.out.println("Mgr/SearchFavorite/exchangeCntTable.nv 요청됨");
		// DB의 상품번호에 따른 cnt 수 모두 가져오기
		List<Map<String, Object>> result = mgrService.exchangeCntList();
		
		// 가져온 값을 담아서 뷰 페이지로 전달
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Mgr/SearchFavorite/exchangeCntTable");
		mv.addObject("cnt", result);
		return mv;
	}

	
	///////////////////////////////////////////////////////////
	// 관리자 일매출 조회
	@RequestMapping("Mgr/Statistics/daySell.nv")
	public ModelAndView daySell() {
		System.out.println("Mgr/Statistics/daySell.nv 요청됨");
		// 값을 가져오고 뷰 페이지로 전달
		List<Map<String, Object>> result = mgrService.daySell();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Mgr/Statistics/daySell");
		mv.addObject("daySell", result);
		return mv;
	}
	
	// 관리자 월매출 조회
	@RequestMapping("Mgr/Statistics/monthSell.nv")
	public ModelAndView monthSell() {
		System.out.println("Mgr/Statistics/monthSell.nv 요청됨");
		// 값을 가져오고 뷰 페이지로 전달
		List<Map<String, Object>> result = mgrService.monthSell();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Mgr/Statistics/monthSell");
		mv.addObject("monthSell", result);
		return mv;		
	}
	
	// 관리자 연매출 조회
	@RequestMapping("Mgr/Statistics/yearSell.nv")
	public ModelAndView yearSell() {
		System.out.println("Mgr/Statistics/yearSell.nv 요청됨");
		// 값을 가져오고 뷰 페이지로 전달
		List<Map<String, Object>> result = mgrService.yearSell();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Mgr/Statistics/yearSell");
		mv.addObject("yearSell", result);
		return mv;		
	}

		
	///////////////////////////////////////////////////////////
	// 관리자 재직자 조회 페이지
	@RequestMapping("Mgr/Person/empTable.nv")
	public ModelAndView empTable() { 
		System.out.println("Mgr/Person/empTable.nv 요청됨"); 
		List<MgrVO> result = mgrService.selectEmpList(); 
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Mgr/Person/empTable");
		mv.addObject("empList", result);
		return mv;
	}
	
	// 관리자 직원정보 수정 페이지
	@RequestMapping("Mgr/Person/empModify.nv")
	// 사번을 파라미터로 받아 MgrVO에 담는다.
	public ModelAndView empModify(MgrVO vo) {
		System.out.println("Mgr/Person/empModify.nv 요청됨");
		// 파라미터로 해당 사원의 정보를 받아 result에 담는다.
		MgrVO result = mgrService.selectEmp(vo);
		// SQL 결과를 mv에 담고 다음 화면을 지정한다. 
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Mgr/Person/empModify");
		mv.addObject("mgr", result);
		return mv;
	}
	
	// 관리자 직원정보 수정 DB 반영
	@RequestMapping("Mgr/Person/empSave.nv")
	public ModelAndView empSave(MgrVO vo) {
		System.out.println("Mgr/Person/empSave.nv 요청");
		mgrService.updateEmp(vo);
		int id  = vo.getMgrNo();
		System.out.println("id : " + id);
		// SQL 결과를 mv에 담고 다음 화면을 지정한다. 
		List<MgrVO> reuslt = mgrService.selectEmpList();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Mgr/Person/empTable");
		mv.addObject("empList", reuslt);
		return mv;
	}
	
	
	
	// 관리자 퇴사자 조회 페이지
	@RequestMapping("Mgr/Person/exEmpTable.nv")
	public ModelAndView exEmpTable() {
		System.out.println("Mgr/Person/exEmpTable.nv 요청됨");
		List<MgrVO> result = mgrService.selectExEmpList(); 
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Mgr/Person/exEmpTable");
		mv.addObject("exEmpList", result);
		return mv;
	}
	
	// 관리자 퇴사자 정보 수정
	@RequestMapping("Mgr/Person/exEmpModify.nv")
	// 사번을 파라미터로 받아 MgrVO에 담는다.
	public ModelAndView exEmpModify(MgrVO vo) {
		System.out.println("Mgr/Person/EmpModify.nv 요청됨");
		// 파라미터로 해당 사원의 정보를 받아 result에 담는다.
		MgrVO result = mgrService.selectEmp(vo);
		// SQL 결과를 mv에 담고 다음 화면을 지정한다. 
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Mgr/Person/exEmpModify");
		mv.addObject("mgr", result);
		return mv;
	}
	
	// 관리자 퇴사자정보 수정 DB 반영
	@RequestMapping("Mgr/Person/exEmpSave.nv")
	public ModelAndView exEmpSave(MgrVO vo) {
		System.out.println("Mgr/Person/exEmpSave.nv 요청");
		mgrService.updateEmp(vo);
		String id  = vo.getMgrId();
		System.out.println(id);
		// SQL 결과를 mv에 담고 다음 화면을 지정한다. 
		List<MgrVO> reuslt = mgrService.selectExEmpList();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Mgr/Person/exEmpTable");
		mv.addObject("exEmpList", reuslt);
		return mv;
	}
	
	
	
	// 관리자 회원관리 페이지
	// memberService의 selectMember()를 호출하고, 
	// 그 결과를 memberList라는 이름으로 map에 담아 리턴한다. 
	@RequestMapping("Mgr/Person/memTable.nv")
	public ModelAndView memTable() {
		System.out.println("Mgr/Person/memTable.nv 요청됨");
		List<MemberVO> result = memberService.selectMemberList(); 
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Mgr/Person/memTable");
		mv.addObject("memberList", result);
		return mv;
	}

	// 관리자 회원정보 수정 페이지
	@RequestMapping("Mgr/Person/memModify.nv")
	// 회원번호를 파라미터로 받아 MemberVO에 담는다. 
	public ModelAndView memModify(MemberVO vo) {
		System.out.println("Mgr/Person/memModify.nv 요청됨");
		// vo를 인자로 하여 select문을 수행하기 위해 Service의 함수를 호출한다.
		// 그 결과를 HashMap 타입의 List에 담는다. 
		MemberVO result = memberService.selectMember(vo);
		// SQL 결과를 mv에 담고 다음 화면을 지정한다. 
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Mgr/Person/memModify");
		mv.addObject("member", result);
		return mv;
	}
	
	// 관리자 회원정보 수정 DB 반영
	@RequestMapping("Mgr/Person/memSave.nv")
	public ModelAndView memSave(MemberVO vo) {
		System.out.println("Mgr/Person/memSave.nv 요청");
		memberService.updateMember(vo);
		// SQL 결과를 mv에 담고 다음 화면을 지정한다. 
		List<MemberVO> result = memberService.selectMemberList(); 
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Mgr/Person/memTable");
		mv.addObject("memberList", result);
		return mv;
	}
	
	// 관리자 회원등급 수정 DB 반영
	@RequestMapping("Mgr/Person/gradeSave.nv")
	public ModelAndView gradeSave(MemberVO vo) {
		System.out.println("Mgr/Person/gradeSave.nv 요청");
		System.out.println(vo.getMemVIP());
		System.out.println(vo.getMemVVIP());
		// 적용 버튼이 눌릴 때 입력값에 따라 DB의 회원등급을 변경
//		memberService.updateGrade(vo);
		List<MemberVO> result = memberService.selectMemberList(); 
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Mgr/Person/memTable");
		mv.addObject("memberList", result);
		return mv;
	}
	
	
		
		
		
//수광수광수광수광수광수광수광수광수광수광수광수광수광수광수광수광수광수광수광수광수광수광수광수광수광수광		
//수광수광수광수광수광수광수광수광수광수광수광수광수광수광수광수광수광수광수광수광수광수광수광수광수광수광	
		
		// 회원가입 아이디 중복확인
		@RequestMapping(value="Mgr/manager/idCheck.nv",produces="application/text;charset=utf-8")
		@ResponseBody
		public String idCheck(MgrVO vo) {
			System.out.println("idCheck() : " + vo.getMgrId());
		 MgrVO result = mgrService.idCheck_Login(vo);
			System.out.println(result);
			String message="이미 사용중입니다.";
			if(result==null) {
				message="사용가능한 아이디입니다.";
			}
		
			return message;

		}
	
		// 관리자 로그인
		@RequestMapping("Mgr/manager/loginMgr.nv")
		public String mgrLogin(MgrVO vo, HttpSession session) {
			MgrVO result = mgrService.idCheck_Login(vo);
			if(result==null || result.getMgrId()==null) {
				 return "redirect:/Mgr/manager/mgrSignup.nv";
			}else {
				session.setAttribute("no", result.getMgrNo());
				session.setAttribute("name", result.getMgrName());
				session.setAttribute("email", result.getMgrEmail());
				session.setAttribute("job", result.getMgrJob());
				session.setAttribute("dept", result.getMgrDept());
				session.setAttribute("hire", result.getMgrHire());
				
				 return "Mgr/manager/mgrPage";
			}}
		
		// 관리자 회원가입
		@RequestMapping("Mgr/manager/mgrInsert.nv")
		public String mgrSignup(MgrVO vo, Model m) {
			System.out.println("mgrSignup() : " + vo.getMgrId() + "/" + vo.getMgrPass());
			int result = mgrService.mgrInsert(vo);
			String message = vo.getMgrName()+" 님 죄송합니다.";
			if(result>0) {
				message= vo.getMgrName()+" 님 죄송합니다.";
			}else
			m.addAttribute("message",message);
			return "Mgr/manager/mgrLogin";
		}
		
		// 관리자 아이디 찾기
		@RequestMapping("Mgr/manager/idSearch.nv")
		@ResponseBody
		public String mgrIdSearch(MgrVO vo) {
			MgrVO result = mgrService.mgrIdSearch(vo);
			String message = "";
			if(result==null || result.getMgrName() == null) {
				 message = "맞지않는 회원정보입니다.";
				 return message;
			}else { 
				return result.getMgrId();
			}
			}

			
		
		// 관리자 비밀번호 찾기
		@RequestMapping("Mgr/manager/passSearch.nv")
		@ResponseBody
		public String mgrPassSearch(MgrVO vo) {
			MgrVO result = mgrService.mgrPassSearch(vo);
			if(result==null || result.getMgrName() == null) {
				String message = "";
				message = "There is no data correspoding with ";
			    return message;
			}else {
				
				return result.getMgrPass();
			}
			}
		// 마이페이지
			@RequestMapping("Mgr/manager/mgrPage.nv")
			public void myPage(HttpSession session) {
				System.out.println("Mgr/manager/mgrPage.nv 요청");
			}
		

}
