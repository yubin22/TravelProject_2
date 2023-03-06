package controller;

import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import model.LoginDTO;
import service.LoginService;

//Controller를 상속또는 implements를 앋고 POJO방식으로 작성

@Controller
public class LoginController {

	@Resource
	private LoginService loginService;
	
	//login
	@RequestMapping("/loginForm.sp") //실제 존재 안해도 괜찮음. 최초 요청.
	public String writeform(){
		System.out.println("writeform");
		return "loginForm"; // view/writeform.jsp 찾음.
	}//ModelAndView를 리턴하는것과 같음
	
	//로그인 정보 가져옴
	@RequestMapping("/loginAction.sp")
	public String read(LoginDTO dto, HttpSession session, HttpServletResponse resp){ //requset -> session으로 변경
	
		dto = loginService.getLogin(dto);		//글 읽기
		
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		
		if (dto != null) {		//가져옴

			session.setAttribute("login", dto.getId());

			return "redirect:./main.sp";

		} else {		//로그인에 실패했을 경우, alert를 만들어 로그인 페이지로 돌아감

			out.println("<script language='javascript'>");
			out.println("alert('정보가 맞지않습니다. 다시 로그인 해주세요.');");
			out.println("</script>");

			return "redirect:.//loginForm.sp";
		}
	}
	
	//로그아웃
	@RequestMapping("/logoutAction.sp")
	public String logoutAction(LoginDTO dto, HttpSession session){ //requset -> session으로 변경
	
		LoginDTO result = loginService.getLogin(dto); //글 읽기
		System.out.println(result);
		session.setAttribute("login", result);  //모델앤 뷰중에서 모델~
		return "logoutAction"; 
	}
	
	//main페이지
		@RequestMapping("/main.sp") 
		public String main(){
			System.out.println("main");
			return "main"; // view/writeform.jsp 찾음.
		}//ModelAndView를 리턴하는것과 같음
		
	@RequestMapping("/mainAction.sp")
	public String mainAction(LoginDTO dto, HttpSession session){ //requset -> session으로 변경
	
		LoginDTO result = loginService.getLogin(dto); //글 읽기
		System.out.println(result);
		session.setAttribute("login", result);  //모델앤 뷰중에서 모델~
		return "afterLogin"; //main에서 아이디 선택 시 정보 변경, 탈퇴로
	}
	
	//register
	@RequestMapping("/register.sp")
	public String write(){
		System.out.println("register");
		return "register";
	}
	
	@RequestMapping("/registerAction.sp")
	public String register(LoginDTO dto) {
		loginService.insertLogin(dto);
		System.out.println("register = "+ dto);
		return "redirect:/loginForm.sp";
	}
	
	//아이디 중복 체크
	@RequestMapping("/dbCheckId.sp")
	public String dbCheckId(LoginDTO dto, HttpSession session) {
		String id = (String) session.getAttribute("id");
		System.out.println("요청한 아이디 : "+ id);
		int result = loginService.idCheck(id);
		session.setAttribute("result", result);
		return "dbCheckId";
	}
	
	//delete
	@RequestMapping("/deleteForm.sp")
	public String deleteform(){
		return "deleteForm";
	}
	
	@RequestMapping("/deleteAction.sp")
	public String delete(LoginDTO dto){
		int result = loginService.deleteLogin(dto);
		String res = "redirect:/deleteAfter.sp";
		if (result == 0) {
			res = "fail";
		}
		return res;
	}
	
	//탈퇴 완료 메시지 보여줌
	@RequestMapping("/deleteAfter.sp") 
	public String deleteAfter(){
		System.out.println("deleteAfter");
		return "deleteAfter"; 
	}
	
	//update
	@RequestMapping("/update.sp")
	public String update(){
		return "update";
	}
	
	@RequestMapping("/updateForm.sp")
	public String updateform(LoginDTO dto, HttpServletRequest request){
		LoginDTO result = loginService.getLogin(dto); //글 읽기
		System.out.println(result);
		request.setAttribute("login", result);  //모델앤 뷰중에서 모델~
		
		return "updateForm";
	}
	
	@RequestMapping("/updateAction.sp")
	public String updateAct(LoginDTO dto){
		int result = loginService.updateLogin(dto);
		String res = "redirect:/loginForm.sp";
		if (result == 0) {
			res = "fail";
		}
		return res;
	}
	
//	@RequestMapping("/IdCheck.sp")
//	public String idCheck(LoginDTO dto) {
//		int result = loginService.idCheck(dto);
//		if (result != 0) {
//			return "fail"; //중복 아이디 존재
//		}else {
//			return "success"; //중복 아이디 없음
//		}
//	}
	
}



