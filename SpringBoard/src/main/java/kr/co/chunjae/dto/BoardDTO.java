package kr.co.chunjae.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.sql.Timestamp;

@Getter
@Setter
@ToString
public class BoardDTO {
    private Long id;            //board idx
    private String boardWriter; //작성자
    private String boardPass;   //비밀번호
    private String boardTitle;  //제목
    private String boardContents;//내용
    private int boardHits;       //조회수
    private Timestamp boardCreatedTime; //작성일
}
