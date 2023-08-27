package com.laptrinhjavaweb.controller.admin;

import com.laptrinhjavaweb.entity.HotelOrderEntity;
import com.laptrinhjavaweb.repository.CommentRepository;
import com.laptrinhjavaweb.repository.HotelOrderRepository;
import com.laptrinhjavaweb.repository.PlaceRepository;
import com.laptrinhjavaweb.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller(value = "homeControllerOfAdmin")
public class HomeController {

	@Autowired
	CommentRepository commentRepository;
	@Autowired
	HotelOrderRepository hotelOrderRepository;

	@Autowired
	UserRepository userRepository;

	@Autowired
	PlaceRepository placeRepository;

	@RequestMapping(value = "/quan-tri/trang-chu", method = RequestMethod.GET)
	public ModelAndView homePage() {
		long sumPrice = 0;
		ModelAndView mav = new ModelAndView("admin/home");
		int coutComment = commentRepository.findAll().size();
		int coutUser = userRepository.findAll().size()-1;
		int coutPlace = placeRepository.findAll().size();
		int coutBill = hotelOrderRepository.findAll().size();
		List<HotelOrderEntity> bills = hotelOrderRepository.findAll();
		int coutBillSuccess = hotelOrderRepository.findByBillState("Thanh toán thành công").size();

		long successBill = (long) ((double) coutBillSuccess / coutBill * 100);


		for(HotelOrderEntity bill : hotelOrderRepository.findAll())
		{
			sumPrice = sumPrice + bill.getSumPrice() ;
		}

		mav.addObject("comments", coutComment);
		mav.addObject("users", coutUser);
		mav.addObject("places", coutPlace);
		mav.addObject("bill", coutBill);
		mav.addObject("sum_money",sumPrice );
		mav.addObject("bills", bills);

		mav.addObject("bill_success" , successBill);
		mav.addObject("bill_fail",100-successBill);

		return mav;
	}
}
