package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.dto.CommentDTO;
import com.laptrinhjavaweb.dto.PlaceDTO;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface ICommentService {
    List<CommentDTO> findAllCommentPlacebyIdPlace(long idPlace);

    CommentDTO save(CommentDTO dto , long id);

    void delete(long id);
}