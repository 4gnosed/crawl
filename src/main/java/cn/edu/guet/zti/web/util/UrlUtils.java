package cn.edu.guet.zti.web.util;

import cn.edu.guet.zti.web.constant.Constant;

import java.util.HashMap;

public class UrlUtils {

    public static String getUrl(String link) {
        return Constant.XIECHENG_ORIGIN_URL + link;
    }

    public static String getPlaceUrlIdByPlaceLink(String placeLink) {
        return placeLink.substring(7, placeLink.indexOf(".html"));
    }

    public static String judgePlaceOrSgiht(String link, int markLeft, int markRight) {
        //是否是地方首页
        if (markLeft - 1 == markRight) {
            return Constant.PLACE_KEYWORD;
        } else {
            return Constant.SIGHT_KEYWORD;
        }
    }

    public static HashMap<String, String> getPlaceUrlIdByLink(String link) {
        HashMap<String, String> map = new HashMap<>();
        int markLeft = link.indexOf("/sight/") + 7;
        int markRight = link.lastIndexOf("/");
        if (UrlUtils.judgePlaceOrSgiht(link, markLeft, markRight).equals(Constant.SIGHT_KEYWORD)) {
            //景点
            map.put(Constant.SIGHT_KEYWORD, link.substring(markLeft, markRight));
        } else {
            //地方
            map.put(Constant.PLACE_KEYWORD, link.substring(markLeft + 1, link.indexOf(".html")));
        }
        return map;
    }

    public static String getPlaceUrlIdBySightLink(String sightLink) {
        return sightLink.substring(sightLink.indexOf("/sight/") + 7, sightLink.lastIndexOf("/"));
    }

    public static String getPlaceUrlIdByFoodLink(String foodLink) {
        return foodLink.substring(10, foodLink.lastIndexOf("/"));
    }

    public static String getPlaceUrlIdByGoodLink(String goodLink) {
        return goodLink.substring(goodLink.indexOf("/goods/") + 7, goodLink.lastIndexOf("/"));
    }

    public static String getPlaceLinkPrefix(String placeUrlId) {
        return "/sight/" + placeUrlId + ".html";
    }

    public static String getFoodLinkPrefix(String placeUrlId) {
        return "/fooditem/" + placeUrlId + ".html";
    }

    public static String getGoodLinkPrefix(String placeUrlId) {
        return "/goods/" + placeUrlId + ".html";
    }

    public static String getPlaceLinkPrefixPlace(String placeUrlId) {
        return "/place/" + placeUrlId + ".html";
    }

    public static String getUrlId(String link) {
        return link.substring(link.lastIndexOf("/") + 1, link.lastIndexOf(".html"));
    }

    public static String getUrlIdWithSuffix(String sightLink) {
        return sightLink.substring(sightLink.lastIndexOf("/") + 1);
    }

    public static String getUrlBySightUrlIdAndPlaceUrlId(String sightUrlId, String placeUrlId) {
        return Constant.XIECHENG_ORIGIN_URL + "/sight/" + placeUrlId + "/" + sightUrlId + ".html";
    }

    public static int getPageNumber(String url) {
        return Integer.parseInt(url.substring(url.indexOf("s0-p") + 4, url.indexOf(".html")));
    }

}
