package com.laptrinhjavaweb.controller.admin;

import com.laptrinhjavaweb.dto.PlaceDTO;
import com.laptrinhjavaweb.dto.UserDTO;
import com.laptrinhjavaweb.service.ICategoryService;
import com.laptrinhjavaweb.service.IPlaceService;
import com.laptrinhjavaweb.service.IUserService;
import com.laptrinhjavaweb.util.MessageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller(value = "userControllerOfAdmin")
public class UserController {
	
	@Autowired
	private ICategoryService categoryService;

	@Autowired
	private IUserService userService;

	@Autowired
	private MessageUtil messageUtil;

	@RequestMapping(value = "/quan-tri/nguoi-dung/danh-sach", method = RequestMethod.GET)
	public ModelAndView showList(@RequestParam("page") int page ,
								 @RequestParam("limit") int limit) {
		UserDTO model = new UserDTO();
		model.setPage(page);
		model.setLimit(limit);
		Pageable pageable = new PageRequest(page-1,limit);
		ModelAndView mav = new ModelAndView("admin/users/list_user");
		model.setListResult(userService.findAll(pageable));

		//cout số danh sách các tin tức database
		model.setTotalItem(userService.getTotalItem());

		//tính tổng số page để hiển thị
		model.setTotalPage((int) Math.ceil((double)
				model.getTotalItem()/model.getLimit()));
		mav.addObject("model", model);
		return mav;
	}



	@RequestMapping(value = "/quan-tri/nguoi-dung/chinh-sua", method = RequestMethod.GET)
	public ModelAndView editNew(@RequestParam(value = "id" , required = false) Long id , HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin/users/edit_user");
		UserDTO model = new UserDTO();
		if(request.getParameter("message")!= null)
		{
			Map<String , String> messege = messageUtil.getMessage(request.getParameter("message"));
			mav.addObject("message", messege.get("message"));
			mav.addObject("alert", messege.get("alert"));
		}
		if(id != null)
		{
			model = userService.findByID(id);
		}
		Map<Integer, String> status = new HashMap<>();
		status.put(1,"Hoạt động");
		status.put(0,"Không hoạt động");
		mav.addObject("status" , status);
		mav.addObject("model" , model);

		return mav;
	}
}
