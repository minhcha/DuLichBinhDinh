package com.laptrinhjavaweb.entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "hotel")
public class HotelEntity extends BaseEntity {

    @Column(name = "name")
    private String name;

    @Column(name = "thumbnail")
    private String thumbnail;

    @Column(name = "thumbnail02")
    private String thumbnail02;

    @Column(name = "thumbnail03")
    private String thumbnail03;

    @Column(name = "thumbnail04")
    private String thumbnail04;

    @Column(name = "thumbnail05")
    private String thumbnail05;

    @Column(name = "shortdescription", columnDefinition = "TEXT")
    private String shortDescription;

    @Column(name = "shortdescription02", columnDefinition = "TEXT")
    private String shortDescription02;

    @Column(name = "shortdescription03", columnDefinition = "TEXT")
    private String shortDescription03;

    @Column(name = "shortdescription04", columnDefinition = "TEXT")
    private String shortDescription04;

    @Column(name = "numberofroom")
    private long numberOfRoom;

    @Column(name = "orderedroom")
    private long orderedRoom;

    @Column(name= "price")
    private long price;

    @Column(name = "diachi")
    private String address;

    @OneToMany(mappedBy = "hotelEntity")
    private List<HotelOrderEntity> orderEntities = new ArrayList<>();



    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public String getThumbnail02() {
        return thumbnail02;
    }

    public void setThumbnail02(String thumbnail02) {
        this.thumbnail02 = thumbnail02;
    }

    public String getThumbnail03() {
        return thumbnail03;
    }

    public void setThumbnail03(String thumbnail03) {
        this.thumbnail03 = thumbnail03;
    }

    public String getThumbnail04() {
        return thumbnail04;
    }

    public void setThumbnail04(String thumbnail04) {
        this.thumbnail04 = thumbnail04;
    }

    public String getThumbnail05() {
        return thumbnail05;
    }

    public void setThumbnail05(String thumbnail05) {
        this.thumbnail05 = thumbnail05;
    }

    public String getShortDescription() {
        return shortDescription;
    }

    public void setShortDescription(String shortDescription) {
        this.shortDescription = shortDescription;
    }

    public String getShortDescription02() {
        return shortDescription02;
    }

    public void setShortDescription02(String shortDescription02) {
        this.shortDescription02 = shortDescription02;
    }

    public String getShortDescription03() {
        return shortDescription03;
    }

    public void setShortDescription03(String shortDescription03) {
        this.shortDescription03 = shortDescription03;
    }

    public String getShortDescription04() {
        return shortDescription04;
    }

    public void setShortDescription04(String shortDescription04) {
        this.shortDescription04 = shortDescription04;
    }

    public long getNumberOfRoom() {
        return numberOfRoom;
    }

    public void setNumberOfRoom(long numberOfRoom) {
        this.numberOfRoom = numberOfRoom;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public long getOrderedRoom() {
        return orderedRoom;
    }

    public void setOrderedRoom(long orderedRoom) {
        this.orderedRoom = orderedRoom;
    }

    public List<HotelOrderEntity> getOrderEntities() {
        return orderEntities;
    }

    public void setOrderEntities(List<HotelOrderEntity> orderEntities) {
        this.orderEntities = orderEntities;
    }
}
