package com.laptrinhjavaweb.service.impl;


import com.laptrinhjavaweb.dto.PlaceDTO;
import com.laptrinhjavaweb.entity.*;
import com.laptrinhjavaweb.repository.CategoryRepository;
import com.laptrinhjavaweb.repository.HotelOrderRepository;
import com.laptrinhjavaweb.repository.UserRepository;
import com.laptrinhjavaweb.service.IHotelOrderService;
import com.laptrinhjavaweb.service.IHotelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;


@Service
public class OrderService implements IHotelOrderService {

    @Autowired
    HotelOrderRepository hotelOrderRepository;

    @Autowired
    UserRepository userRepository;

    @Autowired
    IHotelService hotelService;


    @Override
    @Transactional
    public HotelOrderEntity addBill(long user_id, long place_id, LocalDate startDate, LocalDate endDate, String sdt
            , long sumPrice, long numberRoom) {

        HotelOrderEntity bill = new HotelOrderEntity();
        UserEntity user = userRepository.findOne(user_id);
        HotelEntity hotel = hotelService.findHotelById(place_id);

        bill.setUserEntity(user);
        bill.setHotelEntity(hotel);
        bill.setStartDate(startDate);
        bill.setEndDate(endDate);
        bill.setSdt(sdt);
        bill.setSumPrice(sumPrice);
        bill.setSoLuong(numberRoom);

        bill = hotelOrderRepository.save(bill);
        return bill;
    }

    @Override
    @Transactional
    public HotelOrderEntity saveBillWhenSuccess(long billId) {
        HotelOrderEntity bill = hotelOrderRepository.findOne(billId);
        bill.setBillState("Thanh toán thành công");
        bill.setBillExpired("Hoạt động");
        bill = hotelOrderRepository.save(bill);

        return bill;
    }

    @Override
    @Transactional
    public HotelOrderEntity saveBillWhenFail(long id) {
        HotelOrderEntity bill = hotelOrderRepository.findOne(id);
        bill.setBillState("Thanh toán không thành công");
        bill.setSoLuong(0);
        bill = hotelOrderRepository.save(bill);
        return bill;
    }

    @Override
    public List<HotelOrderEntity> danhsachHoaDonHetHan(LocalDate date) {
        return hotelOrderRepository.findByEndDateBeforeAndBillExpired(date, "hoạt động");
    }

    @Override
    public HotelOrderEntity updateBill(HotelOrderEntity hotelOrder) {
        hotelOrder = hotelOrderRepository.save(hotelOrder);
        return hotelOrder;
    }

    //tìm kiếm tất cả theo Pageage
    @Override
    public List<HotelOrderEntity> findAll(Pageable pageable) {
        List<HotelOrderEntity> bills = hotelOrderRepository.findAll(pageable).getContent();
        return bills;
    }

    @Override
    public Integer getTotalItem() {
        return (int) hotelOrderRepository.count();
    }

    @Override
    public HotelOrderEntity findbyId(long id) {

        HotelOrderEntity bill  = hotelOrderRepository.findOne(id);
        return bill;
    }

}
