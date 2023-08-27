package com.laptrinhjavaweb.service;

import java.util.List;


import com.laptrinhjavaweb.dto.PlaceDTO;
import com.laptrinhjavaweb.entity.PlaceEntity;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;

public interface IPlaceService {
    List<PlaceDTO> findAll(Pageable pageable);

    //tính tổng số trang new được thêm
    Integer getTotalItem();

    PlaceDTO findbyID(Long id);

    PlaceDTO insert(PlaceDTO dto);

    Integer coutLike(long id);

    PlaceDTO update(PlaceDTO dto);

    PlaceDTO save(PlaceDTO dto);

    void like(long id);

    List<PlaceDTO> findNewPlace();

    void UnLike(long id);

    boolean checkLike(long id);

    void deletePlace(long id);

    List<PlaceDTO> findAllPlace();

    // List<PlaceEntity> findTopPlace(Pageable pageable);

    List<PlaceEntity> findTop5PlacesByNumberOfUsers();

    List<PlaceEntity> searchPlace(String keyword);


    List<PlaceEntity> findPlace();
}