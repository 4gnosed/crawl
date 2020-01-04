package cn.edu.guet.zti.web.serviceImpl;


import cn.edu.guet.zti.web.constant.Constant;
import cn.edu.guet.zti.web.dao.GoodDao;
import cn.edu.guet.zti.web.dao.GoodWithShopDao;
import cn.edu.guet.zti.web.dao.ShopDao;
import cn.edu.guet.zti.web.pojo.Good;
import cn.edu.guet.zti.web.pojo.Shop;
import cn.edu.guet.zti.web.service.GoodService;
import cn.edu.guet.zti.web.util.FileNameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class GoodServiceImpl implements GoodService {
    @Autowired
    private GoodDao goodDao;

    @Autowired
    private GoodWithShopDao goodWithShopDao;

    @Autowired
    private ShopDao shopDao;

    @Override
    public ArrayList<Good> getGoodsByPlaceUrlId(String webAppPath, String placeUrlId) {
        ArrayList<Good> goodList = goodDao.getGoodsByPlaceUrlId(placeUrlId);
        for (Good good : goodList) {
            good = addPicNameAndShopList(webAppPath, good);
        }
        return goodList;
    }

    @Override
    public Good getGoodsByGoodUrlId(String webAppPath, String goodUrlId) {
        Good good = goodDao.findGoodByUrlId(goodUrlId);
        return addPicNameAndShopList(webAppPath, good);
    }

    /**
     * 通过商品urlid获取商场列表
     *
     * @return
     */
    private Good addPicNameAndShopList(String webAppPath, Good good) {
        String pictureName = FileNameUtils.getPictureNameByKeyword(webAppPath, good.getPlaceUrlId(), Constant.GOOD_KEYWORD, good.getGoodUrlId());
        good.setPicName(pictureName);
        //获取商品对应的商场UrlId
        List<String> shopUrlIdList = goodWithShopDao.findGwsByGoodUrlId(good.getGoodUrlId());
        List<Shop> shopList = new ArrayList<Shop>();
        for (String shopUrlId : shopUrlIdList) {
            Shop shop = shopDao.findShopByUrlId(shopUrlId);
            shop.setPicName(FileNameUtils.getPictureNameByKeyword(webAppPath, good.getPlaceUrlId(),
                    Constant.SHOP_KEYWORD, shop.getShopUrlId()));
            shopList.add(shop);
        }
        good.setShopList(shopList);
        return good;
    }
}
