package cn.edu.guet.zti.web.spider;

import cn.edu.guet.zti.web.dao.PlaceDao;
import cn.edu.guet.zti.web.util.UrlUtils;
import cn.edu.guet.zti.web.spider.pipeline.ToGoodPipeline;
import cn.edu.guet.zti.web.spider.pipeline.persistent.PersistentGoodAndShopPipeline;
import cn.edu.guet.zti.web.spider.processor.ToGoodProcessor;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import us.codecraft.webmagic.Spider;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring/*.xml")
public class SpiderGood {
    @Autowired
    private PlaceDao placeDao;

    @Autowired
    private PersistentGoodAndShopPipeline persistentGoodAndShopPipeline;

    /**
     * 爬取所有地方的商品和商店并持久化
     */
    @Test
    public void crawlAllPlaceAllGoodAndPersistent() {
        List<String> placeUrlIdList = placeDao.getAllPlaceUrlId();
        String goodLink;
        for (String placeUrlId : placeUrlIdList) {
            goodLink = UrlUtils.getGoodLinkPrefix(placeUrlId);
            Spider.create(new ToGoodProcessor(persistentGoodAndShopPipeline))
                    .addUrl(UrlUtils.getUrl(goodLink))
//                    .addPipeline(new ConsolePipeline())
                    .addPipeline(new ToGoodPipeline())
                    .thread(3)
                    .run();
        }
    }

}
