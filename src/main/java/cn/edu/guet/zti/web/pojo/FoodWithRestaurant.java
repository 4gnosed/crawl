package cn.edu.guet.zti.web.pojo;

public class FoodWithRestaurant {
    private int fwrId;
    private String foodUrlId;
    private String restaurantUrlId;

    public int getFwrId() {
        return fwrId;
    }

    public void setFwrId(int fwrId) {
        this.fwrId = fwrId;
    }

    public String getFoodUrlId() {
        return foodUrlId;
    }

    public void setFoodUrlId(String foodUrlId) {
        this.foodUrlId = foodUrlId;
    }

    public String getRestaurantUrlId() {
        return restaurantUrlId;
    }

    public void setRestaurantUrlId(String restaurantUrlId) {
        this.restaurantUrlId = restaurantUrlId;
    }

    @Override
    public String toString() {
        return "FoodWithRestaurant{" +
                "fwrId=" + fwrId +
                ", foodUrlId='" + foodUrlId + '\'' +
                ", restaurantUrlId='" + restaurantUrlId + '\'' +
                '}';
    }
}
