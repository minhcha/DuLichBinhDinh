package com.laptrinhjavaweb.converter;

import com.laptrinhjavaweb.dto.NewDTO;
import com.laptrinhjavaweb.entity.NewEntity;
import org.springframework.stereotype.Component;

@Component
public class NewConverter {

    public NewDTO toDTO(NewEntity entity)
    {
        NewDTO newDTO = new NewDTO();
        newDTO.setTitle(entity.getTitle());
        newDTO.setShortDescription(entity.getShortDescription());
        newDTO.setContent(entity.getContent());
        newDTO.setThumbnail(entity.getThumbnail());
        return null;
    }

}
