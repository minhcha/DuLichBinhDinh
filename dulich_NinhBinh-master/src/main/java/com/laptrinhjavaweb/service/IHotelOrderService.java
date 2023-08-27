package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.dto.PlaceDTO;
import com.laptrinhjavaweb.entity.HotelEntity;
import com.laptrinhjavaweb.entity.HotelOrderEntity;
import com.laptrinhjavaweb.entity.UserEntity;
import org.springframework.data.domain.Pageable;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

public interface IHotelOrderService {


	HotelOrderEntity addBill(long user_id , long place_id ,
								   LocalDate startDate, LocalDate endDate
			, String sdt , long sumPrice , long numberRoom);

	HotelOrderEntity saveBillWhenSuccess(long billId);

	HotelOrderEntity saveBillWhenFail(long id);

	List<HotelOrderEntity> danhsachHoaDonHetHan(LocalDate Date);

	HotelOrderEntity updateBill(HotelOrderEntity hotelOrder);

	List<HotelOrderEntity> findAll(Pageable pageable);

	Integer getTotalItem();

	HotelOrderEntity findbyId(long id);

}
