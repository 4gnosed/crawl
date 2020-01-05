package cn.edu.guet.zti.web.spider.processor;

import cn.edu.guet.zti.web.util.UrlUtils;
import cn.edu.guet.zti.web.spider.pipeline.persistent.PersistentSightPipeline;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.processor.PageProcessor;

import java.util.List;

/**
 * 一个地方的页面，爬取此页面的各个景点链接，不保存数据
 */
public class ToSightPageProcessor implements PageProcessor {

    private Site site = Site.me().setRetryTimes(3).setSleepTime(1500).setTimeOut(15000);
    private String placeUrlId;
    private PersistentSightPipeline persistentSightPipeline;

    public ToSightPageProcessor() {
    }

    public ToSightPageProcessor(String placeUrlId) {
        this.placeUrlId = placeUrlId;
    }

    public ToSightPageProcessor(String placeUrlId, PersistentSightPipeline persistentSightPipeline) {
        this.placeUrlId = placeUrlId;
        this.persistentSightPipeline = persistentSightPipeline;
    }

    public void process(Page page) {
        page.putField("placeUrlId", placeUrlId);
        page.putField("persistentSightPipeline", persistentSightPipeline);
        page.putField("sightLink", page.getHtml().xpath("//div[@class='list_mod2']/div[2]/dl/dt/a/@href").all());

        List<String> nextPageLinks = page.getHtml().xpath("//div[@class='pager_v1']/a/@href").all();

        //根据翻页规则，只需添加当前页后面的页面，通过比较页码判断
        String url = page.getUrl().toString();
        int currentPage = 1;
        if (url.contains("s0-p")) {
            currentPage = UrlUtils.getPageNumber(url);
        }
        if (nextPageLinks != null) {
            for (int i = 1; i < nextPageLinks.size() - 1; i++) {
                String nextPagelink = nextPageLinks.get(i);
                //过滤
                if (!nextPagelink.contains("s0-p") ||
                        (UrlUtils.getPageNumber(nextPagelink) < currentPage)) continue;
                page.addTargetRequest(UrlUtils.getUrl(nextPagelink));
            }
            System.out.println();
        }
    }

    public Site getSite() {
        return site;
    }
}
