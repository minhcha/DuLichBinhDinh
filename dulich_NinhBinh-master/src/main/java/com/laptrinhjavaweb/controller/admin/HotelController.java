package com.laptrinhjavaweb.controller.admin;

import com.laptrinhjavaweb.dto.HotelDTO;
import com.laptrinhjavaweb.dto.PlaceDTO;
import com.laptrinhjavaweb.service.IHotelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;


@Controller(value = "hotelControllerOfAdmin")
public class HotelController {


    @Autowired
    IHotelService hotelService;

    @RequestMapping(value = "/quan-tri/khach-san/danh-sach", method = RequestMethod.GET)
    public ModelAndView showList(@RequestParam("page") int page ,
                                 @RequestParam("limit") int limit) {
        HotelDTO model = new HotelDTO();
        model.setPage(page);
        model.setLimit(limit);
        Pageable pageable = new PageRequest(page-1,limit);
        ModelAndView mav = new ModelAndView("admin/hotel/list_hotel");
        model.setListResult(hotelService.findAll(pageable));

        //cout số danh sách các tin tức database
        model.setTotalItem(hotelService.getTotalItem());

        //tính tổng số page để hiển thị
        model.setTotalPage((int) Math.ceil((double)
                model.getTotalItem()/model.getLimit()));
        mav.addObject("model", model);
        return mav;
    }

//    @RequestMapping(value = "/quan-tri/khach-san/chinh-sua", method = RequestMethod.GET)
//    public ModelAndView editNew(@RequestParam(value = "id" , required = false) Long id , HttpServletRequest request) {
//        ModelAndView mav = new ModelAndView("admin/new/e");
//        PlaceDTO model = new PlaceDTO();
//        if(request.getParameter("message")!= null)
//        {
//            Map<String , String> messege = messageUtil.getMessage(request.getParameter("message"));
//            mav.addObject("message", messege.get("message"));
//            mav.addObject("alert", messege.get("alert"));
//        }
//        if(id != null)
//        {
//            model = placeService.findbyID(id);
//        }
//        mav.addObject("model" , model);
//
//        Map<String , String> categories = categoryService.findAllCategory();
//        mav.addObject("categories", categories);
//        return mav;
//    }
}
