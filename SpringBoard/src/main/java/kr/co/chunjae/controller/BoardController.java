package kr.co.chunjae.controller;

import kr.co.chunjae.dto.BoardDTO;
import kr.co.chunjae.service.BoardService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("/board")
public class BoardController {

    private final BoardService boardService;
    //글 작성
    @GetMapping("/regist")
    public String registForm(){
        return "board/regist";
    }

    //글 작성 - post
    @PostMapping("/regist")
    public String regist(@ModelAttribute BoardDTO boardDTO){
        int registResult = boardService.regist(boardDTO);
        if(registResult>0){
            //글 작성 성공
            return "redirect:/board";
        }else{
            //실패 시
            return "regist";
        }
    }
}
