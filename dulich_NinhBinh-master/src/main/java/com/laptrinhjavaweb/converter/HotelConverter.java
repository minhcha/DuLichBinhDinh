package com.laptrinhjavaweb.converter;

import com.laptrinhjavaweb.dto.HotelDTO;
import com.laptrinhjavaweb.dto.PlaceDTO;
import com.laptrinhjavaweb.entity.HotelEntity;
import com.laptrinhjavaweb.entity.PlaceEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.ServletContext;


@Component
public class HotelConverter {

    @Autowired
    ServletContext application;

    public HotelDTO toDTO(HotelEntity entity)
    {
        HotelDTO newDTO = new HotelDTO();
        newDTO.setId(entity.getId());
        newDTO.setAddress(entity.getAddress());
        newDTO.setName(entity.getName());
        newDTO.setShortDescription(entity.getShortDescription());
        newDTO.setPrice(entity.getPrice());
        newDTO.setOrderedRoom(entity.getOrderedRoom());
        newDTO.setNumberOfRoom(entity.getNumberOfRoom());
        newDTO.setThumbnail(entity.getThumbnail());
        newDTO.setThumbnail02(entity.getThumbnail02());
        newDTO.setThumbnail03(entity.getThumbnail03());
        newDTO.setThumbnail04(entity.getThumbnail04());
        newDTO.setThumbnail05(entity.getThumbnail05());
        newDTO.setShortDescription02(entity.getShortDescription02());
        newDTO.setShortDescription02(entity.getShortDescription03());
        newDTO.setShortDescription04(entity.getShortDescription04());
        return newDTO;
    }


    public  PlaceEntity toEntity(PlaceEntity result,PlaceDTO dto){



        result.setTitle(dto.getTitle());
        result.setShortDescription(dto.getShortDescription());
        result.setContent(dto.getContent());
        result.setThumbnail(dto.getThumbnail());
        result.setVideo(dto.getVideo());


        return result;
    }


}
