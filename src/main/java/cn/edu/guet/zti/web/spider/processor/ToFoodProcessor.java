package cn.edu.guet.zti.web.spider.processor;

import cn.edu.guet.zti.web.spider.pipeline.persistent.PersistentFoodAndRestaurantPipeline;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.processor.PageProcessor;

import java.util.List;

/**
 * 解析一个地方的美食列表页面中，各个美食的链接
 */
public class ToFoodProcessor implements PageProcessor {
    private Site site = Site.me().setRetryTimes(3).setSleepTime(3000).setTimeOut(10000);
    private PersistentFoodAndRestaurantPipeline persistentFoodAndRestaurantPipeline;

    public ToFoodProcessor(PersistentFoodAndRestaurantPipeline persistentFoodAndRestaurantPipeline) {
        this.persistentFoodAndRestaurantPipeline = persistentFoodAndRestaurantPipeline;
    }

    public void process(Page page) {
        page.putField("persistentFoodAndRestaurantPipeline", persistentFoodAndRestaurantPipeline);
        List<String> foodLinkList = page.getHtml().xpath("//div[@class='rdetailbox']/dl/dt/a/@href").all();
        page.putField("foodLinkList", foodLinkList);
    }

    public Site getSite() {
        return site;
    }
}
