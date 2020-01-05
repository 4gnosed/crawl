package cn.edu.guet.zti.web.controller;

import cn.edu.guet.zti.web.constant.Constant;
import cn.edu.guet.zti.web.pojo.Place;
import cn.edu.guet.zti.web.service.PlaceService;
import cn.edu.guet.zti.web.util.PagingUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class PlaceController {

    @Autowired
    private PlaceService placeService;

    /**
     * 展示地方列表
     *
     * @param model
     * @param request
     * @return
     */
    @RequestMapping(value = {"/place_list", "/getPlaces","/", "/index", "/index.html", "/index.jsp", "/index.jsp"})
    public String placesIndex(Model model, HttpServletRequest request) {
        String currentPageStr = request.getParameter("page");
        //当前页
        int currentPage = 1;
        if (currentPageStr == null || currentPageStr == "") {
            currentPage = Constant.FIRST_PAGE;
        } else {
            currentPage = Integer.parseInt(currentPageStr);
        }

        //当前页地方
        List<Place> places = placeService.getPlacesByPage(request.getSession().getServletContext().getRealPath("/"), currentPage);
        //总地方数
        int totalPlaces = placeService.getTotalPage();
        //总页（最后一页数）
        int totalPage = PagingUtils.getTotalPage(Constant.PLACE_KEYWORD, totalPlaces);
        //首页
        int beginPage = beginPage = PagingUtils.getBeginPage(currentPage, totalPage);
        model.addAttribute("places", places);
        model.addAttribute("totalPlaces", totalPlaces);
        model.addAttribute("beginPage", beginPage);
        model.addAttribute("totalPage", totalPage);
        model.addAttribute("currentPage", currentPage);
        model.addAttribute("menuId", 2);
        model.addAttribute("placeName", "广西");
        return "jsp/place_list";
    }

}
