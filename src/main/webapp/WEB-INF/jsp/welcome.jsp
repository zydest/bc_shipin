<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html lang="en">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

	<link rel="stylesheet" href="/css/main.css">
	<link rel="stylesheet" href="/css/font-awesome.min.css">
	<link rel="stylesheet" href="/css/xiachufang.css">

</head>
<body>

	<div>
		<form action="/page/goods-search/" method="GET" class="search-bar"><input type="search" placeholder="商品搜索" name="keyword">
			<div class="search-icon" aria-hidden="true"></div>
			<input type="submit" hidden="hidden" value="搜索">
		</form>
		<div class="goods-cat-index vui-grid vui-border" border-style="bottom"><a href="/page/goods-category/24/"
																				  class="vui-grid-1-4 square">
			<div class="goods-category-item"><i class="goods-category-icon goods-category-icon-24"></i>
				<div class="goods-category-name">烘焙</div>
			</div>
		</a><a href="/page/goods-category/18/" class="vui-grid-1-4 square">
			<div class="goods-category-item"><i class="goods-category-icon goods-category-icon-18"></i>
				<div class="goods-category-name">果蔬生鲜</div>
			</div>
		</a><a href="/page/goods-category/22/" class="vui-grid-1-4 square">
			<div class="goods-category-item"><i class="goods-category-icon goods-category-icon-22"></i>
				<div class="goods-category-name">器具</div>
			</div>
		</a><a href="/page/voucher/center" class="vui-grid-1-4 square">
			<div class="goods-category-item"><i class="goods-category-icon goods-category-icon-voucher-center"></i>
				<div class="goods-category-name">领券</div>
			</div>
		</a><a href="/page/goods-category/25/" class="vui-grid-1-4 square">
			<div class="goods-category-item"><i class="goods-category-icon goods-category-icon-25"></i>
				<div class="goods-category-name">方便食品</div>
			</div>
		</a><a href="/page/goods-category/377/" class="vui-grid-1-4 square">
			<div class="goods-category-item"><i class="goods-category-icon goods-category-icon-377"></i>
				<div class="goods-category-name">进口食品</div>
			</div>
		</a><a href="/page/market/426/" class="vui-grid-1-4 square">
			<div class="goods-category-item"><i class="goods-category-icon goods-category-icon-fruit"></i>
				<div class="goods-category-name">时令鲜食</div>
			</div>
		</a><a href="/page/goods-category/" class="vui-grid-1-4 square">
			<div class="goods-category-item"><i class="goods-category-icon goods-category-icon-more"></i>
				<div class="goods-category-name">全部分类</div>
			</div>
		</a></div>
	</div>
	<div class="jumbotron vui-border" border-style="bottom">
		<a cover-style="32-19" href="https://www.xiachufang.com/page/market/448/?utm_source=xiachufang&amp;utm_medium=ectabbig&amp;utm_campaign=shangou"
		   aria-label="市集焦点" data-log="cls=市集焦点" class="vui-cover"
		   style="background-image: url(&quot;http://s2.cdn.xiachufang.com/ddbb31605bcc11e7bc9d0242ac110002_640w_380h.png?imageView2/1/w/640/h/380/interlace/1&quot;);">

		</a>
	</div>
	<div border-style="bottom" class="vui-border">
		<div class="goods-shelf" style="">
			<div grid-style="responsive" class="shelf-list vui-grid">

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
				</c:forEach>

			</div>
		</div>
		<!-- status elements -->
		<div class="scroller-status">
			<div class="infinite-scroll-request loader-ellips">
				...
			</div>
			<p class="infinite-scroll-last">End of content</p>
			<p class="infinite-scroll-error">No more pages to load</p>
		</div>

	</div>
	<div class="container">

		<div class="js-navmenu js-footer-auto-ele shop-nav nav-menu nav-menu-1 has-menu-3">
			<div class="nav-items-wrap">
				<div class="nav-item nav-item-1">
					<a class="mainmenu js-mainmenu" href="https://h5.youzan.com/v2/allgoods/19101326">
						<span class="mainmenu-txt"><i class="fa fa-home" aria-hidden="true"></i> 首页 </span>
					</a>
					<!-- 子菜单 -->
				</div>
				<div class="nav-item">
					<a class="mainmenu js-mainmenu" href="https://h5.youzan.com/v2/cart/19101326">
						<span class="mainmenu-txt"><i class="fa fa-shopping-cart" aria-hidden="true"></i> 购物车</span>
					</a>
					<!-- 子菜单 -->
				</div>
				<div class="nav-item">
					<a class="mainmenu js-mainmenu" href="https://h5.youzan.com/v2/usercenter/nx6dp0s0">
						<span class="mainmenu-txt"><i class="fa fa-user" aria-hidden="true"></i> 我的订单</span>
					</a>
					<!-- 子菜单 -->
				</div>
			</div>
		</div>
	</div>
		<!-- /.container -->
	<script src="/js/lib/jquery-3.2.1.min.js" type="application/javascript"></script>
	<script src="/js/lib/infinite-scroll.pkgd.min.js" type="application/javascript"></script>
	<script src="/js/index.js" type="application/javascript"></script>
</body>

</html>
