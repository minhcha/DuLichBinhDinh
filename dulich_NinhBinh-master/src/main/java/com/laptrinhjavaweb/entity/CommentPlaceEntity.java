package com.laptrinhjavaweb.entity;

import javax.persistence.*;

@Entity
@Table(name = "comment_place")
public class CommentPlaceEntity extends BaseEntity {



    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "place_id")
    private PlaceEntity placeEntity;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    private UserEntity userEntity;

    public PlaceEntity getPlaceEntity() {
        return placeEntity;
    }

    public void setPlaceEntity(PlaceEntity placeEntity) {
        this.placeEntity = placeEntity;
    }

    public UserEntity getUserEntity() {
        return userEntity;
    }

    public void setUserEntity(UserEntity userEntity) {
        this.userEntity = userEntity;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    @Column(name = "content", columnDefinition = "TEXT")
    private String content;

    @Column(name= "thumbnail")
    private String thumbnail;







    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
