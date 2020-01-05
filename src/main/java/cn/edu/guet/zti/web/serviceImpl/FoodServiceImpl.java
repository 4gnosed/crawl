package cn.edu.guet.zti.web.serviceImpl;


import cn.edu.guet.zti.web.constant.Constant;
import cn.edu.guet.zti.web.dao.FoodDao;
import cn.edu.guet.zti.web.dao.FoodWithRestaurantDao;
import cn.edu.guet.zti.web.dao.RestaurantDao;
import cn.edu.guet.zti.web.pojo.Food;
import cn.edu.guet.zti.web.pojo.Restaurant;
import cn.edu.guet.zti.web.service.FoodService;
import cn.edu.guet.zti.web.util.FileNameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class FoodServiceImpl implements FoodService {
    @Autowired
    private FoodDao foodDao;

    @Autowired
    private RestaurantDao restaurantDao;

    @Autowired
    private FoodWithRestaurantDao foodWithRestaurantDao;

    @Override
    public List<Food> getFoodsByPlaceUrlId(String webAppPath, String placeUrlId) {
        List<Food> foodList = foodDao.getFoodsByPlaceUrlId(placeUrlId);
        for (Food food : foodList) {
            food = addPicNameAndRestaurantList(webAppPath, food);
        }
        return foodList;
    }

    @Override
    public Food getFoodsByFoodUrlId(String webAppPath, String foodUrlId) {
        Food food = foodDao.findFoodByUrlId(foodUrlId);
        return addPicNameAndRestaurantList(webAppPath, food);
    }

    @Override
    public List<Food> findAll(String webAppPath) throws Exception {
        List<Food> foods = foodDao.selectAll();
        for (Food food : foods) {
            food = addPicNameAndRestaurantList(webAppPath, food);
        }
        return foods;
    }

    /**
     * 通过美食urlid获取餐馆列表
     *
     * @return
     */
    private Food addPicNameAndRestaurantList(String webAppPath, Food food) {
        String pictureName = FileNameUtils.getPictureNameByKeyword(webAppPath, food.getPlaceUrlId(), Constant.FOOD_KEYWORD, food.getFoodUrlId());
        food.setPicName(pictureName);
        //获取美食对应的餐馆UrlId
        List<String> restaurantUrlIdList = foodWithRestaurantDao.findFwrByFoodUrlId(food.getFoodUrlId());
        List<Restaurant> restaurantList = new ArrayList<Restaurant>();
        for (String resUrlId : restaurantUrlIdList) {
            Restaurant restaurant = restaurantDao.findRestaurantByResUrlId(resUrlId);
            restaurant.setPicName(FileNameUtils.getPictureNameByKeyword(webAppPath, food.getPlaceUrlId(),
                    Constant.RESTAURANT_KEYWORD, restaurant.getRestaurantUrlId()));
            restaurantList.add(restaurant);
        }
        food.setRestaurantList(restaurantList);
        return food;
    }
}
