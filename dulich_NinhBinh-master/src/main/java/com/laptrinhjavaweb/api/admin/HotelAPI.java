package com.laptrinhjavaweb.api.admin;


import com.laptrinhjavaweb.dto.HotelDTO;
import com.laptrinhjavaweb.entity.HotelEntity;
import com.laptrinhjavaweb.entity.HotelOrderEntity;
import com.laptrinhjavaweb.repository.HotelRepository;
import com.laptrinhjavaweb.service.IHotelService;
import com.laptrinhjavaweb.service.impl.HotelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController(value = "APIHotelofAdmin")
public class HotelAPI {

    @Autowired
    HotelRepository hotelRepository;

    @Autowired
    IHotelService hotelService;

    @PostMapping( "api/hotel")
    public HotelDTO addHotel(@RequestBody HotelDTO hotelDTO)
    {
        return  hotelService.save(hotelDTO);
    }

    @PutMapping("api/hotel")
    public HotelDTO updateHotel(@RequestBody HotelDTO hotel)
    {
        return hotelService.save(hotel);
    }

    @DeleteMapping("api/hotel")
    public void deleteHotel(@RequestBody long[] ids)
    {
        for(long id : ids){
            hotelRepository.delete(id);
        }
    }


}
