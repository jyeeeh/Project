package kr.co.chunjae.service;

import kr.co.chunjae.dto.MemberDTO;
import kr.co.chunjae.repository.MemberRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class MemberService {

    //Controller - Service - Repository
    private final MemberRepository memberRepository;

    //회원가입
    public int regist(MemberDTO memberDTO) {
        return memberRepository.regist(memberDTO);
    }

    //로그인
    public boolean login(MemberDTO memberDTO) {
        MemberDTO loginMember = memberRepository.login(memberDTO);
        if(loginMember != null){
            return true;
        }else{
            return false;
        }
    }
}
