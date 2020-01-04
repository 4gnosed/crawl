package cn.edu.guet.zti.web.pojo;

public class Restaurant {
    private int restaurantId;
    private String restaurantUrlId;
    private String restaurantName;
    private String score;
    private String address;
    private String introduction;
    private String link;
    private String picName;

    public int getRestaurantId() {
        return restaurantId;
    }

    public void setRestaurantId(int restaurantId) {
        this.restaurantId = restaurantId;
    }

    public String getRestaurantUrlId() {
        return restaurantUrlId;
    }

    public void setRestaurantUrlId(String restaurantUrlId) {
        this.restaurantUrlId = restaurantUrlId;
    }

    public String getRestaurantName() {
        return restaurantName;
    }

    public void setRestaurantName(String restaurantName) {
        this.restaurantName = restaurantName;
    }

    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getPicName() {
        return picName;
    }

    public void setPicName(String picName) {
        this.picName = picName;
    }

    @Override
    public String toString() {
        return "Restaurant{" +
                "restaurantId=" + restaurantId +
                ", restaurantUrlId='" + restaurantUrlId + '\'' +
                ", restaurantName='" + restaurantName + '\'' +
                ", score='" + score + '\'' +
                ", address='" + address + '\'' +
                ", introduction='" + introduction + '\'' +
                ", link='" + link + '\'' +
                ", picName='" + picName + '\'' +
                '}';
    }
}
