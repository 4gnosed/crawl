package cn.edu.guet.zti.web.dao;

import cn.edu.guet.zti.web.pojo.GoodWithShop;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GoodWithShopDao {
    public int addGoodWithShop(GoodWithShop gws);

    public GoodWithShop findGwsByUrlId(String gwsId);

    public GoodWithShop findGwsByUrlIds(@Param("goodUrlId") String goodUrlId, @Param("shopUrlId") String shopUrlId);

    List<String> findGwsByGoodUrlId(String goodUrlId);
}
