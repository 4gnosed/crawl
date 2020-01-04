package cn.edu.guet.zti.web.webmagic.pipeline.persistent;

import cn.edu.guet.zti.web.constant.Constant;
import cn.edu.guet.zti.web.dao.GoodDao;
import cn.edu.guet.zti.web.dao.GoodWithShopDao;
import cn.edu.guet.zti.web.dao.ShopDao;
import cn.edu.guet.zti.web.pojo.*;
import cn.edu.guet.zti.web.util.UrlFileDownloadUtils;
import cn.edu.guet.zti.web.util.UrlUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import us.codecraft.webmagic.ResultItems;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.Pipeline;

import java.io.File;
import java.util.List;

/**
 * 持久化商品和商店
 */
@Service
public class PersistentGoodAndShopPipeline implements Pipeline {

    @Autowired
    private GoodDao goodDao;

    @Autowired
    private GoodWithShopDao gwsDao;

    @Autowired
    private ShopDao shopDao;

    public void process(ResultItems resultItems, Task task) {
        String placeUrlId = resultItems.get("placeUrlId").toString();
        String goodUrlId = resultItems.get("goodUrlId").toString();
        persistentGood(resultItems, placeUrlId, goodUrlId);
        persistentShop(resultItems, placeUrlId, goodUrlId);
    }

    /**
     * 持久化商品
     *
     * @param resultItems
     * @param goodUrlId
     * @return
     */
    private void persistentGood(ResultItems resultItems, String placeUrlId, String goodUrlId) {
        if (goodDao.findGoodByUrlId(goodUrlId) != null) {
            System.out.println("商品已存在：" + goodUrlId);
            return;
        }
        String picUrl = resultItems.get("picUrl").toString();
        //保存商品图片
        File pictureDirectory = new File(Constant.PICTURE_REAL_PATH + placeUrlId + "\\good\\" + goodUrlId);
        UrlFileDownloadUtils.downloadFile(picUrl, pictureDirectory);

        Good good = new Good();
        good.setPlaceUrlId(placeUrlId);
        good.setGoodUrlId(goodUrlId);
        good.setGoodName(resultItems.get("goodName").toString());
        good.setIntroduction(resultItems.get("introduction").toString());
        good.setLikeNum(resultItems.get("likeNum").toString());
        int j = goodDao.addGood(good);
        if (j == 1) {
            System.out.println("持久化商品" + good.getPlaceUrlId() + "---" + good.getGoodUrlId());
        }
    }

    /**
     * 持久化商品和商店关联实体
     *
     * @param resultItems
     * @param goodUrlId
     * @param shopUrlId
     */
    private void PersistentGoodAndShopPipeline(ResultItems resultItems, String goodUrlId, String shopUrlId) {
        if (gwsDao.findGwsByUrlIds(goodUrlId, shopUrlId) != null) {
            System.out.println("关联记录已存在：" + goodUrlId + "---" + shopUrlId);
            return;
        }
        GoodWithShop gws = new GoodWithShop();
        gws.setGoodUrlId(goodUrlId);
        gws.setShopUrlId(shopUrlId);
        int j = gwsDao.addGoodWithShop(gws);
        if (j == 1) {
            System.out.println("持久化商品商店关联实体" + gws.getGoodUrlId() + "---" + gws.getShopUrlId());
        }
    }

    /**
     * 持久化商店
     *
     * @param resultItems
     * @param placeUrlId
     * @param goodUrlId
     */
    private void persistentShop(ResultItems resultItems, String placeUrlId, String goodUrlId) {
        List<String> sNameList = resultItems.get("sNameList");
        List<String> sPicUrlList = resultItems.get("sPicUrlList");
        List<String> scoreList = resultItems.get("scoreList");
        List<String> commentNumList = resultItems.get("commentNumList");
        List<String> sLinkList = resultItems.get("sLinkList");
        for (int i = 0; i < sNameList.size(); i++) {
            String link = sLinkList.get(i);
            String shopUrlId = UrlUtils.getUrlId(link);

            //持久化商品和商店关联实体
            PersistentGoodAndShopPipeline(resultItems, goodUrlId, shopUrlId);

            //是否已存在
            if (shopDao.findShopByUrlId(shopUrlId) != null) {
                System.out.println("商店已存在：" + shopUrlId + "\n");
                continue;
            }

            //保存商店图片
            File pictureDirectory = new File(Constant.PICTURE_REAL_PATH + placeUrlId + "\\shop\\" + shopUrlId);
            UrlFileDownloadUtils.downloadFile(sPicUrlList.get(i), pictureDirectory);

            Shop shop = new Shop();
            shop.setShopName(sNameList.get(i));
            shop.setShopUrlId(shopUrlId);
            shop.setShopScore(scoreList.get(i));
            shop.setCommentNum(commentNumList.get(i));
            shop.setShopLink(link);
            int j = shopDao.addShop(shop);
            if (j == 1) {
                System.out.println("持久化商店：" + shop.getShopUrlId() + "\n");
            }
        }
    }

}
