package cn.edu.guet.zti.web.pojo;

public class Shop {
    private int shopId;
    private String shopUrlId;
    private String shopName;
    private String shopScore;
    private String commentNum;
    private String shopLink;
    private String picName;

    public int getShopId() {
        return shopId;
    }

    public void setShopId(int shopId) {
        this.shopId = shopId;
    }

    public String getShopUrlId() {
        return shopUrlId;
    }

    public void setShopUrlId(String shopUrlId) {
        this.shopUrlId = shopUrlId;
    }

    public String getShopName() {
        return shopName;
    }

    public void setShopName(String shopName) {
        this.shopName = shopName;
    }

    public String getShopScore() {
        return shopScore;
    }

    public void setShopScore(String shopScore) {
        this.shopScore = shopScore;
    }

    public String getCommentNum() {
        return commentNum;
    }

    public void setCommentNum(String commentNum) {
        this.commentNum = commentNum;
    }

    public String getShopLink() {
        return shopLink;
    }

    public void setShopLink(String shopLink) {
        this.shopLink = shopLink;
    }

    public String getPicName() {
        return picName;
    }

    public void setPicName(String picName) {
        this.picName = picName;
    }

    @Override
    public String toString() {
        return "Shop{" +
                "shopId=" + shopId +
                ", shopUrlId='" + shopUrlId + '\'' +
                ", shopName='" + shopName + '\'' +
                ", shopScore='" + shopScore + '\'' +
                ", commentNum='" + commentNum + '\'' +
                ", shopLink='" + shopLink + '\'' +
                ", picName='" + picName + '\'' +
                '}';
    }
}
