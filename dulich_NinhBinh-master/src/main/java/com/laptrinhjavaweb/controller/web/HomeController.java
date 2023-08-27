package com.laptrinhjavaweb.controller.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.laptrinhjavaweb.dto.PlaceDTO;
import com.laptrinhjavaweb.dto.UserDTO;
import com.laptrinhjavaweb.entity.CategoryEntity;
import com.laptrinhjavaweb.entity.PlaceEntity;
import com.laptrinhjavaweb.repository.CategoryRepository;
import com.laptrinhjavaweb.repository.PlaceRepository;
import com.laptrinhjavaweb.service.IPlaceService;
import com.laptrinhjavaweb.util.MessageUtil;
import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

@Controller(value = "homeControllerOfWeb")
public class HomeController {

	@Autowired
	MessageUtil messageUtil;

	@Autowired
	IPlaceService placeService;

	@Autowired
	PlaceRepository placeRepository;

	@Autowired
	CategoryRepository categoryRepository;

	@RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
	public ModelAndView homePage() {
		String image = "p2.jpg";
		ModelAndView mav = new ModelAndView("web/home");
		List<PlaceDTO> models = placeService.findNewPlace();
		List<PlaceEntity> lists = placeRepository.findByCategoryEntityCode("dia-diem");
		List<PlaceEntity> top5 = placeService.findTop5PlacesByNumberOfUsers();
//		List<PlaceEntity> topdiadanh = categoryRepository.findOneByCode("dia-danh").getPlaces();
		List<PlaceEntity> placeEntities = new ArrayList<>();
//		for(PlaceEntity item : lists)
//		{
//			if(item.getCategoryEntity().getCode()="")
//		}


		List<PlaceEntity> places = placeService.findPlace();
		Collections.shuffle(places);
		//lấy ra các địa danh nhiều người thích nhất
		PlaceEntity top1 = lists.get(0);
		PlaceEntity top2 = lists.get(1);
		PlaceEntity top3 = lists.get(2);

		PlaceEntity place1 = places.get(0);
		PlaceEntity place2 = places.get(1);

		PlaceDTO dto1 = models.get(0);
		PlaceDTO dto2 = models.get(1);

		mav.addObject("model1" , dto1);
		mav.addObject("model2" , dto2);

		mav.addObject("top1" , top1);
		mav.addObject("top2" , top2);
		mav.addObject("top3" , top3);


		mav.addObject("test" , image);
		mav.addObject("lists" , lists);

		mav.addObject("place1", place1);
		mav.addObject("place2", place2);
		return mav;
	}
	
	@RequestMapping(value = "/dang-nhap", method = RequestMethod.GET)
	public ModelAndView loginPage() {
		ModelAndView mav = new ModelAndView("login");
		return mav;
	}



	@RequestMapping(value = "/dang-ky", method = RequestMethod.GET)
	public ModelAndView registerPage(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("sign_up");
		UserDTO dto = new UserDTO();
		if(request.getParameter("message")!= null)
		{
			Map<String , String> messege = messageUtil.getMessage(request.getParameter("message"));
			mav.addObject("message", messege.get("message"));
			mav.addObject("alert", messege.get("alert"));
		}
		mav.addObject("model", dto);
		return mav;
	}
	
	@RequestMapping(value = "/thoat", method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return new ModelAndView("redirect:/trang-chu");
	}
	
	@RequestMapping(value = "/accessDenied", method = RequestMethod.GET)
	public ModelAndView accessDenied() {
		return new ModelAndView("redirect:/dang-nhap?accessDenied");
	}



	@RequestMapping(value = "/contact" , method = RequestMethod.GET)
	public ModelAndView contact(){
		ModelAndView nav = new ModelAndView("web/contact");
		return nav;
	}

	@RequestMapping(value = "/diadanh" , method = RequestMethod.GET)
	public ModelAndView diadiem(){
		ModelAndView mav = new ModelAndView("web/diadanh-yeuthich");
		List<PlaceEntity> placeEntities = placeRepository.findAll();
		mav.addObject("lists" , placeEntities);

		return mav;
	}

	@RequestMapping(value = "/event" , method = RequestMethod.GET)
	public ModelAndView event(){
		ModelAndView nav = new ModelAndView("web/event");
		return nav;
	}

	@RequestMapping(value = "/dacsan" , method = RequestMethod.GET)
	public ModelAndView food(){
		ModelAndView nav = new ModelAndView("web/dacsan");
		return nav;
	}

	@GetMapping("/search")
	public String search(@RequestParam("keyword") String keyword, Model model) {
		List<PlaceEntity> places = placeService.searchPlace(keyword);
		model.addAttribute("places", places);
		return "web/search";
	}





}
