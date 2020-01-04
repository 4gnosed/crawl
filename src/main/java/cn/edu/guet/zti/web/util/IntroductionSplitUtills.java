package cn.edu.guet.zti.web.util;

import java.util.ArrayList;
import java.util.List;

public class IntroductionSplitUtills {
    /**
     * 景点介绍根据图片数目划分段落，
     * 图片数目为0，1，2，...,10 等不确定数值，
     * 总之在html样式行，每两张图片上方对应一段介绍，
     * 特别的，不足两张图片的景点，介绍只有一段，
     * 其次是对于有奇数值数目图片的景点，介绍划分按照数目+1变成偶数处理
     *
     * @param introduction
     * @param picSize
     * @return
     */
    public static List<String> split(String introduction, int picSize) {
        ArrayList<String> list = new ArrayList<>();
        if (picSize <= 2) {
            list.add(introduction);
            return list;
        } else if (picSize % 2 != 0) {
            picSize++;
        }
        //根据intro的字符大小，平均切分
        picSize /= 2;
        int length = introduction.length();
        int blockSize = length / picSize;
        for (int i = 1; i <= picSize; i++) {
            if (i != picSize) {
                list.add(introduction.substring((i - 1) * blockSize, i * blockSize));
            } else {
                list.add(introduction.substring((i - 1) * blockSize));
            }
        }
        return list;
    }
}
