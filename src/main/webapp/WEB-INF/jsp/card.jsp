<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>

<c:forEach var="product" items="${products}">
    <div class="shelf-item vui-grid-1-2">
        <a href="/goods/60845/" class="goods-item"
           data-log="cls=已上架&amp;pos=0&amp;neighbor_url_list=[&quot;/goods/60845/&quot;,&quot;/goods/30535/&quot;]">
            <div cover-style="square" class="vui-cover">
                <div class="vui-cover-cnt"><img
                        src="${product.img_url}"
                        alt="三顿半 | 第2代精品冷萃奶萃咖啡套装 带滤泡杯" class="cover"></div>
            </div>
            <div class="goods-info">
                <div class="goods-name vui-line2"><!---->
                        ${product.name}
                </div>
                <div class="goods-foreword vui-line1">「MORNING CALL」 &amp; 「DAILY LATTE」专属拼配</div>
                <div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>59</em></span> <span
                        class="sales-info">已售 2442</span></div>
            </div>
        </a>
    </div>
    <a class="pagination__next">Next</a>
</c:forEach>

<c:if test="${products.size() == 0}">

    <div class="shelf-item vui-grid-1-2">

    </div>

</c:if>