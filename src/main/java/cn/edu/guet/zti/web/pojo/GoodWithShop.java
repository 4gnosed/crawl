package cn.edu.guet.zti.web.pojo;

public class GoodWithShop {
    private int gwsId;
    private String goodUrlId;
    private String shopUrlId;

    public int getGwsId() {
        return gwsId;
    }

    public void setGwsId(int gwsId) {
        this.gwsId = gwsId;
    }

    public String getGoodUrlId() {
        return goodUrlId;
    }

    public void setGoodUrlId(String goodUrlId) {
        this.goodUrlId = goodUrlId;
    }

    public String getShopUrlId() {
        return shopUrlId;
    }

    public void setShopUrlId(String shopUrlId) {
        this.shopUrlId = shopUrlId;
    }

    @Override
    public String toString() {
        return "GoodWithShop{" +
                "gwsId=" + gwsId +
                ", goodUrlId='" + goodUrlId + '\'' +
                ", shopUrlId='" + shopUrlId + '\'' +
                '}';
    }
}
