package com.laptrinhjavaweb.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

@Entity
@Table(name = "user")
public class UserEntity extends BaseEntity {

	@Column(name = "username",unique = true)
	private String userName;

	@Column(name = "password")
	private String password;

	@Column(name = "fullname")
	private String fullName;

	@Column(name="avatar")
	private String avatar;

	@Column
	private Integer status;

	@ManyToMany(fetch = FetchType.LAZY,cascade = CascadeType.PERSIST)
	@JoinTable(name = "user_role", joinColumns = @JoinColumn(name = "userid"), 
								  inverseJoinColumns = @JoinColumn(name = "roleid"))
	private List<RoleEntity> roles = new ArrayList<>();

	@ManyToMany(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
	@JoinTable(name = "save_place", joinColumns = @JoinColumn(name = "userid"),
			inverseJoinColumns = @JoinColumn(name = "placeid") ,
			uniqueConstraints = {@UniqueConstraint(
			columnNames = {"userid", "placeid"})} )
	private List<PlaceEntity> places = new ArrayList<>();

	@OneToMany(mappedBy = "userEntity")
	private List<HotelOrderEntity> orderEntities = new ArrayList<>();



	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public List<PlaceEntity> getPlaces() {
		return places;
	}

	public void setPlaces(List<PlaceEntity> places) {
		this.places = places;
	}

	public List<CommentPlaceEntity> getCommentPlaceEntities() {
		return commentPlaceEntities;
	}

	public void setCommentPlaceEntities(List<CommentPlaceEntity> commentPlaceEntities) {
		this.commentPlaceEntities = commentPlaceEntities;
	}

	@OneToMany(mappedBy = "userEntity")
	private List<CommentPlaceEntity> commentPlaceEntities = new ArrayList<>();



	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public List<RoleEntity> getRoles() {
		return roles;
	}

	public void setRoles(List<RoleEntity> roles) {
		this.roles = roles;
	}


	public List<HotelOrderEntity> getOrderEntities() {
		return orderEntities;
	}

	public void setOrderEntities(List<HotelOrderEntity> orderEntities) {
		this.orderEntities = orderEntities;
	}
}
