package cn.edu.guet.zti.web.dao;

import cn.edu.guet.zti.web.pojo.Food;

import java.util.List;

public interface FoodDao {
    public int addFood(Food food);

    public Food findFoodByUrlId(String foodUrlId);

    public List<Food> getFoodsByPlaceUrlId(String placeUrlId);

}
