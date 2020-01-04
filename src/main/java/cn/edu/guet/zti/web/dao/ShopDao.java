package cn.edu.guet.zti.web.dao;

import cn.edu.guet.zti.web.pojo.Shop;

public interface ShopDao {
    public int addShop(Shop shop);

    public Shop findShopByUrlId(String shopUrlId);

}
