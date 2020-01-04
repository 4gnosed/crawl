package cn.edu.guet.zti.web.pojo;

import java.util.ArrayList;
import java.util.List;

public class Sight {
    private int sightId;
    private String sightName;
    private String sightUrlId;
    private String address;
    private String rank;
    private String phone;
    private String website;
    private String openTime;
    private String score;
    private String introduction;
    private String placeUrlId;
    private ArrayList<String> picNames;
    private int commentCount;
    private List<String> introList;

    public int getSightId() {
        return sightId;
    }

    public void setSightId(int sightId) {
        this.sightId = sightId;
    }

    public String getSightName() {
        return sightName;
    }

    public void setSightName(String sightName) {
        this.sightName = sightName;
    }

    public String getSightUrlId() {
        return sightUrlId;
    }

    public void setSightUrlId(String sightUrlId) {
        this.sightUrlId = sightUrlId;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getRank() {
        return rank;
    }

    public void setRank(String rank) {
        this.rank = rank;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getOpenTime() {
        return openTime;
    }

    public void setOpenTime(String openTime) {
        this.openTime = openTime;
    }

    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getPlaceUrlId() {
        return placeUrlId;
    }

    public void setPlaceUrlId(String placeUrlId) {
        this.placeUrlId = placeUrlId;
    }

    public ArrayList<String> getPicNames() {
        return picNames;
    }

    public void setPicNames(ArrayList<String> picNames) {
        this.picNames = picNames;
    }

    public int getCommentCount() {
        return commentCount;
    }

    public void setCommentCount(int commentCount) {
        this.commentCount = commentCount;
    }

    public List<String> getIntroList() {
        return introList;
    }

    public void setIntroList(List<String> introList) {
        this.introList = introList;
    }

    @Override
    public String toString() {
        return "Sight{" +
                "sightId=" + sightId +
                ", sightName='" + sightName + '\'' +
                ", sightUrlId='" + sightUrlId + '\'' +
                ", address='" + address + '\'' +
                ", rank='" + rank + '\'' +
                ", phone='" + phone + '\'' +
                ", website='" + website + '\'' +
                ", openTime='" + openTime + '\'' +
                ", score='" + score + '\'' +
                ", introduction='" + introduction + '\'' +
                ", placeUrlId='" + placeUrlId + '\'' +
                ", picNames=" + picNames +
                ", commentCount=" + commentCount +
                ", introList=" + introList +
                '}';
    }
}
