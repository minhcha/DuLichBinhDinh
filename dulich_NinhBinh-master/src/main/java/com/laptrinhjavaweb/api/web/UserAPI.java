package com.laptrinhjavaweb.api.web;


import com.laptrinhjavaweb.dto.UserDTO;

import com.laptrinhjavaweb.service.impl.CustomUserDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.method.P;
import org.springframework.web.bind.annotation.*;

@RestController
public class UserAPI {


    @Autowired
    CustomUserDetailsService customUserDetailsService;

    @PostMapping("/api/web/user")
    public UserDTO addUser(@RequestBody UserDTO userDTO)
    {

        return  customUserDetailsService.save(userDTO);
    }
    //cập nhập new
    @PutMapping("/api/web/user")
    public UserDTO updateUser(@RequestBody UserDTO userDTO)
    {
        return customUserDetailsService.save(userDTO);
    }

    @DeleteMapping("/api/web/user")
    public void deleteUser(@RequestBody long[] ids)
    {
        for(long id : ids)
        {
            customUserDetailsService.delete(id);
        }
    }

}
