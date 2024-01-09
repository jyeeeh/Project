package kr.co.chunjae.controller;

import kr.co.chunjae.dto.MemberDTO;
import kr.co.chunjae.service.MemberService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequiredArgsConstructor
@RequestMapping("/member")
public class MemberController {

    private final MemberService memberService;

    //회원가입 - get
    @GetMapping("/regist")
    public String registForm(){
        //regist.jsp 로 이동
        return "regist";
    }

    //회원가입 - post
    @PostMapping("/regist")
    public String regist(@ModelAttribute MemberDTO memberDTO){
        int registResult = memberService.regist(memberDTO);
        //회원가입이 성공하면
        if(registResult>0){
            //로그인화면으로 이동
            return "login";
        }else{
            //실패하면
            //다시 회원가입 화면으로
            return "regist";
        }
    }

    //로그인 - get
    @GetMapping("/login")
    public String loginForm(){
        //login.jsp로 불러오기
        return "login";
    }

    //로그인 - post
    @PostMapping("/login")
    public String login(@ModelAttribute MemberDTO memberDTO, HttpSession session){
        boolean loginResult = memberService.login(memberDTO);
        if(loginResult){
            //session에 있는 loginEmail set
            session.setAttribute("loginEmail",memberDTO.getMemberEmail());
            return "main";
        }else{
            //session에 loginEmail 값 없으면 다시 login으로 이동
            return "login";
        }
    }


}
