package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.HotelEntity;
import com.laptrinhjavaweb.entity.HotelOrderEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.time.LocalDate;
import java.util.List;

public interface HotelOrderRepository extends JpaRepository<HotelOrderEntity, Long> {

    List<HotelOrderEntity> findByEndDateBeforeAndBillExpired(LocalDate date ,String expired);

    List<HotelOrderEntity> findByBillState(String state);


}
