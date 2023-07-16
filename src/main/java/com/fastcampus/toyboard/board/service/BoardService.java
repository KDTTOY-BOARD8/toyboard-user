package com.fastcampus.toyboard.board.service;

import com.fastcampus.toyboard.board.model.BoardType;
import com.fastcampus.toyboard.board.dto.BoardDto;
import com.fastcampus.toyboard.board.model.Board;
import com.fastcampus.toyboard.board.repository.BoardRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardService {

    private final BoardRepository boardRepository;

    public BoardService(BoardRepository boardRepository) {
        this.boardRepository = boardRepository;
    }

    public void writeBoard(BoardDto boardDto) {
        Board board = new Board();
        board.setTitle(boardDto.getTitle());
        board.setContent(boardDto.getContent());
        board.setNickName(boardDto.getNickName());
        board.setBoardType(boardDto.getBoardType());
        boardRepository.save(board);
    }

    public List<Board> getBoardsByCategory(BoardType boardType) {
        return boardRepository.findByBoardType(boardType);
    }

    public Page<BoardDto> getAllBoardsDesc(Pageable pageable) {
        // id 기준으로 내림차순 정렬하여 모든 게시글 가져오기
        Page<Board> boards = boardRepository.findAll(pageable);

        // Board 객체 페이지를 BoardDto 객체 페이지로 변환
        Page<BoardDto> boardDtos = boards.map(board -> {
            BoardDto boardDto = new BoardDto();
            boardDto.setTitle(board.getTitle());
            boardDto.setContent(board.getContent());
            // TODO: user의 nickName, thumbnail 정보를 가져오고 이를 BoardDto에 설정해야 함
            return boardDto;
        });

        return boardDtos;
    }

}