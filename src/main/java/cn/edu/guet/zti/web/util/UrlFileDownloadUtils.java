package cn.edu.guet.zti.web.util;

import java.io.*;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;

/**
 * 通过URL下载文件的工具类
 *
 * @author Administrator
 */
public class UrlFileDownloadUtils {

    /**
     * 往给定目录写到一个文件
     *
     * @param fileUrl
     * @param directory
     */
    private static void writeFile(String fileUrl, File directory) {
        String fileName = fileUrl.substring(fileUrl.lastIndexOf("/") + 1);
        File file = new File(directory + "/" + fileName);
        if (file.exists()) {
            System.out.println("文件已存在" + file);
            return;
        }
        try {
            SslUtils.ignoreSsl();
            URL url = new URL(fileUrl);
            DataInputStream dataInputStream = new DataInputStream(url.openStream());
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            byte[] buffer = new byte[1024 * 50];
            int length;
            while ((length = dataInputStream.read(buffer)) > 0) {
                fileOutputStream.write(buffer, 0, length);
            }
            dataInputStream.close();
            fileOutputStream.close();
            System.out.println("已写入文件：" + fileUrl);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 下载一张图片
     *
     * @param fileUrl
     * @param directory
     */
    public static void downloadFile(String fileUrl, File directory) {
        if (!directory.exists() && !directory.isDirectory()) {
            //如果目录不存在，则创建目录,并下载图片
            directory.mkdirs();
            UrlFileDownloadUtils.writeFile(fileUrl, directory);
        } else {
            System.out.println("目录已存在" + directory);
        }

    }

    /**
     * 下载一组图片
     *
     * @param fileUrlList
     * @param directory
     */
    public static void downloadFiles(List<String> fileUrlList, File directory) {
        if (!directory.exists() && !directory.isDirectory()) {
            directory.mkdirs();
        }
        for (String fileUrl : fileUrlList) {
            UrlFileDownloadUtils.writeFile(fileUrl, directory);
        }

    }

}
