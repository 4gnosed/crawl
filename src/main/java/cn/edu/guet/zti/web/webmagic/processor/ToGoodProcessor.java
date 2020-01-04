package cn.edu.guet.zti.web.webmagic.processor;

import cn.edu.guet.zti.web.webmagic.pipeline.persistent.PersistentGoodAndShopPipeline;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.processor.PageProcessor;

import java.util.List;

/**
 * 解析一个地方的特色商品列表页面中，各个商品的链接
 */
public class ToGoodProcessor implements PageProcessor {
    private Site site = Site.me().setRetryTimes(3).setSleepTime(3000).setTimeOut(10000);
    private PersistentGoodAndShopPipeline persistentGoodAndShopPipeline;

    public ToGoodProcessor(PersistentGoodAndShopPipeline persistentGoodAndShopPipeline) {
        this.persistentGoodAndShopPipeline = persistentGoodAndShopPipeline;
    }

    public void process(Page page) {
        page.putField("persistentGoodAndShopPipeline", persistentGoodAndShopPipeline);
        List<String> goodLinkList = page.getHtml().xpath("//div[@class='rdetailbox']/dl/dt/a/@href").all();
        page.putField("goodLinkList", goodLinkList != null ? goodLinkList : " ");
    }

    public Site getSite() {
        return site;
    }
}
