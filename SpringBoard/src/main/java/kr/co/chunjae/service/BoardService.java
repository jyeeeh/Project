package kr.co.chunjae.service;

import kr.co.chunjae.dto.BoardDTO;
import kr.co.chunjae.repository.BoardRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class BoardService {

    private final BoardRepository boardRepository;

    //글 작성
    public int regist(BoardDTO boardDTO) {
        return boardRepository.regist(boardDTO);
    }

    //게시물 목록
    public List<BoardDTO> findBoardListAll() {
        return boardRepository.findBoardListAll();
    }

    //게시물 id 값으로 게시물찾기
    public BoardDTO findById(Long id) {
        return boardRepository.findById(id);
    }

    //조회수 증가
    public void updateHits(Long id) {
        boardRepository.updateHits(id);
    }

    //삭제하기
    public void delete(Long id) {
        boardRepository.delete(id);
    }

    //수정하기
    public void update(BoardDTO boardDTO) {
        boardRepository.update(boardDTO);
    }
}
