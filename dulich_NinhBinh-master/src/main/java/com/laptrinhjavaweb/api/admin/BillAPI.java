package com.laptrinhjavaweb.api.admin;

import com.laptrinhjavaweb.dto.PlaceDTO;
import com.laptrinhjavaweb.entity.HotelOrderEntity;
import com.laptrinhjavaweb.repository.HotelOrderRepository;
import com.laptrinhjavaweb.service.IHotelOrderService;
import com.laptrinhjavaweb.service.IPlaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


@RestController(value = "APIBillofAdmin")
public class BillAPI {

    @Autowired
    HotelOrderRepository hotelOrderRepository;

    @PostMapping( "api/bill")
    public HotelOrderEntity addBill(@RequestBody HotelOrderEntity bill)
    {
        bill = hotelOrderRepository.save(bill);
        return bill;
    }

    @PutMapping("api/bill")
    public HotelOrderEntity updateBill(@RequestBody HotelOrderEntity bill)
    {
        bill = hotelOrderRepository.save(bill);
        return bill;
    }

    @DeleteMapping("api/bill")
    public void deleteBill(@RequestBody long[] ids)
    {
        for(long id : ids){
            hotelOrderRepository.delete(id);
        }
    }


}
