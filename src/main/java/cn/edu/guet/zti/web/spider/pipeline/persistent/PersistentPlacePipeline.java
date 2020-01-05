package cn.edu.guet.zti.web.spider.pipeline.persistent;

import cn.edu.guet.zti.web.constant.Constant;
import cn.edu.guet.zti.web.dao.PlaceDao;
import cn.edu.guet.zti.web.pojo.Place;
import cn.edu.guet.zti.web.util.UrlFileDownloadUtils;
import cn.edu.guet.zti.web.util.UrlUtils;
import org.junit.Assert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import us.codecraft.webmagic.ResultItems;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.Pipeline;

import java.io.File;
import java.util.List;

/**
 * 下载图片至webapp/img目录下,一个地方的张图片存放于由地方html名命名的目录下,
 * 地方html名的目录其它目录对应一个景点的图片,
 * 每次请求有10个地方，一个地方对应一张图片，
 * 为了通过MyBatis持久化数据到MySql，需要将此类当成服务处，作为组件由Spring框架管理
 */
@Service
public class PersistentPlacePipeline implements Pipeline {

    @Autowired
    private PlaceDao placeDao;

    public void process(ResultItems resultItems, Task task) {
        List<String> placeName = resultItems.get("placeName");
        List<String> pictureLink = resultItems.get("pictureLink");
        List<String> placeLink = resultItems.get("placeLink");


        for (int i = 0; i < placeName.size(); i++) {
            String placeUrlId = UrlUtils.getPlaceUrlIdByPlaceLink(placeLink.get(i));

            //创建目录，下载图片到该目录下
            File picturedirectory = new File(Constant.PICTURE_REAL_PATH + placeUrlId);
            UrlFileDownloadUtils.downloadFile(pictureLink.get(i), picturedirectory);

            Place place = new Place();
            place.setPlaceName(placeName.get(i));
            place.setPlaceUrlId(placeUrlId);
            System.out.println("当前地方：" + place.toString());

            //调用PlaceDao存放至MySql
            //注意这里没有考虑到数据重复问题，可以在插入数据前根据placeurlId查找是否数据库已有记录
            int isSuccess = placeDao.addPlace(place);
            Assert.assertEquals(1, isSuccess);
        }
    }
}
