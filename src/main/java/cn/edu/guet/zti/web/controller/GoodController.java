package cn.edu.guet.zti.web.controller;

import cn.edu.guet.zti.web.pojo.Good;
import cn.edu.guet.zti.web.pojo.Shop;
import cn.edu.guet.zti.web.service.GoodService;
import cn.edu.guet.zti.web.service.PlaceService;
import cn.edu.guet.zti.web.util.DistinctArrayListUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class GoodController {
    @Autowired
    private GoodService goodService;

    @Autowired
    private PlaceService placeService;

    @RequestMapping("/getGoods")
    public String getGoods(HttpServletRequest request, Model model) throws Exception {
        String placeUrlId = request.getParameter("placeurlid");
        if (placeUrlId == null || placeUrlId.equals("")) {
            ArrayList<Good> goods = goodService.findAll(request.getSession().getServletContext().getRealPath("/"));
            model.addAttribute("goodList", goods);
            List<Shop> shops = DistinctArrayListUtils.distinct(goods);
            model.addAttribute("shopList", shops);
            model.addAttribute("placeName", "广西");
            model.addAttribute("menuId", 5);
        } else {
            ArrayList<Good> goodList = goodService.getGoodsByPlaceUrlId(request.getSession().getServletContext().getRealPath("/"), placeUrlId);
            model.addAttribute("goodList", goodList);
            List<Shop> shopList = DistinctArrayListUtils.distinct(goodList);
            model.addAttribute("shopList", shopList);
            String placeName = placeService.getPlaceNameByUrlId(placeUrlId);
            model.addAttribute("placeName", placeName);
            model.addAttribute("menuId", 5);
            model.addAttribute("cityId", placeUrlId);
        }
        return "jsp/good_list";
    }

    @RequestMapping("/getGood")
    public String getGood(HttpServletRequest request, Model model) {
        String goodUrlId = request.getParameter("goodurlid");
        Good good = goodService.getGoodsByGoodUrlId(request.getSession().getServletContext().getRealPath("/"), goodUrlId);
        model.addAttribute("good", good);
        return "jsp/good";
    }
}
