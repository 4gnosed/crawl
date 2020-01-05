<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="ttd_topnav_box">
    <div class="ttd_topnav"
         style="position: relative; overflow: visible; top: 0px; left: 0px; right: 0px; width: 100%; height: 39px;">
        <div class="innerbox">
            <ul class="cf">

                <c:choose>
                    <c:when test="${menuId == 2}">
                        <li class="ttd_first_nav current">
                            <a href="place_list" style="color: white;">景点</a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li>
                            <a href="place_list">景点</a>
                        </li>
                    </c:otherwise>
                </c:choose>

                <c:choose>
                    <c:when test="${menuId == 4}">
                        <li class="ttd_first_nav current">
                            <a href="getFoods" style="color: white;">美食</a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li>
                            <a href="getFoods">美食</a>
                        </li>
                    </c:otherwise>
                </c:choose>

                <c:choose>
                    <c:when test="${menuId == 5}">
                        <li class="ttd_first_nav current">
                            <a href="getGoods" style="color: white;">购物</a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li>
                            <a href="getGoods">购物</a>
                        </li>
                    </c:otherwise>
                </c:choose>

            </ul>
        </div>
    </div>
</div>
