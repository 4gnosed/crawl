package cn.edu.guet.zti.web.spider.pipeline;

import us.codecraft.webmagic.ResultItems;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.Pipeline;

import java.util.Map;

public class ConsolePipeline implements Pipeline {
    public void process(ResultItems resultItems, Task task) {
        System.out.println("当前页面: " + resultItems.getRequest().getUrl());
        for (Map.Entry<String, Object> entry : resultItems.getAll().entrySet()) {
            System.out.println(entry.getKey() + ":\t" + entry.getValue());
        }
        System.out.println();
    }
}
