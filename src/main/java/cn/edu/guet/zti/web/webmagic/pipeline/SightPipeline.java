package cn.edu.guet.zti.web.webmagic.pipeline;

import cn.edu.guet.zti.web.util.UrlUtils;
import cn.edu.guet.zti.web.webmagic.downloader.CustomHttpClientDownloader;
import cn.edu.guet.zti.web.webmagic.pipeline.persistent.PersistentSightPipeline;
import cn.edu.guet.zti.web.webmagic.processor.SightPageProcessor;
import us.codecraft.webmagic.ResultItems;
import us.codecraft.webmagic.Spider;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.Pipeline;

import java.util.List;

/**
 * 根据一个地方的所有景点链接，派发给一个PageProcessor用来爬取景点的详细信息
 */
public class SightPipeline implements Pipeline {

    public void process(ResultItems resultItems, Task task) {
        List<String> sightLinkList = resultItems.get("sightLink");
        //非首页
        if (sightLinkList != null) {
            String placeUrlId = resultItems.get("placeUrlId");
            PersistentSightPipeline persistentSightPipeline = resultItems.get("persistentSightPipeline");

            for (String link : sightLinkList) {
                //爬取每一个景点的详细信息
                Spider.create(new SightPageProcessor(placeUrlId))
                        .addUrl(UrlUtils.getUrl(link))
                        .setDownloader(new CustomHttpClientDownloader())
                        //查看景点信息
//                        .addPipeline(new ConsolePipeline())
                        //保存景点详细信息到数据库
                        .addPipeline(persistentSightPipeline)
                        .thread(3)
                        .run();
            }
        }
    }
}
