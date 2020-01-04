package cn.edu.guet.zti.web.webmagic.pipeline;

import cn.edu.guet.zti.web.constant.Constant;
import cn.edu.guet.zti.web.util.UrlUtils;
import cn.edu.guet.zti.web.webmagic.processor.ToSightPageProcessor;
import us.codecraft.webmagic.ResultItems;
import us.codecraft.webmagic.Spider;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.Pipeline;

import java.util.List;

/**
 * 获取所有地方的链，根据链接爬取各个地方的各个景点,n*m,
 * 注意，这里什么传给persistentSightPipeline呢？代理模式？或者说AOP?
 * 这样的，首先只需为ToSightPageProcessor新建一个带placeUrlId参数的构造方法，
 * 传入ToSightPageProcessor后再利用page.putField()保存参数，
 * 然后SightPipeline获取placeUrlId并再次以同样的方式传给SightPageProcessor(为其新建构造函数),
 * 最终persistentSightPipeline同其它字段一样可以获取得到placeUrlId
 */
public class ToSightPipeline implements Pipeline {

    public void process(ResultItems resultItems, Task task) {

        List<String> placeLinkList = resultItems.get("placeLink");
        String placeLink;
        for (int i = 0; i < placeLinkList.size(); i++) {
            //根据该地方的链接，进入地方的景点列表页
            placeLink = placeLinkList.get(i).replace("place", "sight");

            Spider.create(new ToSightPageProcessor(UrlUtils.getPlaceUrlIdByPlaceLink(placeLink)))
//                    .addPipeline(new ConsolePipeline())
                    //根据该Spider获取到的景点链接，再创建Spider爬取每一个景点的详细信息
                    .addPipeline(new SightPipeline())
                    .addUrl(Constant.XIECHENG_ORIGIN_URL + placeLink)
                    .thread(3)
                    .run();
        }
    }
}
