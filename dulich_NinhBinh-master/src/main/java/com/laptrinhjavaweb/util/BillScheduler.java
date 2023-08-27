package com.laptrinhjavaweb.util;

import com.laptrinhjavaweb.entity.HotelEntity;
import com.laptrinhjavaweb.entity.HotelOrderEntity;
import com.laptrinhjavaweb.service.IHotelOrderService;
import com.laptrinhjavaweb.service.impl.HotelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.time.LocalDate;
import java.util.List;

@Component
public class BillScheduler {

    @Autowired
    private IHotelOrderService billService;

    @Autowired
    private HotelService hotelService;


    @Scheduled(cron="0 * * * * ?") // Chạy vào mỗi giờ
    public void deleteExpiredInvoices() {
        LocalDate today = LocalDate.now();
        List<HotelOrderEntity> expiredBill = billService.danhsachHoaDonHetHan(today);
        if(!expiredBill.isEmpty())
        {
            for(HotelOrderEntity bill : expiredBill)
            {
                //số phòng khách trả được hoàn lại
                HotelEntity hotel = bill.getHotelEntity();
                hotel.setNumberOfRoom(hotel.getNumberOfRoom()+bill.getSoLuong());
                bill.setBillExpired("Hết hạn");
                //lưu thay đổi bill
                bill = billService.updateBill(bill);
                hotel = hotelService.updateHotel(hotel);
            }
        }

    }
}
