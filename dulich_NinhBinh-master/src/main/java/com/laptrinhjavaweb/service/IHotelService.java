package com.laptrinhjavaweb.service;


import com.laptrinhjavaweb.dto.HotelDTO;
import com.laptrinhjavaweb.dto.PlaceDTO;
import com.laptrinhjavaweb.entity.HotelEntity;
import com.laptrinhjavaweb.entity.PlaceEntity;
import com.laptrinhjavaweb.repository.HotelRepository;
import com.laptrinhjavaweb.service.impl.HotelService;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface IHotelService {
     List<HotelEntity> findAllHotel();

     HotelEntity findHotelById(long id);

     HotelEntity updateHotel(HotelEntity hotel);

     HotelDTO save(HotelDTO hotelDTO);

     List<HotelDTO> findAll(Pageable pageable);

     Integer getTotalItem();

     HotelDTO findbyID(Long id);
}
