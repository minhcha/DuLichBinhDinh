package com.laptrinhjavaweb.controller.web;
import javax.servlet.http.HttpServletRequest;

import com.laptrinhjavaweb.config.PaypalPaymentIntent;
import com.laptrinhjavaweb.config.PaypalPaymentMethod;
import com.laptrinhjavaweb.dto.MyUser;
import com.laptrinhjavaweb.entity.HotelEntity;
import com.laptrinhjavaweb.entity.HotelOrderEntity;
import com.laptrinhjavaweb.entity.UserEntity;
import com.laptrinhjavaweb.repository.HotelOrderRepository;
import com.laptrinhjavaweb.repository.UserRepository;
import com.laptrinhjavaweb.service.IHotelOrderService;
import com.laptrinhjavaweb.service.impl.HotelService;
import com.laptrinhjavaweb.service.impl.PaypalService;
import com.laptrinhjavaweb.util.PaypalUtils;
import com.laptrinhjavaweb.util.SecurityUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;
import com.paypal.api.payments.Links;
import com.paypal.api.payments.Payment;
import com.paypal.base.rest.PayPalRESTException;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDate;
import java.util.List;

@Controller
public class PaymentController {
    public static final String URL_PAYPAL_SUCCESS = "web/success";
    public static final String URL_PAYPAL_CANCEL = "web/cancel";
    private Logger log = LoggerFactory.getLogger(getClass());

    @Autowired
    private PaypalService paypalService;

    @Autowired
    private HotelService hotelService;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private IHotelOrderService billService;


    //trang thanh toán demo test API
    @GetMapping("/payment")
    public String payment(){
        return "web/payment_demo";
    }

    //Den trang thanh toan
    @RequestMapping(value = "/thanhToan" , method = RequestMethod.GET)
    public ModelAndView thanhToan(@RequestParam("id") long  hotel_id){
        ModelAndView mav = new ModelAndView("web/thanhToan");

        HotelEntity hotel = hotelService.findHotelById(hotel_id);

//        LocalDate today = LocalDate.now();
//        List<HotelOrderEntity> expiredBill = billService.danhsachHoaDonHetHan(today);
        mav.addObject("hotel" ,hotel);

        return mav;
    }

    @PostMapping("/pay")
    public String pay(HttpServletRequest request,@RequestParam("price") double price,
                      @RequestParam("hotelId") long hotel_id  , @RequestParam("numberRoom") long numberRoom ,
                      @RequestParam("phoneNumber") String phoneNumber
                      ){

        //lấy ngày của hóa đơn

        double sumPrice = price*numberRoom;

        //lấy id của người dùng
        UserEntity user = userRepository.findOneByUserNameAndStatus(SecurityUtils.getPrincipal().getUsername(),1);

        LocalDate startDate = LocalDate.parse(request.getParameter("startDate"));
        LocalDate endDate = LocalDate.parse(request.getParameter("endDate"));

        //tạo hóa đơn chưa có trạng thái
        HotelOrderEntity bill = billService.addBill(user.getId(),hotel_id ,startDate ,
                endDate ,phoneNumber, (long) (price*numberRoom) ,
                numberRoom);


        String cancelUrl = PaypalUtils.getBaseURL(request) + "/" + URL_PAYPAL_CANCEL + "?billId=" + bill.getId();
        String successUrl = PaypalUtils.getBaseURL(request) + "/" + URL_PAYPAL_SUCCESS + "?billId=" + bill.getId();

        try {
            Payment payment = paypalService.createPayment(
                    sumPrice,
                    "USD",
                    PaypalPaymentMethod.paypal,
                    PaypalPaymentIntent.sale,
                    "payment description",
                    cancelUrl,
                    successUrl);
            for(Links links : payment.getLinks()){
                if(links.getRel().equals("approval_url")){
                    return "redirect:" + links.getHref();
                }
            }
        } catch (PayPalRESTException e) {
            log.error(e.getMessage());
        }
        return "redirect:/home";
    }


    @Transactional
    @GetMapping(URL_PAYPAL_CANCEL)
    public String cancelPay(@RequestParam("billId") long id){
        HotelOrderEntity bill = billService.saveBillWhenFail(id);
        return "web/cancel";
    }


    @Transactional
    @GetMapping(URL_PAYPAL_SUCCESS)
    public String successPay(@RequestParam("paymentId") String paymentId, @RequestParam("PayerID") String payerId,
                             @RequestParam("billId") long id){
        try {
            Payment payment = paypalService.executePayment(paymentId, payerId);
            if(payment.getState().equals("approved")){
                //thay đổi trạng thái hóa đơn
                HotelOrderEntity bill = billService.saveBillWhenSuccess(id);

                //thay đổi số phòng của khách sạn
                HotelEntity hotel = hotelService.findHotelById(bill.getHotelEntity().getId());
                hotel.setNumberOfRoom(hotel.getNumberOfRoom()- bill.getSoLuong());
                hotel = hotelService.updateHotel(hotel);
                return "web/success";
            }
        } catch (PayPalRESTException e) {
            HotelOrderEntity bill = billService.saveBillWhenFail(id);
            log.error(e.getMessage());
        }
        return "redirect:/home";
    }
}