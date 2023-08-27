package com.laptrinhjavaweb.controller.admin;

import com.laptrinhjavaweb.dto.PlaceDTO;
import com.laptrinhjavaweb.dto.UserDTO;
import com.laptrinhjavaweb.entity.HotelOrderEntity;
import com.laptrinhjavaweb.service.ICategoryService;
import com.laptrinhjavaweb.service.IHotelOrderService;
import com.laptrinhjavaweb.service.IPlaceService;
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
import java.util.List;
import java.util.Map;

@Controller(value = "billControllerOfAdmin")
public class BillController {

	@Autowired
	IHotelOrderService hotelOrderService;

	@Autowired
	MessageUtil messageUtil;

	@RequestMapping(value = "/quan-tri/hoa-don/danh-sach", method = RequestMethod.GET)
	public ModelAndView showList(@RequestParam("page") int page ,
								 @RequestParam("limit") int limit) {

		Pageable pageable = new PageRequest(page-1,limit);
		ModelAndView mav = new ModelAndView("admin/bill/list_bill");
		List<HotelOrderEntity> bills =  hotelOrderService.findAll(pageable);

		//cout số danh sách các tin tức database
		int totalItem = hotelOrderService.getTotalItem();

		//tính tổng số page để hiển thị
		int totalPage = (int) Math.ceil((double)
				totalItem/limit);
		mav.addObject("totalPage" , totalPage);
		mav.addObject("page",page);
		mav.addObject("model", bills);
		return mav;
	}





	@RequestMapping(value = "/quan-tri/hoa-don/chinh-sua", method = RequestMethod.GET)
	public ModelAndView editNew(@RequestParam(value = "id" , required = false) Long id , HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin/bill/edit_bill");
		HotelOrderEntity bill = new HotelOrderEntity();
		if(request.getParameter("message")!= null)
		{
			Map<String , String> messege = messageUtil.getMessage(request.getParameter("message"));
			mav.addObject("message", messege.get("message"));
			mav.addObject("alert", messege.get("alert"));
		}
		if(id != null)
		{
			bill = hotelOrderService.findbyId(id);
		}
//		Map<Integer, String> status = new HashMap<>();
//		status.put(1,"Hoạt động");
//		status.put(0,"Không hoạt động");
//		mav.addObject("status" , status);
		mav.addObject("model" , bill);
		return mav;
	}
}
