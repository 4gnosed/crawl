package cn.edu.guet.zti.web.constant;

import java.io.File;

public class Constant {
    public final static String XIECHENG_ORIGIN_URL = "https://you.ctrip.com";
    public final static String GUANGXI_SIGHT_LIST_URL = XIECHENG_ORIGIN_URL + "/countrysightlist/guangxi100052.html";
    public static final String PICTURE_REAL_PATH = new File("").getAbsolutePath()
            + "\\src\\main\\webapp\\img\\";
    public static final String READ_TIME_OUT_KEYWORD = "java.net.SocketTimeoutException: Read timed out";
    public static final String ILLEGAL_ARGUMENT_KEYWORD = "java.lang.IllegalArgumentException";
    public static final String CONNECTION_TIME_OUT_KEYWORD = "org.apache.http.conn.ConnectTimeoutException";
    public static final String DOWNLOAD_PAGE_KEYWORD = "download page";
    public static final String NUMBER_FORMAT_KEYWORD = "java.lang.NumberFormatException";
    public static final String PROCESS_REQUEST_KEYWORD = "process request";
    public static final String PLACE_KEYWORD = "place";
    public static final String SIGHT_KEYWORD = "sight";
    public static final String FOOD_KEYWORD = "food";
    public static final String GOOD_KEYWORD = "good";
    public static final String SHOP_KEYWORD = "shop";
    public static final String RESTAURANT_KEYWORD = "restaurant";
    public static final int PLACE_PAGE_SIZE = 10;
    public static final int SIGHT_PAGE_SIZE = 15;
    public static final int COMMENT_PAGE_SIZE = 15;
    public static final int FIRST_PAGE = 1;
    public static final int START = 0;
    public static final int TOP_FIVE_PAGE_SIZE = 5;
}
