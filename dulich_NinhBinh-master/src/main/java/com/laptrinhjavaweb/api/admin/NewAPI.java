package com.laptrinhjavaweb.api.admin;

import com.laptrinhjavaweb.dto.NewDTO;
import com.laptrinhjavaweb.dto.PlaceDTO;
import com.laptrinhjavaweb.repository.PlaceRepository;
import com.laptrinhjavaweb.service.IPlaceService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.*;


@RestController(value = "APIofAdmin")
public class NewAPI {


    @Autowired
    IPlaceService placeService;



    //thêm 1 new
    @PostMapping("/api/new")
    public PlaceDTO addNew(@RequestBody PlaceDTO addPlace )
    {
        return  placeService.save(addPlace);
    }
    //cập nhập new
    @PutMapping("/api/new")
    public PlaceDTO updateNew(@RequestBody PlaceDTO updatePlace)
    {
        return placeService.save(updatePlace);
    }

    //xóa nhiều new
    @DeleteMapping("api/new")
    public void delete(@RequestBody long[] ids)
    {
        for(long id : ids)
        {
            placeService.deletePlace(id);
        }
    }


}
