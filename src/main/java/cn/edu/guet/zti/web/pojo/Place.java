package cn.edu.guet.zti.web.pojo;

import java.util.List;

public class Place {
    private int placeId;
    private String placeName;
    private String placeUrlId;
    private String picName;
    private List<Sight> sightList;

    public int getPlaceId() {
        return placeId;
    }

    public void setPlaceId(int placeId) {
        this.placeId = placeId;
    }

    public String getPlaceName() {
        return placeName;
    }

    public void setPlaceName(String placeName) {
        this.placeName = placeName;
    }

    public String getPlaceUrlId() {
        return placeUrlId;
    }

    public void setPlaceUrlId(String placeUrlId) {
        this.placeUrlId = placeUrlId;
    }

    public String getPicName() {
        return picName;
    }

    public void setPicName(String picName) {
        this.picName = picName;
    }

    public List<Sight> getSightList() {
        return sightList;
    }

    public void setSightList(List<Sight> sightList) {
        this.sightList = sightList;
    }

    @Override
    public String toString() {
        return "Place{" +
                "placeId=" + placeId +
                ", placeName='" + placeName + '\'' +
                ", placeUrlId='" + placeUrlId + '\'' +
                ", picName='" + picName + '\'' +
                ", sightList=" + sightList +
                '}';
    }
}
