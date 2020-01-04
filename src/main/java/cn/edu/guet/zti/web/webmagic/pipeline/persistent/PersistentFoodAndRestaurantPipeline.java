package cn.edu.guet.zti.web.webmagic.pipeline.persistent;

import cn.edu.guet.zti.web.constant.Constant;
import cn.edu.guet.zti.web.dao.FoodDao;
import cn.edu.guet.zti.web.dao.FoodWithRestaurantDao;
import cn.edu.guet.zti.web.dao.RestaurantDao;
import cn.edu.guet.zti.web.pojo.Food;
import cn.edu.guet.zti.web.pojo.FoodWithRestaurant;
import cn.edu.guet.zti.web.pojo.Restaurant;
import cn.edu.guet.zti.web.util.UrlFileDownloadUtils;
import cn.edu.guet.zti.web.util.UrlUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import us.codecraft.webmagic.ResultItems;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.Pipeline;

import java.io.File;
import java.util.List;

/**
 * 持久化美食和餐馆，对于一个美食的若干个餐馆，为这1-n的关系建立关联实体
 */
@Service
public class PersistentFoodAndRestaurantPipeline implements Pipeline {

    @Autowired
    private FoodDao foodDao;

    @Autowired
    private FoodWithRestaurantDao fwrDao;

    @Autowired
    private RestaurantDao restaurantDao;

    public void process(ResultItems resultItems, Task task) {
        String placeUrlId = resultItems.get("placeUrlId").toString();
        String foodUrlId = resultItems.get("foodUrlId").toString();
        persistentFood(resultItems, placeUrlId, foodUrlId);
        persistentRestaurant(resultItems, placeUrlId, foodUrlId);
    }

    /**
     * 持久化美食
     *
     * @param resultItems
     * @param foodUrlId
     * @return
     */
    private void persistentFood(ResultItems resultItems, String placeUrlId, String foodUrlId) {
        if (foodDao.findFoodByUrlId(foodUrlId) != null) {
            System.out.println("美食已存在：" + foodUrlId);
            return;
        }
        String picUrl = resultItems.get("picUrl").toString();
        //保存美食图片
        File pictureDirectory = new File(Constant.PICTURE_REAL_PATH + placeUrlId + "\\food\\" + foodUrlId);
        UrlFileDownloadUtils.downloadFile(picUrl, pictureDirectory);

        Food food = new Food();
        food.setPlaceUrlId(placeUrlId);
        food.setFoodUrlId(foodUrlId);
        food.setFoodName(resultItems.get("foodName").toString());
        food.setIntroduction(resultItems.get("introduction").toString());
        food.setLikeNum(resultItems.get("likeNum").toString());
        int j = foodDao.addFood(food);
        if (j == 1) {
            System.out.println("持久化美食" + food.getPlaceUrlId() + "---" + food.getFoodUrlId());
        }
    }

    /**
     * 持久化美食和餐馆关联实体
     *
     * @param resultItems
     * @param foodUrlId
     * @param restaurantUrlId
     */
    private void persistentFoodWithRestaurant(ResultItems resultItems, String foodUrlId, String restaurantUrlId) {
        if (fwrDao.findFwrByUrlIds(foodUrlId, restaurantUrlId) != null) {
            System.out.println("关联记录已存在：" + foodUrlId + "---" + restaurantUrlId);
            return;
        }
        FoodWithRestaurant fwr = new FoodWithRestaurant();
        fwr.setFoodUrlId(foodUrlId);
        fwr.setRestaurantUrlId(restaurantUrlId);
        int j = fwrDao.addFwr(fwr);
        if (j == 1) {
            System.out.println("持久化美食餐馆关联实体" + fwr.getFoodUrlId() + "---" + fwr.getRestaurantUrlId());
        }
    }

    /**
     * 持久化餐馆
     *
     * @param resultItems
     * @param placeUrlId
     * @param foodUrlId
     */
    private void persistentRestaurant(ResultItems resultItems, String placeUrlId, String foodUrlId) {
        List<String> rNameList = resultItems.get("rNameList");
        List<String> rPicUrlList = resultItems.get("rPicUrlList");
        List<String> scoreList = resultItems.get("scoreList");
        List<String> addressList = resultItems.get("addressList");
        List<String> introList = resultItems.get("introList");
        List<String> rLinkList = resultItems.get("rLinkList");
        for (int i = 0; i < rNameList.size(); i++) {
            String restaurantUrlId = UrlUtils.getUrlId(rLinkList.get(i));

            //持久化美食和餐馆关联实体
            persistentFoodWithRestaurant(resultItems, foodUrlId, restaurantUrlId);

            //是否已存在
            if (restaurantDao.findRestaurantByUrlId(restaurantUrlId) != null) {
                System.out.println("餐馆已存在：" + restaurantUrlId + "\n");
                //添加餐馆链接属性
//                int j = restaurantDao.updateRestaurantLinkByUrlId(rLinkList.get(i), restaurantUrlId);
//                if (j == 1) {
//                    System.out.println("更新餐馆链接：" + restaurantUrlId + "---" + rLinkList.get(i) + "\n");
//                }
                continue;
            }

            //保存餐馆图片
            File pictureDirectory = new File(Constant.PICTURE_REAL_PATH + placeUrlId + "\\restaurant\\" + restaurantUrlId);
            UrlFileDownloadUtils.downloadFile(rPicUrlList.get(i), pictureDirectory);

            Restaurant restaurant = new Restaurant();
            restaurant.setRestaurantName(rNameList.get(i));
            restaurant.setRestaurantUrlId(restaurantUrlId);
            restaurant.setScore(scoreList.get(i));
            restaurant.setAddress(addressList.get(i));
            restaurant.setIntroduction(introList.get(i));
            restaurant.setLink(rLinkList.get(i));
            int j = restaurantDao.addRestaurant(restaurant);
            if (j == 1) {
                System.out.println("持久化餐馆" + restaurant.getRestaurantUrlId() + "\n");
            }
        }
    }

}
