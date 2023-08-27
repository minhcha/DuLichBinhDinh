package com.laptrinhjavaweb.controller.web;


import com.laptrinhjavaweb.entity.HotelEntity;
import com.laptrinhjavaweb.entity.PlaceEntity;
import com.laptrinhjavaweb.service.IHotelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.Collections;
import java.util.List;

@Controller(value = "HotelControllerofWeb")
public class HotelController {

    @Autowired
    IHotelService hotelService;

    @RequestMapping(value = "/khachsan" , method = RequestMethod.GET)
    public ModelAndView hotel(){

        List<HotelEntity> list = hotelService.findAllHotel();
        ModelAndView mav = new ModelAndView("web/khachsan");
        mav.addObject("hotel1", list.get(0));
        mav.addObject("hotel2", list.get(1));
        mav.addObject("hotel3", list.get(2));
        mav.addObject("list" , list);

        return mav;
    }

    @RequestMapping(value = "/chitietkhachsan" , method = RequestMethod.GET)
    public ModelAndView hotelDetail(@RequestParam("id") long id){

        HotelEntity hotel = hotelService.findHotelById(id);

        ModelAndView mav = new ModelAndView("web/hotelDetail");
        mav.addObject("hotel" , hotel);

        List<HotelEntity> list = hotelService.findAllHotel();
        Collections.shuffle(list);
        mav.addObject("list" , list);

        return mav;
    }

}
