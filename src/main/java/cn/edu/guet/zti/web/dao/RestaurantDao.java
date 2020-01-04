package cn.edu.guet.zti.web.dao;

import cn.edu.guet.zti.web.pojo.Restaurant;
import org.apache.ibatis.annotations.Param;

public interface RestaurantDao {
    public int addRestaurant(Restaurant restaurant);

    public Restaurant findRestaurantByUrlId(String restaurantUrlId);

    public int updateRestaurantLinkByUrlId(@Param("link") String link, @Param("restaurantUrlId") String restaurantUrlId);

    public Restaurant findRestaurantByResUrlId(String resUrlId);
}
