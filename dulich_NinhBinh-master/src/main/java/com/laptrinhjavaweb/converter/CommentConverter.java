package com.laptrinhjavaweb.converter;

import com.laptrinhjavaweb.dto.CommentDTO;
import com.laptrinhjavaweb.dto.PlaceDTO;
import com.laptrinhjavaweb.entity.CommentPlaceEntity;
import com.laptrinhjavaweb.entity.PlaceEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.ServletContext;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;


@Component
public class CommentConverter {



    public CommentDTO toDTO(CommentPlaceEntity entity)
    {
        DateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
        CommentDTO newDTO = new CommentDTO();
        newDTO.setContent(entity.getContent());
        newDTO.setId(entity.getId());
        newDTO.setThumbnail(entity.getThumbnail());
        newDTO.setCreateDate(dateFormat.format(entity.getCreatedDate()));
        newDTO.setUserName(entity.getUserEntity().getFullName());
        return newDTO;
    }

    public  CommentPlaceEntity toEntity(CommentDTO dto){

        CommentPlaceEntity result = new CommentPlaceEntity();
        result.setContent(dto.getContent());
        result.setThumbnail(dto.getThumbnail());

        return result;
    }





}
