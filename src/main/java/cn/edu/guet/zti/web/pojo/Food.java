package cn.edu.guet.zti.web.pojo;

import java.util.List;

public class Food {
    private int foodId;
    private String foodUrlId;
    private String picName;
    private String foodName;
    private String introduction;
    private String likeNum;
    private String placeUrlId;
    private List<Restaurant> restaurantList;

    public int getFoodId() {
        return foodId;
    }

    public void setFoodId(int foodId) {
        this.foodId = foodId;
    }

    public String getFoodUrlId() {
        return foodUrlId;
    }

    public void setFoodUrlId(String foodUrlId) {
        this.foodUrlId = foodUrlId;
    }

    public String getPicName() {
        return picName;
    }

    public void setPicName(String picName) {
        this.picName = picName;
    }

    public String getFoodName() {
        return foodName;
    }

    public void setFoodName(String foodName) {
        this.foodName = foodName;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getLikeNum() {
        return likeNum;
    }

    public void setLikeNum(String likeNum) {
        this.likeNum = likeNum;
    }

    public String getPlaceUrlId() {
        return placeUrlId;
    }

    public void setPlaceUrlId(String placeUrlId) {
        this.placeUrlId = placeUrlId;
    }

    public List<Restaurant> getRestaurantList() {
        return restaurantList;
    }

    public void setRestaurantList(List<Restaurant> restaurantList) {
        this.restaurantList = restaurantList;
    }

    @Override
    public String toString() {
        return "Food{" +
                "foodId=" + foodId +
                ", foodUrlId='" + foodUrlId + '\'' +
                ", picName='" + picName + '\'' +
                ", foodName='" + foodName + '\'' +
                ", introduction='" + introduction + '\'' +
                ", likeNum='" + likeNum + '\'' +
                ", placeUrlId='" + placeUrlId + '\'' +
                ", restaurantList=" + restaurantList +
                '}';
    }
}
