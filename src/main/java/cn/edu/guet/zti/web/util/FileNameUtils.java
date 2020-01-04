package cn.edu.guet.zti.web.util;

import cn.edu.guet.zti.web.constant.Constant;

import java.io.File;
import java.util.ArrayList;

public class FileNameUtils {
    /**
     * 返回图片名称
     *
     * @param placeUrlId
     * @param keyword
     * @return
     */
    public static String getPictureNameByKeyword(String webAppPath, String placeUrlId, String keyword, String someUrlId) {
        //图片根目录
        String path = "";
        if (keyword.equals(Constant.SIGHT_KEYWORD)) {
            path = webAppPath + "img/" + placeUrlId + "/" + keyword;
        } else {
            path = webAppPath + "img/" + placeUrlId + "/" + keyword + "/" + someUrlId;
        }
        //查找后缀名为jpg的文件，返回文件名
        File[] files = new File(path).listFiles();
        //不存在文件目录
        if (files == null) return null;
        String picName;
        for (File file : files) {
            picName = file.getName();
            if (picName.contains(".jpg"))
                return picName;
        }
        return null;
    }

    /**
     * 返回一个景点的多张图片名称
     *
     * @param webAppPath
     * @param placeUrlId
     * @param sightUrlId
     * @return
     */
    public static ArrayList<String> getPictureNames(String webAppPath, String placeUrlId, String sightUrlId) {
        //图片根目录
        String path = webAppPath + "img/" + placeUrlId + "/" + Constant.SIGHT_KEYWORD + "/" + sightUrlId;
        //查找后缀名为jpg的文件，返回文件名
        File[] files = new File(path).listFiles();
        //不存在文件目录
        if (files == null) return null;
        ArrayList<String> picNames = new ArrayList<>();
        String picName;
        for (File file : files) {
            picName = file.getName();
            if (picName.contains(".jpg"))
                picNames.add(picName);
        }
        return picNames;
    }
}
