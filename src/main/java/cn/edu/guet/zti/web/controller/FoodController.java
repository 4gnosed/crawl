package cn.edu.guet.zti.web.controller;

import cn.edu.guet.zti.web.pojo.Food;
import cn.edu.guet.zti.web.service.FoodService;
import cn.edu.guet.zti.web.service.PlaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class FoodController {

    @Autowired
    private FoodService foodService;

    @Autowired
    PlaceService placeService;

    @RequestMapping("/getFoods")
    public String getFoods(HttpServletRequest request, Model model) throws Exception {
        String placeUrlId = request.getParameter("placeurlid");
        List<Food> foodList = null;
        if (placeUrlId == null || placeUrlId.equals("")) {
            foodList = foodService.findAll(request.getSession().getServletContext().getRealPath("/"));
            model.addAttribute("placeName", "广西");
        } else {
            foodList = foodService.getFoodsByPlaceUrlId(request.getSession().getServletContext().getRealPath("/"), placeUrlId);
            String placeName = placeService.getPlaceNameByUrlId(placeUrlId);
            model.addAttribute("placeName", placeName);
        }
        model.addAttribute("foodList", foodList);
        model.addAttribute("menuId", 4);
        model.addAttribute("cityId", placeUrlId);
        return "jsp/food_list";
    }

    @RequestMapping("/getFood")
    public String getFood(HttpServletRequest request, Model model) {
        String foodUrlId = request.getParameter("foodurlid");
        Food food = foodService.getFoodsByFoodUrlId(request.getSession().getServletContext().getRealPath("/"), foodUrlId);
        model.addAttribute("food", food);
        return "jsp/food";
    }
}
