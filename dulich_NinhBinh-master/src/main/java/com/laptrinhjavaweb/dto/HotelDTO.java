package com.laptrinhjavaweb.dto;

import javax.persistence.Column;

public class HotelDTO extends AbstractDTO<HotelDTO> {

    private String name;

    private String thumbnail;

    private String thumbnail02;

    private String thumbnail03;

    private String thumbnail04;

    private String thumbnail05;

    private String shortDescription;

    private String shortDescription02;

    private String shortDescription03;

    private String shortDescription04;

    private long numberOfRoom;

    private long orderedRoom;

    private long price;

    private String address;

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

    public long getOrderedRoom() {
        return orderedRoom;
    }

    public void setOrderedRoom(long orderedRoom) {
        this.orderedRoom = orderedRoom;
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
}
