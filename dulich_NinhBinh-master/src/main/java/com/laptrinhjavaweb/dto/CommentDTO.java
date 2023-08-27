package com.laptrinhjavaweb.dto;

import com.laptrinhjavaweb.entity.PlaceEntity;
import com.laptrinhjavaweb.entity.UserEntity;
import org.springframework.web.multipart.MultipartFile;

import java.sql.Timestamp;

public class CommentDTO extends AbstractDTO<CommentDTO> {

    private String thumbnail;
    private String content;

    private MultipartFile imageFile;

    private String userAvatar;

    private String userName;

    private String createDate;

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public String getUserAvatar() {
        return userAvatar;
    }

    public void setUserAvatar(String userAvatar) {
        this.userAvatar = userAvatar;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public MultipartFile getImageFile() {
        return imageFile;
    }

    public void setImageFile(MultipartFile imageFile) {
        this.imageFile = imageFile;
    }


    public String getThumbnail() {
        return thumbnail;
    }
    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public String getContent() {
        return content;
    }
    public void setContent(String content) {
        this.content = content;
    }

}
