package com.laptrinhjavaweb.controller.web;


import com.laptrinhjavaweb.converter.UserConverter;
import com.laptrinhjavaweb.dto.CommentDTO;
import com.laptrinhjavaweb.dto.MyUser;
import com.laptrinhjavaweb.dto.PlaceDTO;
import com.laptrinhjavaweb.dto.UserDTO;
import com.laptrinhjavaweb.entity.CommentPlaceEntity;
import com.laptrinhjavaweb.entity.PlaceEntity;
import com.laptrinhjavaweb.entity.UserEntity;
import com.laptrinhjavaweb.repository.UserRepository;
import com.laptrinhjavaweb.service.IUserService;
import com.laptrinhjavaweb.util.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.awt.*;
import java.io.File;
import java.util.List;

@Controller(value = "UserControllerOfWeb")
public class UserController {

    @Autowired
    UserRepository userRepository;



    @Autowired
    UserConverter userConverter;

    @Autowired
    IUserService userService;

    @RequestMapping(value = "/user_profile", method = RequestMethod.GET)
    public ModelAndView homePage() {
        UserEntity userEntity = userRepository.findOneByUserNameAndStatus(SecurityUtils.getPrincipal().getUsername(),1);
        int coutLike = userService.coutPlaceLike(SecurityUtils.getPrincipal().getUsername());
        int coutComment = userService.coutComment(SecurityUtils.getPrincipal().getUsername());
        UserDTO result = userConverter.toDTO(userEntity);

        List<CommentPlaceEntity> comments = userEntity.getCommentPlaceEntities();

        List<PlaceEntity> placeEntities = userEntity.getPlaces();

        ModelAndView mav = new ModelAndView("web/user_profile");
        mav.addObject("model" , result);
        mav.addObject("coutLike",coutLike);
        mav.addObject("coutComment",coutComment);
        mav.addObject("comments",comments);
        mav.addObject("placesLike",placeEntities);
        return mav;
    }

    @RequestMapping(value = "/edit_user", method = RequestMethod.GET)
    public ModelAndView editPage() {

        UserDTO userDTO = new UserDTO();
        ModelAndView mav = new ModelAndView("web/edit_user");
        mav.addObject("model" , userDTO);
        return mav;
    }

    @RequestMapping(value = "/nguoi-dung/save-place", method = RequestMethod.GET)
    public ModelAndView savePlace() {


        ModelAndView mav = new ModelAndView("web/list_place");
        return mav;
    }

    @RequestMapping(value = "/edit_user", method = RequestMethod.POST)
    public ModelAndView editUser(@RequestParam(value = "files" , required = false) MultipartFile multipartFile ,
                           @ModelAttribute("model2") UserDTO userDTO ,
                           HttpServletRequest request , ModelMap model) {

        ModelAndView mav = new ModelAndView("redirect:/user_profile");
        if (multipartFile != null) {
            try {

                String fileName = multipartFile.getOriginalFilename();
                File file = new File("D:/Year 4/HK1/TLCN/spring-mvc-spring-security/src/main/webapp/template/web/assets/images", fileName);
                multipartFile.transferTo(file);
                UserDTO result = userService.changeAvatar(fileName);

            } catch (Exception e) {
                e.printStackTrace();
                model.addAttribute("message", "upload failed");
            }
        }
        if (userDTO.getFullName() != null) {

            UserDTO result = userService.saveUserByUser(userDTO);

        }
        return mav;
    }

    @RequestMapping(value = "/user_demo", method = RequestMethod.GET)
    public ModelAndView editUser() {

        System.out.println("user: " + SecurityUtils.getPrincipal().getUsername());
        ModelAndView mav = new ModelAndView("web/home");
        return mav;
    }

    @RequestMapping(value = "/edit_profile", method = RequestMethod.GET)
    public ModelAndView editProfile() {

        System.out.println("user: " + SecurityUtils.getPrincipal().getUsername());
        ModelAndView mav = new ModelAndView("web/edit_profile");
        return mav;
    }

}


