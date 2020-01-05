package cn.edu.guet.zti.web.controller;

import cn.edu.guet.zti.web.constant.Constant;
import cn.edu.guet.zti.web.pojo.Comment;
import cn.edu.guet.zti.web.pojo.Sight;
import cn.edu.guet.zti.web.service.PlaceService;
import cn.edu.guet.zti.web.service.SightService;
import cn.edu.guet.zti.web.util.PagingUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class SightController {

    @Autowired
    private SightService sightService;

    @Autowired
    private PlaceService placeService;

    /**
     * 展示一个地方的景点列表
     *
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("/getSights")
    public String getsights(Model model, HttpServletRequest request) {
        String currentPageStr = request.getParameter("page");
        String placeUrlId = request.getParameter("placeurlid");
        String placeName = placeService.getPlaceNameByUrlId(placeUrlId);
        //当前页
        int currentPage = 1;
        if (currentPageStr == null || currentPageStr == "") {
            currentPage = Constant.FIRST_PAGE;
        } else {
            currentPage = Integer.parseInt(currentPageStr);
        }
        //当前页景点
        ArrayList<Sight> sights = sightService.getSightsByPage(request.getSession().getServletContext().getRealPath("/"),
                placeUrlId,placeName, currentPage);
        //总景点数
        int totalSights = sightService.getTotalPage(placeUrlId,placeName);
        //总页（最后一页数）
        int totalPage = PagingUtils.getTotalPage(Constant.SIGHT_KEYWORD, totalSights);
        //首页
        int beginPage = beginPage = PagingUtils.getBeginPage(currentPage, totalPage);
        model.addAttribute("sights", sights);
        model.addAttribute("cityId", placeUrlId);
        model.addAttribute("totalSights", totalSights);
        model.addAttribute("beginPage", beginPage);
        model.addAttribute("totalPage", totalPage);
        model.addAttribute("currentPage", currentPage);
        model.addAttribute("placeName", placeName);
        model.addAttribute("menuId", 3);
        return "jsp/sight_list";
    }

    @RequestMapping("/getSight")
    public String getsight(Model model, HttpServletRequest request) {
        String sightUrlId = request.getParameter("sighturlid");
        Sight sight = sightService.getSightByUrlId(request.getSession().getServletContext().getRealPath("/"), sightUrlId);
        model.addAttribute("sight", sight);
        return "jsp/sight";
    }

    @RequestMapping("/getComment")
    @ResponseBody
    public List<Comment> getCommentByPage(@RequestBody Map<String, String> map) {
        String sightUrlId = map.get("sighturlid");
        int pageNum = Integer.parseInt(map.get("pagenum"));
        List<Comment> commentList = sightService.getCommentByPageNum(pageNum, sightUrlId);
        return commentList;
    }

}
