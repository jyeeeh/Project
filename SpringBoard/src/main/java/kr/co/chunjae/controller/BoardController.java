package kr.co.chunjae.controller;

import kr.co.chunjae.dto.BoardDTO;
import kr.co.chunjae.service.BoardService;
import lombok.RequiredArgsConstructor;
import lombok.extern.java.Log;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

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
            return "redirect:/board/";
        }else{
            //실패 시
            return "board/regist";
        }
    }

    //게시물 목록
    @GetMapping("/")
    public String findBoardListAll(Model model){
        List<BoardDTO> boardDTOList = boardService.findBoardListAll();
        model.addAttribute("boardList",boardDTOList);
        return "board/list";
    }

    //게시물 id 값으로 게시물찾기
    @GetMapping
    public String findById(@RequestParam("id") Long id, Model model){
        BoardDTO boardDTO = boardService.findById(id);
        model.addAttribute("board",boardDTO);
        return "board/detail";
    }



}
