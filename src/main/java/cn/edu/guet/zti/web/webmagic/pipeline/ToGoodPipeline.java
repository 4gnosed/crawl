package cn.edu.guet.zti.web.webmagic.pipeline;

import cn.edu.guet.zti.web.util.UrlUtils;
import cn.edu.guet.zti.web.webmagic.pipeline.persistent.PersistentGoodAndShopPipeline;
import cn.edu.guet.zti.web.webmagic.processor.GoodProcessor;
import us.codecraft.webmagic.ResultItems;
import us.codecraft.webmagic.Spider;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.Pipeline;

import java.util.List;

public class ToGoodPipeline implements Pipeline {
    public void process(ResultItems resultItems, Task task) {
        PersistentGoodAndShopPipeline persistentGoodAndShopPipeline = resultItems.get("persistentGoodAndShopPipeline");
        List<String> goodLinkList = resultItems.get("goodLinkList");
        if (goodLinkList == null) return;
        for (String goodLink : goodLinkList) {
            Spider.create(new GoodProcessor(UrlUtils.getPlaceUrlIdByGoodLink(goodLink), UrlUtils.getUrlId(goodLink)))
                    .addUrl(UrlUtils.getUrl(goodLink))
//                    .addPipeline(new ConsolePipeline())
                    .addPipeline(persistentGoodAndShopPipeline)
                    .thread(3)
                    .run();
        }
    }
}
