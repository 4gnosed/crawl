package cn.edu.guet.zti.web.util;

import cn.edu.guet.zti.web.pojo.Good;
import cn.edu.guet.zti.web.pojo.Shop;

import java.util.ArrayList;

/**
 * 数组去重
 */
public class DistinctArrayListUtils {
    public static ArrayList<Shop> distinct(ArrayList<Good> goodList) {
        ArrayList<Shop> shopList = new ArrayList<>();
        for (Good good : goodList) {
            for (Shop shop : good.getShopList()) {
                int i = 0;
                for (Shop shopHave : shopList) {
                    if (shopHave.getShopUrlId().equals(shop.getShopUrlId())) {
                        i = 1;
                    }
                }
                if (i == 0) {
                    shopList.add(shop);
                }
            }
        }
        return shopList;
    }
}
