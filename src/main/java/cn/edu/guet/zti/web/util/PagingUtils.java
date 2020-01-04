package cn.edu.guet.zti.web.util;

import cn.edu.guet.zti.web.constant.Constant;

/**
 * 翻页：返回显示的页码（首个），显示5个数
 */
public class PagingUtils {
    public static int getTotalPage(String key, int totalPlaces) {
        int pageSize = Constant.SIGHT_PAGE_SIZE;
        if (key.equals(Constant.PLACE_KEYWORD)) {
            pageSize = Constant.PLACE_PAGE_SIZE;
        }
        int totalPage = totalPlaces / pageSize;
        if (totalPlaces % pageSize != 0)
            totalPage++;
        return totalPage;
    }

    public static int getBeginPage(int currentPage, int totalPage) {
        int beginPage = 1;
        if (currentPage >= 5 && currentPage <= totalPage - 3) {
            //当前页置中间，首页开始就是1
            beginPage = currentPage - 2;
        } else if (currentPage > totalPage - 3) {
            //接近尾页
            beginPage = totalPage - 4;
        }
        return beginPage;
    }
}
