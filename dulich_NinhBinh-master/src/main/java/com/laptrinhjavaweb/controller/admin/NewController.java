package com.laptrinhjavaweb.controller.admin;

import com.laptrinhjavaweb.dto.CategoryDTO;

import com.laptrinhjavaweb.dto.PlaceDTO;
import com.laptrinhjavaweb.service.ICategoryService;
import com.laptrinhjavaweb.service.IPlaceService;
import com.laptrinhjavaweb.util.MessageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller(value = "newControllerOfAdmin")
public class NewController {
	
	@Autowired
	private ICategoryService categoryService;

	@Autowired
	private IPlaceService placeService;

	@Autowired
	private MessageUtil messageUtil;

	@RequestMapping(value = "/quan-tri/bai-viet/danh-sach", method = RequestMethod.GET)
	public ModelAndView showList(@RequestParam("page") int page ,
								 @RequestParam("limit") int limit) {
		PlaceDTO model = new PlaceDTO();
		model.setPage(page);
		model.setLimit(limit);
		Pageable pageable = new PageRequest(page-1,limit);
		ModelAndView mav = new ModelAndView("admin/new/list");
		model.setListResult(placeService.findAll(pageable));

		//cout số danh sách các tin tức database
		model.setTotalItem(placeService.getTotalItem());

		//tính tổng số page để hiển thị
		model.setTotalPage((int) Math.ceil((double)
				model.getTotalItem()/model.getLimit()));
		mav.addObject("model", model);
		return mav;
	}





	@RequestMapping(value = "/quan-tri/bai-viet/chinh-sua", method = RequestMethod.GET)
	public ModelAndView editNew(@RequestParam(value = "id" , required = false) Long id , HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin/new/edit");
		PlaceDTO model = new PlaceDTO();
		if(request.getParameter("message")!= null)
		{
			Map<String , String> messege = messageUtil.getMessage(request.getParameter("message"));
			mav.addObject("message", messege.get("message"));
			mav.addObject("alert", messege.get("alert"));
		}
		if(id != null)
		{
			model = placeService.findbyID(id);
		}
		mav.addObject("model" , model);

		Map<String , String> categories = categoryService.findAllCategory();
		mav.addObject("categories", categories);
		return mav;
	}
}
