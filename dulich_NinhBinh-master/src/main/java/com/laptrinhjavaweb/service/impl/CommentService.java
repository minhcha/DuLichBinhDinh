package com.laptrinhjavaweb.service.impl;


import com.laptrinhjavaweb.converter.CommentConverter;
import com.laptrinhjavaweb.dto.CommentDTO;
import com.laptrinhjavaweb.entity.CategoryEntity;
import com.laptrinhjavaweb.entity.CommentPlaceEntity;
import com.laptrinhjavaweb.entity.PlaceEntity;
import com.laptrinhjavaweb.entity.UserEntity;
import com.laptrinhjavaweb.repository.CategoryRepository;
import com.laptrinhjavaweb.repository.CommentRepository;
import com.laptrinhjavaweb.repository.PlaceRepository;
import com.laptrinhjavaweb.repository.UserRepository;
import com.laptrinhjavaweb.service.ICategoryService;
import com.laptrinhjavaweb.service.ICommentService;
import com.laptrinhjavaweb.util.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CommentService implements ICommentService {

    @Autowired
    CommentRepository commentRepository;

    @Autowired
    CommentConverter commentConverter;

    @Autowired
    PlaceRepository placeRepository;

    @Autowired
    UserRepository userRepository;



    @Override
    public List<CommentDTO> findAllCommentPlacebyIdPlace(long idPlace) {
        List<CommentPlaceEntity>  commentes = commentRepository.findByPlaceEntity_Id(idPlace);
        List<CommentDTO> commentDTOs = new ArrayList<>();
        for(CommentPlaceEntity item : commentes)
        {
            CommentDTO result = new CommentDTO();
            result = commentConverter.toDTO(item);
            commentDTOs.add(result);
        }

        return commentDTOs;
    }



    @Override
    @Transactional
    public CommentDTO save(CommentDTO dto , long id) {

        UserEntity userEntity = userRepository.findOneByUserNameAndStatus(SecurityUtils.getPrincipal().getUsername(),1);
        PlaceEntity placeEntitye = placeRepository.findOne(id);
        CommentPlaceEntity newComment = commentConverter.toEntity(dto);
        newComment.setUserEntity(userEntity);
        newComment.setPlaceEntity(placeEntitye);
        newComment = commentRepository.save(newComment);
        return commentConverter.toDTO(newComment);
    }

    @Override
    public void delete(long id) {
        CommentPlaceEntity commentPlaceEntity = commentRepository.findOne(id);
        commentRepository.delete(commentPlaceEntity);
    }
}
