package cn.edu.guet.zti.web.webmagic;

import cn.edu.guet.zti.web.dao.PlaceDao;
import cn.edu.guet.zti.web.util.UrlUtils;
import cn.edu.guet.zti.web.webmagic.pipeline.ConsolePipeline;
import cn.edu.guet.zti.web.webmagic.pipeline.ToFoodPipeline;
import cn.edu.guet.zti.web.webmagic.pipeline.persistent.PersistentFoodAndRestaurantPipeline;
import cn.edu.guet.zti.web.webmagic.processor.ToFoodProcessor;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import us.codecraft.webmagic.Spider;

import java.io.File;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring/*.xml")
public class SpiderFood {
    @Autowired
    private PlaceDao placeDao;

    @Autowired
    private PersistentFoodAndRestaurantPipeline persistentFoodAndRestaurantPipeline;

    /**
     * 爬取所有地方的美食和餐馆并持久化
     */
    @Test
    public void crawlAllPlaceAllFoodAndPersistent() {
        List<String> placeUrlIdList = placeDao.getAllPlaceUrlId();
        String foodLink;
        for (String placeUrlId : placeUrlIdList) {
            foodLink = UrlUtils.getFoodLinkPrefix(placeUrlId);
            Spider.create(new ToFoodProcessor(persistentFoodAndRestaurantPipeline))
                    .addUrl(UrlUtils.getUrl(foodLink))
//                    .addPipeline(new ConsolePipeline())
                    .addPipeline(new ToFoodPipeline())
                    .thread(5)
                    .run();
        }
    }

    /**
     * 创建多级目录
     */
    @Test
    public void createMultiLayerDirectory() {
        File directory = new File("F:\\MyCode\\IdeaProjects\\zti\\src\\main\\webapp\\WEB-INF\\img\\guilin28\\food\\7755859-p1");
        if (!directory.exists() && !directory.isDirectory()) {
            directory.mkdirs();
        }
    }
}
