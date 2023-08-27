package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.CommentPlaceEntity;
import com.laptrinhjavaweb.entity.PlaceEntity;
import org.springframework.data.jpa.repository.JpaRepository;


import java.util.List;

public interface CommentRepository extends JpaRepository<CommentPlaceEntity , Long> {
    List<CommentPlaceEntity> findByPlaceEntity_Id(long id);
}
