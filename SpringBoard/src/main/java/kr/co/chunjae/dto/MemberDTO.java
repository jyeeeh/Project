package kr.co.chunjae.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberDTO {
    private Long   id;              //idx
    private String memberEmail;     //(아이디)이메일
    private String memberPassword;  //비밀번호
    private String memberName;      //이름
    private int    memberAge;       //나이
    private String memberMobile;    //전화번호
}
