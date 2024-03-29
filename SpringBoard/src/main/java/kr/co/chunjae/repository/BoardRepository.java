package kr.co.chunjae.repository;

import kr.co.chunjae.dto.BoardDTO;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class BoardRepository {

    private final SqlSessionTemplate sql;

    //글 작성
    public int regist(BoardDTO boardDTO) {
        return sql.insert("Board.regist",boardDTO);
    }

    //게시물 목록
    public List<BoardDTO> findBoardListAll() {
        return sql.selectList("Board.findBoardListAll");
    }

    //게시물 id 값으로 게시물찾기
    public BoardDTO findById(Long id) {
        return sql.selectOne("Board.findById",id);
    }

    //조회수 증가
    public void updateHits(Long id) {
        sql.update("Board.updateHits",id);
    }

    //삭제하기
    public void delete(Long id) {
        sql.delete("Board.delete",id);
    }

    //수정하기
    public void update(BoardDTO boardDTO) {
        sql.update("Board.update",boardDTO);
    }
}
