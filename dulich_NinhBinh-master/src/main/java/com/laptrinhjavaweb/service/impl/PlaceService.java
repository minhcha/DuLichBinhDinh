package com.laptrinhjavaweb.service.impl;


import com.laptrinhjavaweb.converter.PlaceConverter;
import com.laptrinhjavaweb.dto.PlaceDTO;

import com.laptrinhjavaweb.entity.CategoryEntity;
import com.laptrinhjavaweb.entity.PlaceEntity;

import com.laptrinhjavaweb.entity.UserEntity;
import com.laptrinhjavaweb.repository.CategoryRepository;
import com.laptrinhjavaweb.repository.PlaceRepository;

import com.laptrinhjavaweb.repository.UserRepository;
import com.laptrinhjavaweb.service.IPlaceService;
import com.laptrinhjavaweb.util.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.ServletContext;
import java.util.ArrayList;
import java.util.List;

@Service
public class PlaceService implements IPlaceService {



	@Autowired
	PlaceRepository placeRepository;

	@Autowired
	CategoryRepository categoryRepository;

	@Autowired
	ServletContext application;

	@Autowired
	UserRepository userRepository;

	@Autowired
	PlaceConverter placeConverter;

	@Override
	public List<PlaceDTO> findAll(Pageable pageable) {
		List<PlaceDTO> models = new ArrayList<>();
		List<PlaceEntity> placeEntities = placeRepository.findAll(pageable).getContent();
		for(PlaceEntity item : placeEntities)
		{
			PlaceDTO newModel = new PlaceDTO();
			newModel.setId(item.getId());
			newModel.setTitle(item.getTitle());
			newModel.setShortDescription(item.getShortDescription());
			models.add(newModel);
		}
 		return models;
	}


	@Override
	public List<PlaceDTO> findNewPlace()
	{
		List<PlaceEntity> entities = placeRepository.findNewPlace();
		List<PlaceDTO> dto = new ArrayList<>();
		for(PlaceEntity entity : entities)
		{
			PlaceDTO result = new PlaceDTO();
			result = placeConverter.toDTO(entity);
			dto.add(result);
		}

		return  dto;
	}

	@Override
	public Integer getTotalItem() {
		return (int) placeRepository.count();
	}

	@Override
	public PlaceDTO findbyID(Long id) {

		PlaceEntity entity = placeRepository.findOne(id);
		PlaceDTO result = placeConverter.toDTO(entity);
		return result;
	}

	@Override
	@Transactional
	public PlaceDTO insert(PlaceDTO dto) {
		return null;
	}

	@Override
	public Integer coutLike(long id) {
		PlaceEntity place = placeRepository.findOne(id);
		int i = place.getUsers().size();
		return i;
	}

	@Override
	@Transactional
	public PlaceDTO update(PlaceDTO dto) {
		return  null;
	}

	@Override
	@Transactional
	public PlaceDTO save(PlaceDTO dto) {
		CategoryEntity categoryEntity = categoryRepository.findOneByCode(dto.getCategoryCode());
		PlaceEntity entity = new PlaceEntity();
		if(dto.getId() != null)
		{
			PlaceEntity oldEntity = placeRepository.findOne(dto.getId());
			entity = placeConverter.toEntity(oldEntity,dto);
			entity.setCategoryEntity(categoryEntity);
			entity = placeRepository.save(entity);
		}else
		{
			entity = placeConverter.toEntity(dto);
			entity.setCategoryEntity(categoryEntity);
			entity = placeRepository.save(entity);
		}
		return placeConverter.toDTO(entity);
	}

	@Override
	@Transactional
	public void like(long id) {
		UserEntity user = userRepository.findOneByUserNameAndStatus(SecurityUtils.getPrincipal().getUsername(), 1);
		PlaceEntity place = placeRepository.findOne(id);
		user.getPlaces().add(place);

		user = userRepository.save(user);
	}

	@Override
	@Transactional
	public void UnLike(long id) {
		UserEntity user = userRepository.findOneByUserNameAndStatus(SecurityUtils.getPrincipal().getUsername(), 1);
		PlaceEntity place = placeRepository.findOne(id);
		for( int i = 0; i < user.getPlaces().size(); i++ )
		{
			PlaceEntity lValue = user.getPlaces().get(i);
			if(lValue.getId()==id)
			{
				user.getPlaces().remove(lValue);
				i--;
			}
		}
		user = userRepository.save(user);
	}

	@Override
	public boolean checkLike(long id)
	{
		UserEntity user = userRepository.findOneByUserNameAndStatus(SecurityUtils.getPrincipal().getUsername(), 1);
		PlaceEntity place = placeRepository.findOne(id);

		for(PlaceEntity item : user.getPlaces()){
			if(item.getId()==id)
			{
				return true;
			}
		}
		return false;

	}



	@Override
	public void deletePlace(long id) {
		placeRepository.delete(id);
	}

	@Override
	public List<PlaceDTO> findAllPlace() {
		return null;
	}

	@Override
	public List<PlaceEntity> findTop5PlacesByNumberOfUsers() {

		return placeRepository.findAllOrderByUsersDesc();
	}

	@Override
	public List<PlaceEntity> searchPlace(String keyword) {
		return placeRepository.findByTitleContainingIgnoreCase(keyword);
	}

	@Override
	public List<PlaceEntity> findPlace() {
		return placeRepository.findPlace();
	}


	//Câu lệch top 5 địa danh yêu thích nhất
//	@Override
//	public List<PlaceEntity> findTopPlace(Pageable pageable) {
//		 pageable = new PageRequest(0,5);
//		List<PlaceEntity> topPlaces = placeRepository.findTopPlacesWithMostUsers(pageable);
//		return topPlaces;
//	}


}
