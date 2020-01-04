package cn.edu.guet.zti.web.util;

import cn.edu.guet.zti.web.constant.Constant;

import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;

public class CheckTimeOutUtils {
    public static ArrayList<String> getPlaceLinklist(int beginLine, String filePath) {
        File file = new File(filePath);
        if (!file.exists()) {
            System.out.println("文件不存在");
            return null;
        }
        //地方首页或者地方非首页
        ArrayList<String> placeLinklist = new ArrayList<String>();
        //超时的景点对应的地方作为key，地方的超时景点作为value
        HashMap<String, Integer> placeCount = new HashMap<String, Integer>();

        String preLine = "";
        String line = "";
        try {
            FileReader fileReader = new FileReader(file);
            BufferedReader bufferedReader = new BufferedReader(fileReader);
            for (int i = 1; i < beginLine; i++) {
                line = bufferedReader.readLine();
            }
            preLine = line;
            String link = "";
            String placeUrlId = "";
            while ((line = bufferedReader.readLine()) != null) {
                if ((line.contains(Constant.READ_TIME_OUT_KEYWORD) || line.contains(Constant.CONNECTION_TIME_OUT_KEYWORD))
                        && preLine.contains(Constant.DOWNLOAD_PAGE_KEYWORD)) {
                    link = preLine.substring(preLine.indexOf("/sight/"), preLine.indexOf(".html") + 5);
                    String s = link.substring(1);
                    int i = s.indexOf("/");
                    int j = s.lastIndexOf("/");
                    if (i != j && !s.contains("s0-p")) {
                        //景点页，s中sight后面第一个斜杠不是整个s最后一个斜杠,且不含s0-p
                        //判断该景点所属地方的超时景点是否大于3
                        placeUrlId = link.substring(7, link.lastIndexOf("/"));
                        boolean found = false;
                        for (String place : placeCount.keySet()) {
                            Integer cnt = 0;
                            if (place.equals(placeUrlId)) {
                                found = true;
                                cnt = placeCount.get(place);
                                placeCount.put(place, ++cnt);
                            }
                            if (cnt == 3) {
                                placeLinklist.add(link.substring(0, link.lastIndexOf("/")) + ".html");
                            }
                        }
                        if (!found) {
                            placeCount.put(placeUrlId, 1);
                        }
                    } else {
                        //地方首页
                        // 地方非首页，含s0-p
                        if (placeLinklist.contains(link)) {
                            placeLinklist.add(link);
                        }
                    }
                } else if (line.contains(Constant.ILLEGAL_ARGUMENT_KEYWORD)) {
                    if (placeLinklist.contains(link)) {
                        placeLinklist.add(link);
                    }
                }
                preLine = line;
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return placeLinklist;
    }

    public static ArrayList<String> getSightLinklist(int beginLine, String filePath) {
        File file = new File(filePath);
        if (!file.exists()) {
            System.out.println("文件不存在");
            return null;
        }
        //地方首页或者地方非首页
        ArrayList<String> sightUrllist = new ArrayList<String>();
        String line = "";
        try {
            FileReader fileReader = new FileReader(file);
            BufferedReader bufferedReader = new BufferedReader(fileReader);
            for (int i = 1; i < beginLine; i++) {
                line = bufferedReader.readLine();
            }
            String preLine = line;
            while ((line = bufferedReader.readLine()) != null) {
                boolean timeoutFlag = (line.contains(Constant.READ_TIME_OUT_KEYWORD) || line.contains(Constant.CONNECTION_TIME_OUT_KEYWORD))
                        && preLine.contains(Constant.DOWNLOAD_PAGE_KEYWORD);
                boolean nfFlag = line.contains(Constant.NUMBER_FORMAT_KEYWORD) && preLine.contains(Constant.PROCESS_REQUEST_KEYWORD);
                if (timeoutFlag || nfFlag) {
                    String link = preLine.substring(preLine.indexOf("https://"), preLine.indexOf(".html") + 5);
                    sightUrllist.add(link);
                }
                preLine = line;
            }

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return sightUrllist;
    }

    public static HashMap<String, String> getSightUrlIdMap(int beginLine, String filePath, HashMap<String, String> sightUrlIdMap) {
        File file = new File(filePath);
        if (!file.exists()) {
            System.out.println("文件不存在");
            return null;
        }
        FileReader fileReader = null;
        try {
            fileReader = new FileReader(file);
            BufferedReader bufferedReader = new BufferedReader(fileReader);
            String line = "";
            String preLine = "";
            for (int i = 1; i < beginLine; i++) {
                bufferedReader.readLine();
            }
            while ((line = bufferedReader.readLine()) != null) {
                if (line.contains("sightUrlId:")) {
                    String sightUrlId = line.substring(12);
                    if (!sightUrlIdMap.containsKey(sightUrlId)) {
                        sightUrlIdMap.put(sightUrlId, preLine.substring(12));
                    }
                }
                preLine = line;
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return sightUrlIdMap;
    }

}
