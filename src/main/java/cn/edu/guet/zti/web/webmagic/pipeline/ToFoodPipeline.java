package cn.edu.guet.zti.web.webmagic.pipeline;

import cn.edu.guet.zti.web.util.UrlUtils;
import cn.edu.guet.zti.web.webmagic.pipeline.persistent.PersistentFoodAndRestaurantPipeline;
import cn.edu.guet.zti.web.webmagic.processor.FoodProcessor;
import us.codecraft.webmagic.ResultItems;
import us.codecraft.webmagic.Spider;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.Pipeline;

import java.util.List;

public class ToFoodPipeline implements Pipeline {
    public void process(ResultItems resultItems, Task task) {
        PersistentFoodAndRestaurantPipeline persistentFoodAndRestaurantPipeline = resultItems.get("persistentFoodAndRestaurantPipeline");
        List<String> foodLinkList = resultItems.get("foodLinkList");
        if (foodLinkList == null)
            return;
        for (String foodLink : foodLinkList) {
            Spider.create(new FoodProcessor(UrlUtils.getPlaceUrlIdByFoodLink(foodLink), UrlUtils.getUrlId(foodLink)))
                    .addUrl(UrlUtils.getUrl(foodLink))
//                    .addPipeline(new ConsolePipeline())
                    .addPipeline(persistentFoodAndRestaurantPipeline)
                    .thread(5)
                    .run();
        }
    }
}
