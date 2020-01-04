package cn.edu.guet.zti.web.service;


import cn.edu.guet.zti.web.pojo.Food;

import java.util.List;

public interface FoodService {
    List<Food> getFoodsByPlaceUrlId(String webAppPath, String placeUrlId);

    public Food getFoodsByFoodUrlId(String webAppPath, String foodUrlId);
}
