package kr.co.chunjae.repository;

import kr.co.chunjae.dto.MemberDTO;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class MemberRepository {

    private final SqlSessionTemplate sql;
    //회원가입
    public int regist(MemberDTO memberDTO) {
        return sql.insert("Member.regist",memberDTO);
    }

    //로그인
    public MemberDTO login(MemberDTO memberDTO) {
        return sql.selectOne("Member.login",memberDTO);
    }

    //회원목록 조회
    public List<MemberDTO> findMemberList() {
        return sql.selectList("Member.findMemberList");
    }

    //멤버 상세 조회
    public MemberDTO findById(Long id) {
        return sql.selectOne("Member.findById",id);
    }

    //삭제하기
    public void delete(Long id) {
        sql.delete("Member.delete",id);
    }
}
