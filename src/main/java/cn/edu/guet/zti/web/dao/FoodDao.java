package cn.edu.guet.zti.web.dao;

import cn.edu.guet.zti.web.pojo.Food;

import java.util.List;

public interface FoodDao {
    int addFood(Food food);

    Food findFoodByUrlId(String foodUrlId);

    List<Food> getFoodsByPlaceUrlId(String placeUrlId);

    List<Food> selectAll();

}
