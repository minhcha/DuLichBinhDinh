package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.converter.HotelConverter;
import com.laptrinhjavaweb.dto.HotelDTO;
import com.laptrinhjavaweb.dto.PlaceDTO;
import com.laptrinhjavaweb.entity.HotelEntity;
import com.laptrinhjavaweb.entity.PlaceEntity;
import com.laptrinhjavaweb.repository.HotelRepository;
import com.laptrinhjavaweb.service.IHotelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class HotelService implements IHotelService {

    @Autowired
    private HotelRepository hotelRepository;

    @Autowired
    private HotelConverter hotelConverter;

    @Override
    public List<HotelEntity> findAllHotel() {
        List<HotelEntity> hotels = new ArrayList<>();
        hotels = hotelRepository.findAll();
        return hotels;
    }

    @Override
    public HotelEntity findHotelById(long id) {
        HotelEntity hotel = hotelRepository.findOne(id);
        return hotel;
    }

    @Override
    @Transactional
    public HotelEntity updateHotel(HotelEntity hotel) {
        HotelEntity newHotel = hotelRepository.save(hotel);
        return hotel;
    }


    //sử dụng để gọi api
    @Override
    @Transactional
    public HotelDTO save(HotelDTO hotelDTO) {


        HotelEntity hotelEntity  = new HotelEntity();

        if(hotelDTO.getId()!= null){
            hotelEntity = hotelRepository.findOne(hotelDTO.getId());
            hotelEntity.setName(hotelDTO.getName());
            hotelEntity.setAddress(hotelDTO.getAddress());
            hotelEntity.setNumberOfRoom(hotelDTO.getNumberOfRoom());
            hotelEntity.setPrice(hotelDTO.getPrice());
            hotelEntity.setOrderedRoom(hotelDTO.getOrderedRoom());
            hotelEntity.setThumbnail(hotelDTO.getThumbnail());
            hotelEntity.setThumbnail02(hotelDTO.getThumbnail02());
            hotelEntity.setThumbnail03(hotelDTO.getThumbnail03());
            hotelEntity.setThumbnail04(hotelDTO.getThumbnail04());
            hotelEntity.setThumbnail05(hotelDTO.getThumbnail05());
            hotelEntity.setShortDescription(hotelDTO.getShortDescription());
            hotelEntity.setShortDescription02(hotelDTO.getShortDescription02());
            hotelEntity.setShortDescription03(hotelDTO.getShortDescription03());
            hotelEntity.setShortDescription04(hotelDTO.getShortDescription04());
            hotelEntity = hotelRepository.save(hotelEntity);
            return hotelConverter.toDTO(hotelEntity);
        }
        else {
            hotelEntity.setName(hotelDTO.getName());
            hotelEntity.setAddress(hotelDTO.getAddress());
            hotelEntity.setNumberOfRoom(hotelDTO.getNumberOfRoom());
            hotelEntity.setPrice(hotelDTO.getPrice());
            hotelEntity.setOrderedRoom(hotelDTO.getOrderedRoom());
            hotelEntity.setThumbnail(hotelDTO.getThumbnail());
            hotelEntity.setThumbnail02(hotelDTO.getThumbnail02());
            hotelEntity.setThumbnail03(hotelDTO.getThumbnail03());
            hotelEntity.setThumbnail04(hotelDTO.getThumbnail04());
            hotelEntity.setThumbnail05(hotelDTO.getThumbnail05());
            hotelEntity.setShortDescription(hotelDTO.getShortDescription());
            hotelEntity.setShortDescription02(hotelDTO.getShortDescription02());
            hotelEntity.setShortDescription03(hotelDTO.getShortDescription03());
            hotelEntity.setShortDescription04(hotelDTO.getShortDescription04());

            hotelEntity = hotelRepository.save(hotelEntity);

            return hotelConverter.toDTO(hotelEntity);
        }
    }


    @Override
    public List<HotelDTO> findAll(Pageable pageable) {
        List<HotelDTO> models = new ArrayList<>();
        List<HotelEntity> hotelEntities = hotelRepository.findAll(pageable).getContent();
        for(HotelEntity item : hotelEntities)
        {
            models.add(hotelConverter.toDTO(item));
        }
        return models;
    }


    @Override
    public HotelDTO findbyID(Long id) {

        HotelEntity entity = hotelRepository.findOne(id);
        HotelDTO result = hotelConverter.toDTO(entity);
        return result;
    }

    @Override
    public Integer getTotalItem() {
        return (int) hotelRepository.count();
    }

}
