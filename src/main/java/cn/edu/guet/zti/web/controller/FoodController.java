package cn.edu.guet.zti.web.controller;

import cn.edu.guet.zti.web.pojo.Food;
import cn.edu.guet.zti.web.service.FoodService;
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

    @RequestMapping("/getFoods")
    public String getFoods(HttpServletRequest request, Model model) {
        String placeUrlId = request.getParameter("placeurlid");
        List<Food> foodList = foodService.getFoodsByPlaceUrlId(request.getSession().getServletContext().getRealPath("/"), placeUrlId);
        model.addAttribute("foodList", foodList);
        return "/jsp/food_list";
    }

    @RequestMapping("/getFood")
    public String getFood(HttpServletRequest request, Model model) {
        String foodUrlId = request.getParameter("foodurlid");
        Food food = foodService.getFoodsByFoodUrlId(request.getSession().getServletContext().getRealPath("/"), foodUrlId);
        model.addAttribute("food", food);
        return "jsp/food";
    }
}
