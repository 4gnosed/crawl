package cn.edu.guet.zti.web.controller;

import cn.edu.guet.zti.web.pojo.Good;
import cn.edu.guet.zti.web.pojo.Shop;
import cn.edu.guet.zti.web.service.GoodService;
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

    @RequestMapping("/getGoods")
    public String getGoods(HttpServletRequest request, Model model) {
        String placeUrlId = request.getParameter("placeurlid");
        ArrayList<Good> goodList = goodService.getGoodsByPlaceUrlId(request.getSession().getServletContext().getRealPath("/"), placeUrlId);
        model.addAttribute("goodList", goodList);
        List<Shop> shopList = DistinctArrayListUtils.distinct(goodList);
        model.addAttribute("shopList", shopList);
        return "/jsp/good_list";
    }

    @RequestMapping("/getGood")
    public String getGood(HttpServletRequest request, Model model) {
        String goodUrlId = request.getParameter("goodurlid");
        Good good = goodService.getGoodsByGoodUrlId(request.getSession().getServletContext().getRealPath("/"), goodUrlId);
        model.addAttribute("good", good);
        return "jsp/good";
    }
}
