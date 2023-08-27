package com.laptrinhjavaweb.converter;

import com.laptrinhjavaweb.dto.UserDTO;
import com.laptrinhjavaweb.entity.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

@Component
public class UserConverter {



    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    public UserDTO toDTO(UserEntity entity)
    {
        UserDTO userDTO = new UserDTO();
        userDTO.setId(entity.getId());
        userDTO.setUserName(entity.getUserName());
        userDTO.setPassword(entity.getPassword());
        userDTO.setFullName(entity.getFullName());
        userDTO.setStatus(entity.getStatus());
        userDTO.setAvatar(entity.getAvatar());
        return userDTO;
    }

    public  UserEntity toEntity(UserDTO dto){

        String passwodEncode = bCryptPasswordEncoder.encode(dto.getPassword());
        UserEntity result = new UserEntity();
        result.setFullName(dto.getFullName());
        result.setPassword(passwodEncode);
        result.setStatus(1);
        result.setUserName(dto.getUserName());
        result.setAvatar("avatar.jpg");
        return result;
    }


    public  UserEntity toEntity(UserEntity result,UserDTO dto){

        result.setFullName(dto.getFullName());
        result.setPassword(dto.getPassword());
        result.setStatus(1);
        result.setUserName(dto.getUserName());
        result.setAvatar("avatar.jpg");
        return result;
    }

    public  UserEntity toEntityHasAvatar(UserEntity result,UserDTO dto){

        result.setFullName(dto.getFullName());
        result.setUserName(dto.getUserName());
        return result;
    }

}
