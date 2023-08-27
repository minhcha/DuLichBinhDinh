package com.laptrinhjavaweb.controller.web;


import com.laptrinhjavaweb.dto.CommentDTO;
import com.laptrinhjavaweb.dto.PlaceDTO;
import com.laptrinhjavaweb.entity.PlaceEntity;
import com.laptrinhjavaweb.entity.UserEntity;
import com.laptrinhjavaweb.repository.PlaceRepository;
import com.laptrinhjavaweb.repository.UserRepository;
import com.laptrinhjavaweb.service.ICommentService;
import com.laptrinhjavaweb.service.IPlaceService;
import com.laptrinhjavaweb.service.impl.PlaceService;
import com.laptrinhjavaweb.util.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOError;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;


@Controller(value = "PlaceControllerWeb")
public class PlaceController {

	@Autowired
	IPlaceService placeService;

	@Autowired
	ICommentService commentService;

	@Autowired
	UserRepository userRepository;

	@Autowired
	PlaceRepository placeRepository;

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String submit(@RequestParam("files") MultipartFile multipartFile ,
						 HttpServletRequest request ,ModelMap model) {
		try {

			String fileName = multipartFile.getOriginalFilename();
			File file = new File("D:/Year 4/HK1/TLCN/spring-mvc-spring-security/src/main/webapp/template/web/assets/images", fileName);
			multipartFile.transferTo(file);
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("message", "upload failed");
		}
		return "admin/new/list";
	}

	@RequestMapping(value = "/place_detail", method = RequestMethod.GET)
	public ModelAndView placeDetail(@RequestParam("place_id") long id ,
									@RequestParam(value = "yeu_thich" ,required = false) String like ) {

		ModelAndView mav = new ModelAndView("web/placeDetail");
		PlaceDTO placeDTO = placeService.findbyID(id);

		List<CommentDTO> comments = new ArrayList<>();
		List<PlaceEntity> lists = placeRepository.findAll();
		Collections.shuffle(lists);
		comments = commentService.findAllCommentPlacebyIdPlace(id);
		CommentDTO comment= new CommentDTO();
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if(authentication.getPrincipal()!="anonymousUser")
		{
			if(placeService.checkLike(id)){
				mav.addObject("check_like" ,1);
				if (like != null) {
					placeService.UnLike(id);
					mav.addObject("check_like" ,0);
				}

			}
			else {
				mav.addObject("check_like" ,0);
				if (like != null) {
					placeService.like(id);
					mav.addObject("check_like" ,1);

				}
			}
		}

		int cout = (int) placeService.coutLike(id);

		mav.addObject("model" , placeDTO);
		mav.addObject("lists" , lists);
		mav.addObject("like" , cout);
		mav.addObject("comments" ,comments);
		mav.addObject("cout_comment" , comments.size());
		mav.addObject("comment",comment);

		return mav;
	}

	@RequestMapping(value = "/place_detail", method = RequestMethod.POST)
	public ModelAndView placeDetail2(@ModelAttribute("comment") CommentDTO commentDTO ,
									 @RequestParam("placeid") long id) {

		ModelAndView mav = new ModelAndView("web/placeDetail");
		long a = id;
		String text = commentDTO.getContent();
		PlaceDTO placeDTO = placeService.findbyID(id);

		CommentDTO comment= new CommentDTO();
		comment = commentService.save(commentDTO , id);

		int cout = (int) placeService.coutLike(id);
		List<CommentDTO> comments = new ArrayList<>();
		comments = commentService.findAllCommentPlacebyIdPlace(id);


		mav.addObject("model" , placeDTO);
		mav.addObject("like" , cout);
		mav.addObject("comments" ,comments);
		mav.addObject("cout_comment" , comments.size());
		mav.addObject("comment",comment);


		return mav;
	}







}
