package com.laptrinhjavaweb.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.laptrinhjavaweb.converter.UserConverter;
import com.laptrinhjavaweb.dto.PlaceDTO;
import com.laptrinhjavaweb.dto.UserDTO;
import com.laptrinhjavaweb.entity.PlaceEntity;
import com.laptrinhjavaweb.repository.RoleRepository;
import com.laptrinhjavaweb.service.IUserService;
import com.laptrinhjavaweb.util.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.constant.SystemConstant;
import com.laptrinhjavaweb.dto.MyUser;
import com.laptrinhjavaweb.entity.RoleEntity;
import com.laptrinhjavaweb.entity.UserEntity;
import com.laptrinhjavaweb.repository.UserRepository;
import org.springframework.transaction.annotation.Transactional;

@Service
@EnableAspectJAutoProxy(proxyTargetClass=true)
public class CustomUserDetailsService  implements UserDetailsService , IUserService {
	
	@Autowired
	private UserRepository userRepository;

	@Autowired
	UserConverter userConverter ;


	@Autowired
	RoleRepository roleRepository;



	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		UserEntity userEntity = userRepository.findOneByUserNameAndStatus(username, SystemConstant.ACTIVE_STATUS);
		
		if (userEntity == null) {
			throw new UsernameNotFoundException("User not found");
		}
		List<GrantedAuthority> authorities = new ArrayList<>();
		for (RoleEntity role: userEntity.getRoles()) {
			authorities.add(new SimpleGrantedAuthority(role.getCode()));
		}
		MyUser myUser = new MyUser(userEntity.getUserName(), userEntity.getPassword(), 
							true, true, true, true, authorities);
		myUser.setFullName(userEntity.getFullName());
		return myUser;
	}


	@Override
	public List<UserDTO> findAll(Pageable pageable) {
		List<UserDTO> models = new ArrayList<>();
		List<UserEntity> userEntities = userRepository.findAll(pageable).getContent();
		for(UserEntity item : userEntities)
		{
			UserDTO newModel = new UserDTO();
			newModel.setId(item.getId());
			newModel.setUserName(item.getUserName());
			newModel.setFullName(item.getFullName());
			newModel.setStatus(item.getStatus());
			models.add(newModel);
		}
		return models;

	}

	@Override
	public Integer getTotalItem() {
		return (int) userRepository.count();
	}

	@Override
	public UserDTO findByID(Long id) {
		UserEntity entity = userRepository.findOne(id);
		UserDTO result = userConverter.toDTO(entity);
		return result;
	}

	@Override
	@Transactional
	public UserDTO save(UserDTO dto) {
		UserEntity entity = new UserEntity();
		List<RoleEntity> roleEntityList = roleRepository.findAllByCode("USER");

		if(dto.getId()!= null)
		{
			UserEntity oldEntity = userRepository.findOne(dto.getId());
			entity = userConverter.toEntity(oldEntity , dto);
			entity = userRepository.save(entity);
		}
		else {
			entity = userConverter.toEntity(dto);
			entity.setRoles(roleEntityList);
			entity = userRepository.save(entity);
		}
		return userConverter.toDTO(entity);
	}

	@Override
	@Transactional
	public UserDTO saveUserByUser(UserDTO userDTO) {
		UserEntity oldEntity = userRepository.findOneByUserNameAndStatus(SecurityUtils.getPrincipal().getUsername(),1);
		UserEntity newEntiy = userConverter.toEntityHasAvatar(oldEntity,userDTO);
		newEntiy = userRepository.save(newEntiy);
		return userConverter.toDTO(newEntiy);
	}

	@Override
	@Transactional
	public UserDTO changeAvatar(String file) {
		UserEntity oldEntity = userRepository.findOneByUserNameAndStatus(SecurityUtils.getPrincipal().getUsername(), 1);
		oldEntity.setAvatar(file);
		oldEntity = userRepository.save(oldEntity);

		return userConverter.toDTO(oldEntity);
	}

	@Override
	public void delete(long id) {
		UserEntity userEntity = userRepository.findOne(id);
		List<RoleEntity> entities = userEntity.getRoles();
		for(RoleEntity role : entities)
		{
			role.getUsers().remove(userEntity);
		}
		userRepository.delete(userEntity);
	}

	@Override
	public int coutComment(String userName) {

		UserEntity userEntity = userRepository.findOneByUserNameAndStatus(userName,1);
		int cout = userEntity.getCommentPlaceEntities().size();
		return cout;
	}

	@Override
	public int coutPlaceLike(String userName) {
		UserEntity userEntity = userRepository.findOneByUserNameAndStatus(userName,1);
		int cout = userEntity.getPlaces().size();
		return cout;
	}
}
