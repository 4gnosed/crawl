package cn.edu.guet.zti.web.dao;

import cn.edu.guet.zti.web.pojo.FoodWithRestaurant;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FoodWithRestaurantDao {
    public int addFwr(FoodWithRestaurant fwr);

    public FoodWithRestaurant findFwrByUrlId(String fwrUrlId);

    public List<String> findFwrByFoodUrlId(String foodUrlId);

    public FoodWithRestaurant findFwrByRestaurantUrlId(String restaurantUrlId);

    public FoodWithRestaurant findFwrByUrlIds(@Param("foodUrlId") String foodUrlId, @Param("restaurantUrlId") String restaurantUrlId);
}
