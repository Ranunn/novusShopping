package novus.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import novus.domain.MemberVO;
import novus.domain.OrderVO;
import novus.domain.PostingVO;
import novus.domain.QnaVO;
import novus.domain.SearchCntVO;
import novus.service.MemberService;
import novus.service.QnaService;


@Controller
public class MemberController {
	@Autowired
	private QnaService qnaServe;
	@Autowired
		private MemberService memberService;

	
	@RequestMapping("mem/member/{url}.nv")
	public String test(@PathVariable String url) {
		return "/mem/member/"+url;
	}
	
	// 회원 로그인

	
	
//	@RequestMapping("mem/member/memLogin.nv")
//	public void memLogin() {
//		System.out.println("mem/member/memLogin.nv 요청");
//	}
//
//	// 회원가입
//	@RequestMapping("mem/member/memSignup.nv")
//	public void memSignup() {
//		System.out.println("mem/member/memSignup.nv 요청");
//	}
//
//	// 아이디 찾기
//	@RequestMapping("mem/member/memIdsearch.nv")
//	public void memIdsearch() {
//		System.out.println("mem/member/memIdsearch.nv 요청");
//	}
//
//	// 비밀번호 찾기
//	@RequestMapping("mem/member/memPassSearch.nv")
//	public void memPassSearch() {
//		System.out.println("mem/member/memPassSearch.nv 요청");
//	}

//	// 마이페이지
//	@RequestMapping("mem/myPage/myPage.nv")
//	public void myPage() {
//		System.out.println("mem/myPage/myPage.nv 요청");
//	}
	
	// 결제완료 누르면 DB에 결제내용 저장 
	@RequestMapping("mem/myOrder/buyItemOrder3.nv")
	public String buyItemOrder(OrderVO vo,SearchCntVO vovo)throws IOException { 
		System.out.println("mem/myOrder/buyItemOrder.nv 요청"+vo.getCount()+vo.getDelivery()+vo.getItemName()+vo.getMemName()+vo.getMemNo()+vo.getOrderDate()+vo.getOrderItemNo()+vo.getOrderNo()+vo.getOrderItemNo()+vo.getPayment()+vo.getPrice());
		memberService.myOrder(vo);
		 memberService.buyCnt(vovo);

		return "redirect:./myOrder.nv";
	}
	
	// 결제페이지 
	@RequestMapping("mem/myOrder/buyItem.nv")
	public void buyItem(OrderVO vo) {
		System.out.println("mem/myOrder/buyItem.nv 요청");
			}



	///////////////////////////////////////////////////////

	

	// FAQ
	@RequestMapping("mem/CsCenter/csFaq.nv")
	public void csFaq() {
		System.out.println("mem/CsCenter/csFaq.nv 요청");
	}

	// 1:1 문의하기
	@RequestMapping("mem/CsCenter/csQna.nv")
	public void csQna() {
		System.out.println("mem/CsCenter/csQna.nv 요청");
		//	return "redirect:/mem/CsCenter/csQna.nv" ;
		//	redirect:/getBoardList.do
	}
	
	
	
	
	

	// 내 문의목록
	@RequestMapping("mem/CsCenter/csQnaList.nv")
	public void csQnaList(QnaVO vo,Model model) {
		System.out.println("mem/CsCenter/csQnaList.nv 요청");
		model.addAttribute("QnaList", qnaServe.getQnaList(vo));
	}
	// 고객센터 메인
		@RequestMapping("mem/CsCenter/csMain.nv")
		public void csMain(QnaVO vo,Model model) {
			System.out.println("mem/CsCenter/csMain.nv 요청");
			model.addAttribute("FaqList", qnaServe.getFaqList(vo));
		}
		
		
		
		
		
		
	// 공지사항
	@RequestMapping("mem/CsCenter/csPosting.nv")
	public void csPosting(PostingVO vo,Model model) {
		System.out.println("mem/CsCenter/csPosting.nv 요청");
		model.addAttribute("PostingList", qnaServe.getPostingList(vo));
	}

	// qna 등록

	@RequestMapping(value = "mem/CsCenter/saveQna.nv")
	public String insertQna(QnaVO vo) throws IOException {
		qnaServe.insertQna(vo);
		return "redirect:./csQnaList.nv";
	}
	// Qna목록에서 제목을 누르면 글 상세페이지 나옴.
		@RequestMapping("mem/CsCenter/csQnaDetail.nv")
		public void csQnaDetail(QnaVO vo,Model model) {
			System.out.println("mem/CsCenter/csQnaDetail.nv 요청" +vo.getQno());
			model.addAttribute("QnaDetail",qnaServe.searchDetail(vo));
		}
	
	//qna 삭제	
	@RequestMapping(value = "mem/CsCenter/deleteQna.nv")
		public String deleteQna(QnaVO vo) throws IOException {
			System.out.println("mem/CsCenter/deleteQna.nv 요청");
			qnaServe.deleteQna(vo);
			return "redirect:./csQnaList.nv";
		}
		
	
	// 회원가입 아이디 중복확인
		@RequestMapping(value="mem/member/idCheck.nv",produces="application/text;charset=utf-8")
		@ResponseBody
		public String idCheck(MemberVO vo) {
			System.out.println("idCheck() : " + vo.getMemId());
		MemberVO result = memberService.idCheck_Login(vo);
			System.out.println(result);
			String message="이미 사용중입니다.";
			if(result==null) {
				message="사용가능한 아이디입니다.";
			}
		
			return message;

		}
		
		// 회원 로그인
		@RequestMapping("mem/member/login.nv")
		public String memLogin(MemberVO vo, HttpSession session) {
		MemberVO result = memberService.idCheck_Login(vo);
		if(result==null || result.getMemId() == null) {
			 return "mem/member/memSignup";
		}else {
			session.setAttribute("name", result.getMemName());
			session.setAttribute("tel", result.getMemTel());
			session.setAttribute("addr", result.getMemAddr());
			session.setAttribute("birth", result.getMemBirth());
			session.setAttribute("email", result.getMemEmail());
			session.setAttribute("grade", result.getMemGrade());
			 return "mem/myPage/myPage";
		}}
		
		// 회원가입
		@RequestMapping(value="mem/member/memInsert.nv")
		public String memInsert(MemberVO vo, Model m)  throws IOException{ 
//			System.out.println("memInsert() : " + vo.getMem_Id() + "/" + vo.getMem_Pass());
			int result = memberService.memInsert(vo);
			String message = vo.getMemName()+" 님 죄송합니다.";
			if(result>0) {
				message= vo.getMemName()+" 님 죄송합니다.";
			}
			m.addAttribute("message",message);
			return "mem/myPage/myPage";
		}
		
		// 아이디 찾기
		@RequestMapping("mem/member/idSearch.nv")
		@ResponseBody
		public String memIdSearch(MemberVO vo) {
			MemberVO result = memberService.memIdSearch(vo);
			String message = "";
			if(result==null || result.getMemName() == null) {
				 message = "맞지않는 회원정보입니다.";
				 return message;
			}else {
				return result.getMemId();
			}
		}

		
		// 비밀번호 찾기
		@RequestMapping("mem/member/passSearch.nv")
		@ResponseBody
		public String memPassSearch(MemberVO vo) {
			MemberVO result = memberService.memPassSearch(vo);
			if(result==null || result.getMemName() == null) {
				String message = "";
				  message = "맞지않는 회원정보입니다.";
				 return message;
			}else {
				return result.getMemPass();
			}
		}
		
		// 마이페이지
		@RequestMapping("mem/myPage/myPage.nv")
		public void myPage(HttpSession session) {
			System.out.println("mem/myPage/myPage.nv 요청");
		}
		
		
	
	
	
	
	
	
	
	
	
}
