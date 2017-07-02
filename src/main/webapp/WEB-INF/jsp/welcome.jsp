<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html lang="en">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

	<script src="/js/jquery-3.2.1.min.js" ></script>

	<%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">--%>
	<%--<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>--%>
	<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>--%>
	<%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>--%>

	<%--<script src="/lib/tether/js/tether.min.js" ></script>--%>
	<%--<link rel="stylesheet" href="/lib/tether/css/tether.min.css">--%>
	<%--<link rel="stylesheet" href="/lib/bootstrap/css/bootstrap.min.css">--%>
	<link rel="stylesheet" href="/css/main.css">
	<link rel="stylesheet" href="/css/font-awesome.min.css">
	<link rel="stylesheet" href="/css/xiachufang.css">
	<%--<script src="/lib/bootstrap/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>--%>


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
				<div class="shelf-item vui-grid-1-2">
					<a href="/goods/60845/" class="goods-item"
					   data-log="cls=已上架&amp;pos=0&amp;neighbor_url_list=[&quot;/goods/60845/&quot;,&quot;/goods/30535/&quot;]">
						<div cover-style="square" class="vui-cover">
							<div class="vui-cover-cnt"><img
									src="http://s1.cdn.xiachufang.com/00ce1ab4355d11e7bc9d0242ac110002_640w_640h.jpg@2o_50sh_1pr_1l_640w_640h_1c_1e_90q_1wh"
									alt="三顿半 | 第2代精品冷萃奶萃咖啡套装 带滤泡杯" class="cover"></div>
						</div>
						<div class="goods-info">
							<div class="goods-name vui-line2"><!---->
								三顿半 | 第2代精品冷萃奶萃咖啡套装 带滤泡杯
							</div>
							<div class="goods-foreword vui-line1">「MORNING CALL」 &amp; 「DAILY LATTE」专属拼配</div>
							<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>59</em></span> <span
									class="sales-info">已售 2442</span></div>
						</div>
					</a>
				</div>

				<div class="shelf-item vui-grid-1-2">
					<a href="/goods/30535/" class="goods-item"
					   data-log="cls=已上架&amp;pos=1&amp;neighbor_url_list=[&quot;/goods/60845/&quot;,&quot;/goods/30535/&quot;,&quot;/goods/34418/&quot;]">
						<div cover-style="square" class="vui-cover">
							<div class="vui-cover-cnt"><img
									src="http://s2.cdn.xiachufang.com/8d819138572811e7bc9d0242ac110002_640w_640h.jpg?imageView2/1/w/640/h/640/interlace/1/q/90"
									alt="【现货】日本进口PALETAS丨冰棍棒冰模具 含50支木棒（四款可选）" class="cover"></div>
						</div>
						<div class="goods-info">
							<div class="goods-name vui-line2"><!---->
								【现货】日本进口PALETAS丨冰棍棒冰模具 含50支木棒（四款可选）
							</div>
							<div class="goods-foreword vui-line1">自己在家也可以轻松做出和Paletas一样漂亮美味的水果棒冰哦</div>
							<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>28</em></span> <span
									class="sales-info">已售 731</span></div>
						</div>
					</a>
				</div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/34418/" class="goods-item"
														data-log="cls=已上架&amp;pos=2&amp;neighbor_url_list=[&quot;/goods/60845/&quot;,&quot;/goods/30535/&quot;,&quot;/goods/34418/&quot;,&quot;/goods/62729/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s2.cdn.xiachufang.com/a909935c2bc711e68955b82a72e00100.jpg?imageView2/1/w/640/h/640/interlace/1/q/90"
								alt="时怡 | 中粮优选什锦果仁1020g" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							时怡 | 中粮优选什锦果仁1020g
						</div>
						<div class="goods-foreword vui-line1">原味焙烤，不含添加剂</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>149</em></span> <span
								class="sales-info">已售 5939</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/62729/" class="goods-item"
														data-log="cls=已上架&amp;pos=3&amp;neighbor_url_list=[&quot;/goods/30535/&quot;,&quot;/goods/34418/&quot;,&quot;/goods/62729/&quot;,&quot;/goods/63959/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s1.cdn.xiachufang.com/18fb0a304c3611e7bc9d0242ac110002_800w_800h.jpg@2o_50sh_1pr_1l_640w_640h_1c_1e_90q_1wh"
								alt="沃隆 | 每日坚果 750g/30包" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							沃隆 | 每日坚果 750g/30包
						</div>
						<div class="goods-foreword vui-line1">一包吃到N种健康坚果</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>138</em></span> <span
								class="sales-info">已售 1552</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/63959/" class="goods-item"
														data-log="cls=已上架&amp;pos=4&amp;neighbor_url_list=[&quot;/goods/34418/&quot;,&quot;/goods/62729/&quot;,&quot;/goods/63959/&quot;,&quot;/goods/64053/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s2.cdn.xiachufang.com/bc70cfc854bb11e7bc9d0242ac110002_640w_640h.jpg?imageView2/1/w/640/h/640/interlace/1/q/90"
								alt="纯优小铺 | 广西酸甜百香果 3斤" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							纯优小铺 | 广西酸甜百香果 3斤
						</div>
						<div class="goods-foreword vui-line1">广西百香果，热带水果，新鲜，西番莲，鸡蛋果，特价红果，酸爽香甜，施农家肥</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>38.8</em></span> <span
								class="sales-info">已售 52</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/64053/" class="goods-item"
														data-log="cls=已上架&amp;pos=5&amp;neighbor_url_list=[&quot;/goods/62729/&quot;,&quot;/goods/63959/&quot;,&quot;/goods/64053/&quot;,&quot;/goods/63442/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s1.cdn.xiachufang.com/402da9e456a611e7947d0242ac110002_640w_640h.jpg@2o_50sh_1pr_1l_640w_640h_1c_1e_90q_1wh"
								alt="【首日特价】齐鲁荟 丨 蒙阴春雪蜜桃 5斤" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							【首日特价】齐鲁荟 丨 蒙阴春雪蜜桃 5斤
						</div>
						<div class="goods-foreword vui-line1">脆甜爽口～桃味十足（只要您有任何不满意，我们无条件 退款、无条件重发货）</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>32</em></span> <span
								class="sales-info">已售 67</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/63442/" class="goods-item"
														data-log="cls=已上架&amp;pos=6&amp;neighbor_url_list=[&quot;/goods/63959/&quot;,&quot;/goods/64053/&quot;,&quot;/goods/63442/&quot;,&quot;/goods/63881/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s2.cdn.xiachufang.com/adf8613e50d011e7947d0242ac110002_800w_800h.jpg?imageView2/1/w/640/h/640/interlace/1/q/90"
								alt="兰笙 | 猴菇米稀 400g/罐" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							兰笙 | 猴菇米稀 400g/罐
						</div>
						<div class="goods-foreword vui-line1">二十种杂粮谷物的融合，你的全营养快捷早餐。</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>32</em></span> <span
								class="sales-info">已售 34</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/63881/" class="goods-item"
														data-log="cls=已上架&amp;pos=7&amp;neighbor_url_list=[&quot;/goods/64053/&quot;,&quot;/goods/63442/&quot;,&quot;/goods/63881/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s2.cdn.xiachufang.com/355da8ca519711e7947d0242ac110002_640w_640h.jpg?imageView2/1/w/640/h/640/interlace/1/q/90"
								alt="椰岛晴 | 海南椰子冻 2个装" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							椰岛晴 | 海南椰子冻 2个装
						</div>
						<div class="goods-foreword vui-line1">来自南方小岛的问候，椰香四溢</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>69</em></span> <span
								class="sales-info">已售 30</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2">
					<div class="shelf-item-card">
						<div class="shelf-item-inner"><!---->
							<div class="vui-grid card-parts"><a border-style=" right"
																href="http://www.xiachufang.com/page/goods-search/?keyword=烤箱"
																data-log="cls=已上架&amp;pos=8-0&amp;subcls="
																class="vui-grid-1-2 vui-border">
								烤箱
							</a><a border-style=" " href="http://www.xiachufang.com/page/goods-search/?keyword=淡奶油"
								   data-log="cls=已上架&amp;pos=8-1&amp;subcls=" class="vui-grid-1-2 vui-border">
								淡奶油
							</a><a border-style="top right"
								   href="http://www.xiachufang.com/page/goods-search/?keyword=锅"
								   data-log="cls=已上架&amp;pos=8-2&amp;subcls=" class="vui-grid-1-2 vui-border">
								锅
							</a><a border-style="top " href="http://www.xiachufang.com/page/goods-search/?keyword=黄油"
								   data-log="cls=已上架&amp;pos=8-3&amp;subcls=" class="vui-grid-1-2 vui-border">
								黄油
							</a><a border-style="top right"
								   href="http://www.xiachufang.com/page/goods-search/?keyword=餐具"
								   data-log="cls=已上架&amp;pos=8-4&amp;subcls=" class="vui-grid-1-2 vui-border">
								餐具
							</a><a border-style="top " href="http://www.xiachufang.com/page/goods-search/?keyword=厨师机"
								   data-log="cls=已上架&amp;pos=8-5&amp;subcls=" class="vui-grid-1-2 vui-border">
								厨师机
							</a><a border-style="top right"
								   href="http://www.xiachufang.com/page/goods-search/?keyword=模具"
								   data-log="cls=已上架&amp;pos=8-6&amp;subcls=" class="vui-grid-1-2 vui-border">
								模具
							</a><a border-style="top " href="http://www.xiachufang.com/page/goods-search/?keyword=芝士"
								   data-log="cls=已上架&amp;pos=8-7&amp;subcls=" class="vui-grid-1-2 vui-border">
								芝士
							</a><a border-style="top right"
								   href="http://www.xiachufang.com/page/goods-search/?keyword=便当"
								   data-log="cls=已上架&amp;pos=8-8&amp;subcls=" class="vui-grid-1-2 vui-border">
								便当
							</a><a border-style="top " href="http://www.xiachufang.com/page/goods-search/?keyword=蛋挞皮"
								   data-log="cls=已上架&amp;pos=8-9&amp;subcls=" class="vui-grid-1-2 vui-border">
								蛋挞皮
							</a></div>
						</div>
					</div>
				</div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/60303/" class="goods-item"
														data-log="cls=已上架&amp;pos=9&amp;neighbor_url_list=[&quot;/goods/63881/&quot;,&quot;/goods/60303/&quot;,&quot;/goods/63890/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s2.cdn.xiachufang.com/2e6fb2542d7c11e7bc9d0242ac110002_640w_640h.jpg?imageView2/1/w/640/h/640/interlace/1/q/90"
								alt="窝夫小子 | 熔岩巧克力蛋糕2枚装 150g" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							窝夫小子 | 熔岩巧克力蛋糕2枚装 150g
						</div>
						<div class="goods-foreword vui-line1">只选用比利时进口巧克力</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>47</em></span> <span
								class="sales-info">已售 28</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/63890/" class="goods-item"
														data-log="cls=已上架&amp;pos=10&amp;neighbor_url_list=[&quot;/goods/60303/&quot;,&quot;/goods/63890/&quot;,&quot;/goods/61724/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s2.cdn.xiachufang.com/277db25254dc11e7bc9d0242ac110002_800w_800h.jpg?imageView2/1/w/640/h/640/interlace/1/q/90"
								alt="新西兰Vogel's | 什锦坚果谷物即食麦片 300g（浆果味/坚果味）" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							新西兰Vogel's | 什锦坚果谷物即食麦片 300g（浆果味/坚果味）
						</div>
						<div class="goods-foreword vui-line1">澳洲的“卡乐比”，香脆酥甜会上瘾</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>29.9</em></span> <span
								class="sales-info">已售 29</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/61724/" class="goods-item"
														data-log="cls=已上架&amp;pos=11&amp;neighbor_url_list=[&quot;/goods/60303/&quot;,&quot;/goods/63890/&quot;,&quot;/goods/61724/&quot;,&quot;/goods/61076/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s2.cdn.xiachufang.com/10db15723f5f11e7bc9d0242ac110002_640w_640h.jpg?imageView2/1/w/640/h/640/interlace/1/q/90"
								alt="阿礁叔 | 广西红树林烤海鸭蛋  2盒18个  每颗75-85g" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							阿礁叔 | 广西红树林烤海鸭蛋 2盒18个 每颗75-85g
						</div>
						<div class="goods-foreword vui-line1">鸭蛋中的富二代，生在自然保护区，老妈海边长大，喜好海鲜套餐</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>40.6</em></span> <span
								class="sales-info">已售 33</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/61076/" class="goods-item"
														data-log="cls=已上架&amp;pos=12&amp;neighbor_url_list=[&quot;/goods/63890/&quot;,&quot;/goods/61724/&quot;,&quot;/goods/61076/&quot;,&quot;/goods/61921/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s2.cdn.xiachufang.com/099249345bd911e7947d0242ac110002_640w_640h.jpg?imageView2/1/w/640/h/640/interlace/1/q/90"
								alt="绘食彩 | 朝鲜族手工米酒 750ml x 2" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							绘食彩 | 朝鲜族手工米酒 750ml x 2
						</div>
						<div class="goods-foreword vui-line1">炎热夏日来一杯清爽的冰镇米酒吧！</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>38</em></span> <span
								class="sales-info">已售 35</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/61921/" class="goods-item"
														data-log="cls=已上架&amp;pos=13&amp;neighbor_url_list=[&quot;/goods/61724/&quot;,&quot;/goods/61076/&quot;,&quot;/goods/61921/&quot;,&quot;/goods/61154/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s2.cdn.xiachufang.com/6202d2b841e011e7947d0242ac110002_640w_640h.jpg?imageView2/1/w/640/h/640/interlace/1/q/90"
								alt="天天罐养|出口级头水海苔52g/罐 香蕉/芝麻夹心" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							天天罐养|出口级头水海苔52g/罐 香蕉/芝麻夹心
						</div>
						<div class="goods-foreword vui-line1">海苔当然头水好，情有独钟的“罐装”海苔</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>39.9</em></span> <span
								class="sales-info">已售 27</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/61154/" class="goods-item"
														data-log="cls=已上架&amp;pos=14&amp;neighbor_url_list=[&quot;/goods/61076/&quot;,&quot;/goods/61921/&quot;,&quot;/goods/61154/&quot;,&quot;/goods/63907/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s2.cdn.xiachufang.com/37ec83d2393b11e7bc9d0242ac110002_640w_640h.jpg?imageView2/1/w/640/h/640/interlace/1/q/90"
								alt="清食 | 手工黄桃干 200克" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							清食 | 手工黄桃干 200克
						</div>
						<div class="goods-foreword vui-line1">煮出来的黄桃果干 无添加剂 无色素</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>25.8</em></span> <span
								class="sales-info">已售 26</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/63907/" class="goods-item"
														data-log="cls=已上架&amp;pos=15&amp;neighbor_url_list=[&quot;/goods/61921/&quot;,&quot;/goods/61154/&quot;,&quot;/goods/63907/&quot;,&quot;/goods/55624/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s2.cdn.xiachufang.com/832fdf3a555911e7947d0242ac110002_640w_640h.jpg?imageView2/1/w/640/h/640/interlace/1/q/90"
								alt="农垦 |台湾金钻凤梨 2个装 单果1.25kg左右 树上熟新鲜水果" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							农垦 |台湾金钻凤梨 2个装 单果1.25kg左右 树上熟新鲜水果
						</div>
						<div class="goods-foreword vui-line1">广东湛江 产地直发 自然成熟 不催熟 凤梨味足</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>39</em></span> <span
								class="sales-info">已售 31</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/55624/" class="goods-item"
														data-log="cls=已上架&amp;pos=16&amp;neighbor_url_list=[&quot;/goods/61154/&quot;,&quot;/goods/63907/&quot;,&quot;/goods/55624/&quot;,&quot;/goods/60943/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s1.cdn.xiachufang.com/f1ac2334f97311e6947d0242ac110002_640w_640h.jpg@2o_50sh_1pr_1l_640w_640h_1c_1e_90q_1wh"
								alt="吃货1族 | 巷仔边脆虾香辣味/原味/椒盐味即食香烤虾 16g 三味可选" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							吃货1族 | 巷仔边脆虾香辣味/原味/椒盐味即食香烤虾 16g 三味可选
						</div>
						<div class="goods-foreword vui-line1">巷仔边脆虾香辣味/原味/椒盐味脆虾即食香烤虾，采用目前先进的真空脱水工艺，锁住营养，不添加任何食材，美味又健康！
						</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>16</em></span> <span
								class="sales-info">已售 132</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/60943/" class="goods-item"
														data-log="cls=已上架&amp;pos=17&amp;neighbor_url_list=[&quot;/goods/63907/&quot;,&quot;/goods/55624/&quot;,&quot;/goods/60943/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s1.cdn.xiachufang.com/75be1130362f11e7bc9d0242ac110002_640w_640h.jpg@2o_50sh_1pr_1l_640w_640h_1c_1e_90q_1wh"
								alt="爱度 | 500ml*4桶装亚麻籽油 富含欧米茄-3脂肪酸" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							爱度 | 500ml*4桶装亚麻籽油 富含欧米茄-3脂肪酸
						</div>
						<div class="goods-foreword vui-line1">500ml*4亚麻籽油，适合全家食用，或送礼。</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>235</em></span> <span
								class="sales-info">已售 72</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2">
					<div class="shelf-item-card">
						<div class="shelf-item-inner"><!---->
							<div class="vui-grid card-parts"><a border-style=" right"
																href="http://www.xiachufang.com/page/goods-search/?keyword=平底锅"
																data-log="cls=已上架&amp;pos=18-0&amp;subcls="
																class="vui-grid-1-2 vui-border">
								平底锅
							</a><a border-style=" " href="http://www.xiachufang.com/page/goods-search/?keyword=杯子"
								   data-log="cls=已上架&amp;pos=18-1&amp;subcls=" class="vui-grid-1-2 vui-border">
								杯子
							</a><a border-style="top right"
								   href="http://www.xiachufang.com/page/goods-search/?keyword=打蛋器"
								   data-log="cls=已上架&amp;pos=18-2&amp;subcls=" class="vui-grid-1-2 vui-border">
								打蛋器
							</a><a border-style="top " href="http://www.xiachufang.com/page/goods-search/?keyword=奶油"
								   data-log="cls=已上架&amp;pos=18-3&amp;subcls=" class="vui-grid-1-2 vui-border">
								奶油
							</a><a border-style="top right"
								   href="http://www.xiachufang.com/page/goods-search/?keyword=牛排"
								   data-log="cls=已上架&amp;pos=18-4&amp;subcls=" class="vui-grid-1-2 vui-border">
								牛排
							</a><a border-style="top " href="http://www.xiachufang.com/page/goods-search/?keyword=麦片"
								   data-log="cls=已上架&amp;pos=18-5&amp;subcls=" class="vui-grid-1-2 vui-border">
								麦片
							</a><a border-style="top right"
								   href="http://www.xiachufang.com/page/goods-search/?keyword=料理机"
								   data-log="cls=已上架&amp;pos=18-6&amp;subcls=" class="vui-grid-1-2 vui-border">
								料理机
							</a><a border-style="top " href="http://www.xiachufang.com/page/goods-search/?keyword=酸梅汤"
								   data-log="cls=已上架&amp;pos=18-7&amp;subcls=" class="vui-grid-1-2 vui-border">
								酸梅汤
							</a><a border-style="top right"
								   href="http://www.xiachufang.com/page/goods-search/?keyword=玻璃杯"
								   data-log="cls=已上架&amp;pos=18-8&amp;subcls=" class="vui-grid-1-2 vui-border">
								玻璃杯
							</a><a border-style="top " href="http://www.xiachufang.com/page/goods-search/?keyword=意大利面"
								   data-log="cls=已上架&amp;pos=18-9&amp;subcls=" class="vui-grid-1-2 vui-border">
								意大利面
							</a></div>
						</div>
					</div>
				</div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/60828/" class="goods-item"
														data-log="cls=已上架&amp;pos=19&amp;neighbor_url_list=[&quot;/goods/60943/&quot;,&quot;/goods/60828/&quot;,&quot;/goods/60698/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s2.cdn.xiachufang.com/461f5bf0353011e7bc9d0242ac110002_640w_640h.jpg?imageView2/1/w/640/h/640/interlace/1/q/90"
								alt="域沃粮田 | 新鲜糖水黄桃罐头425g*4罐" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							域沃粮田 | 新鲜糖水黄桃罐头425g*4罐
						</div>
						<div class="goods-foreword vui-line1">儿时味道，出口级品质，精选成熟黄桃。</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>19.9</em></span> <span
								class="sales-info">已售 4262</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/60698/" class="goods-item"
														data-log="cls=已上架&amp;pos=20&amp;neighbor_url_list=[&quot;/goods/60828/&quot;,&quot;/goods/60698/&quot;,&quot;/goods/950/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s2.cdn.xiachufang.com/46b230f433b111e7bc9d0242ac110002_640w_640h.jpg?imageView2/1/w/640/h/640/interlace/1/q/90"
								alt="Lagostina拉歌蒂尼 |  梅雅•维他快锅" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							Lagostina拉歌蒂尼 | 梅雅•维他快锅
						</div>
						<div class="goods-foreword vui-line1">来自意大利，造型美观，方便省力~</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>1980</em></span> <span
								class="sales-info">已售 388</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/950/" class="goods-item"
														data-log="cls=已上架&amp;pos=21&amp;neighbor_url_list=[&quot;/goods/60828/&quot;,&quot;/goods/60698/&quot;,&quot;/goods/950/&quot;,&quot;/goods/37309/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s2.cdn.xiachufang.com/6ff9d9d90d4711e6a814397815afc0d9.jpg?imageView2/1/w/640/h/640/interlace/1/q/90"
								alt="贵财家 | 五常稻花香大米（非抛光现磨10斤/布袋新年装/季卡/半年卡/年卡）" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							贵财家 | 五常稻花香大米（非抛光现磨10斤/布袋新年装/季卡/半年卡/年卡）
						</div>
						<div class="goods-foreword vui-line1">2小时卖断10吨超高回购率</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>77</em></span> <span
								class="sales-info">已售 60776</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/37309/" class="goods-item"
														data-log="cls=已上架&amp;pos=22&amp;neighbor_url_list=[&quot;/goods/60698/&quot;,&quot;/goods/950/&quot;,&quot;/goods/37309/&quot;,&quot;/goods/2746/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s2.cdn.xiachufang.com/dace008a57ae11e7947d0242ac110002_800w_800h.jpg?imageView2/1/w/640/h/640/interlace/1/q/90"
								alt="【京东超市】法国原装进口 荷兰乳牛3.5 3.8全脂牛奶1L*6 整箱" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							【京东超市】法国原装进口 荷兰乳牛3.5 3.8全脂牛奶1L*6 整箱
						</div>
						<div class="goods-foreword vui-line1">法国原装进口</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>39</em></span> <span
								class="sales-info">已售 41954</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/2746/" class="goods-item"
														data-log="cls=已上架&amp;pos=23&amp;neighbor_url_list=[&quot;/goods/950/&quot;,&quot;/goods/37309/&quot;,&quot;/goods/2746/&quot;,&quot;/goods/46771/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s1.cdn.xiachufang.com/82e0c18f89cf11e59c76e0db5512b208.jpg@2o_50sh_1pr_1l_640w_640h_1c_1e_90q_1wh"
								alt="nathome北欧欧慕 | 气泡水机NSD2000（白色）" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							nathome北欧欧慕 | 气泡水机NSD2000（白色）
						</div>
						<div class="goods-foreword vui-line1">30秒自制苏打水，DIY各类汽水</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>229</em></span> <span
								class="sales-info">已售 4401</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/46771/" class="goods-item"
														data-log="cls=已上架&amp;pos=24&amp;neighbor_url_list=[&quot;/goods/37309/&quot;,&quot;/goods/2746/&quot;,&quot;/goods/46771/&quot;,&quot;/goods/33948/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s2.cdn.xiachufang.com/5b3a17f0afb111e6947d0242ac110002_800w_800h.jpg?imageView2/1/w/640/h/640/interlace/1/q/90"
								alt="熊爸森林 | 广式手工全瘦肉香腊肠 500g" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							熊爸森林 | 广式手工全瘦肉香腊肠 500g
						</div>
						<div class="goods-foreword vui-line1">肥瘦恰宜，老广风味</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>56</em></span> <span
								class="sales-info">已售 7960</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/33948/" class="goods-item"
														data-log="cls=已上架&amp;pos=25&amp;neighbor_url_list=[&quot;/goods/2746/&quot;,&quot;/goods/46771/&quot;,&quot;/goods/33948/&quot;,&quot;/goods/44513/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s2.cdn.xiachufang.com/a27e3c07260511e6a3a71fc2cbfd458b.jpg?imageView2/1/w/640/h/640/interlace/1/q/90"
								alt="预售 甜豆 | 仙居特级高山东魁杨梅 (3斤/6斤可选) 预计7月5日左右发货" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							预售 甜豆 | 仙居特级高山东魁杨梅 (3斤/6斤可选) 预计7月5日左右发货
						</div>
						<div class="goods-foreword vui-line1">一颗入口，味蕾全开；仙居杨梅来了</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>208</em></span> <span
								class="sales-info">已售 1875</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/44513/" class="goods-item"
														data-log="cls=已上架&amp;pos=26&amp;neighbor_url_list=[&quot;/goods/46771/&quot;,&quot;/goods/33948/&quot;,&quot;/goods/44513/&quot;,&quot;/goods/52159/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s2.cdn.xiachufang.com/c72a9951740c11e6924f0737f7d2fe26.jpg?imageView2/1/w/640/h/640/interlace/1/q/90"
								alt="花晨月 | 手工烘焙谷物果仁麦片 500g（2个规格）" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							花晨月 | 手工烘焙谷物果仁麦片 500g（2个规格）
						</div>
						<div class="goods-foreword vui-line1">果仁+麦片，完美早餐get~</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>38.8</em></span> <span
								class="sales-info">已售 8275</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/52159/" class="goods-item"
														data-log="cls=已上架&amp;pos=27&amp;neighbor_url_list=[&quot;/goods/33948/&quot;,&quot;/goods/44513/&quot;,&quot;/goods/52159/&quot;,&quot;/goods/18117/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s2.cdn.xiachufang.com/3f3d4c48c77b11e6947d0242ac110002_640w_640h.jpg?imageView2/1/w/640/h/640/interlace/1/q/90"
								alt="南拾壹 | 西双版纳小包谷  真空熟玉米 约3.5市斤" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							南拾壹 | 西双版纳小包谷 真空熟玉米 约3.5市斤
						</div>
						<div class="goods-foreword vui-line1">香甜软糯，厨友争相回购</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>58</em></span> <span
								class="sales-info">已售 10041</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/18117/" class="goods-item"
														data-log="cls=已上架&amp;pos=28&amp;neighbor_url_list=[&quot;/goods/44513/&quot;,&quot;/goods/52159/&quot;,&quot;/goods/18117/&quot;,&quot;/goods/45469/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s2.cdn.xiachufang.com/a948dd221d2611e7bc9d0242ac110002_640w_640h.jpg?imageView2/1/w/640/h/640/interlace/1/q/90"
								alt="【2017年春耳上市】满族小馆 | 长白山木耳 250g" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							【2017年春耳上市】满族小馆 | 长白山木耳 250g
						</div>
						<div class="goods-foreword vui-line1">2017年春耳上市 肉厚！厚！厚！</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>35</em></span> <span
								class="sales-info">已售 5532</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/45469/" class="goods-item"
														data-log="cls=已上架&amp;pos=29&amp;neighbor_url_list=[&quot;/goods/52159/&quot;,&quot;/goods/18117/&quot;,&quot;/goods/45469/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s2.cdn.xiachufang.com/5b8d78067fb311e6836c0242ac110003_640w_640h.jpg?imageView2/1/w/640/h/640/interlace/1/q/90"
								alt="兰笙 | 薏仁红豆茶 30包/盒（两件包邮）" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							兰笙 | 薏仁红豆茶 30包/盒（两件包邮）
						</div>
						<div class="goods-foreword vui-line1">不用煮不用熬，泡一泡就能喝</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>29</em></span> <span
								class="sales-info">已售 26833</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2">
					<div class="shelf-item-card">
						<div class="shelf-item-inner"><!---->
							<div class="vui-grid card-parts"><a border-style=" right"
																href="http://www.xiachufang.com/page/goods-search/?keyword=烤盘"
																data-log="cls=已上架&amp;pos=30-0&amp;subcls="
																class="vui-grid-1-2 vui-border">
								烤盘
							</a><a border-style=" " href="http://www.xiachufang.com/page/goods-search/?keyword=咖啡"
								   data-log="cls=已上架&amp;pos=30-1&amp;subcls=" class="vui-grid-1-2 vui-border">
								咖啡
							</a><a border-style="top right"
								   href="http://www.xiachufang.com/page/goods-search/?keyword=面包"
								   data-log="cls=已上架&amp;pos=30-2&amp;subcls=" class="vui-grid-1-2 vui-border">
								面包
							</a><a border-style="top " href="http://www.xiachufang.com/page/goods-search/?keyword=寿司"
								   data-log="cls=已上架&amp;pos=30-3&amp;subcls=" class="vui-grid-1-2 vui-border">
								寿司
							</a><a border-style="top right"
								   href="http://www.xiachufang.com/page/goods-search/?keyword=碗"
								   data-log="cls=已上架&amp;pos=30-4&amp;subcls=" class="vui-grid-1-2 vui-border">
								碗
							</a><a border-style="top " href="http://www.xiachufang.com/page/goods-search/?keyword=牛奶"
								   data-log="cls=已上架&amp;pos=30-5&amp;subcls=" class="vui-grid-1-2 vui-border">
								牛奶
							</a><a border-style="top right"
								   href="http://www.xiachufang.com/page/goods-search/?keyword=低筋面粉"
								   data-log="cls=已上架&amp;pos=30-6&amp;subcls=" class="vui-grid-1-2 vui-border">
								低筋面粉
							</a><a border-style="top " href="http://www.xiachufang.com/page/goods-search/?keyword=榨汁机"
								   data-log="cls=已上架&amp;pos=30-7&amp;subcls=" class="vui-grid-1-2 vui-border">
								榨汁机
							</a><a border-style="top right"
								   href="http://www.xiachufang.com/page/goods-search/?keyword=面包机"
								   data-log="cls=已上架&amp;pos=30-8&amp;subcls=" class="vui-grid-1-2 vui-border">
								面包机
							</a><a border-style="top " href="http://www.xiachufang.com/page/goods-search/?keyword=不粘锅"
								   data-log="cls=已上架&amp;pos=30-9&amp;subcls=" class="vui-grid-1-2 vui-border">
								不粘锅
							</a></div>
						</div>
					</div>
				</div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/32388/" class="goods-item"
														data-log="cls=已上架&amp;pos=31&amp;neighbor_url_list=[&quot;/goods/45469/&quot;,&quot;/goods/32388/&quot;,&quot;/goods/52523/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s1.cdn.xiachufang.com/a22b6e8015b911e68017b82a72e00100.jpg@2o_50sh_1pr_1l_640w_640h_1c_1e_90q_1wh"
								alt="云娘食记 | 天然三色藜麦 400g" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							云娘食记 | 天然三色藜麦 400g
						</div>
						<div class="goods-foreword vui-line1">纤身必吃，丰盛营养餐get~</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>39.9</em></span> <span
								class="sales-info">已售 12075</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/52523/" class="goods-item"
														data-log="cls=已上架&amp;pos=32&amp;neighbor_url_list=[&quot;/goods/32388/&quot;,&quot;/goods/52523/&quot;,&quot;/goods/18378/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s2.cdn.xiachufang.com/ccd2fbfcc8f711e6947d0242ac110002_800w_800h.jpg?imageView2/1/w/640/h/640/interlace/1/q/90"
								alt="船歌鱼水饺 | 四大当家水饺礼盒 430g*4袋" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							船歌鱼水饺 | 四大当家水饺礼盒 430g*4袋
						</div>
						<div class="goods-foreword vui-line1">不时不食，食在鲜时</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>258</em></span> <span
								class="sales-info">已售 102</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/18378/" class="goods-item"
														data-log="cls=已上架&amp;pos=33&amp;neighbor_url_list=[&quot;/goods/32388/&quot;,&quot;/goods/52523/&quot;,&quot;/goods/18378/&quot;,&quot;/goods/61852/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s2.cdn.xiachufang.com/554cc00a164f11e688b72558fabde6a1.jpg?imageView2/1/w/640/h/640/interlace/1/q/90"
								alt="源味农场 | 原浆黑蜂椴树雪蜜500g" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							源味农场 | 原浆黑蜂椴树雪蜜500g
						</div>
						<div class="goods-foreword vui-line1">下厨房蜂蜜类销量No1, 4.9超高好评</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>59</em></span> <span
								class="sales-info">已售 13261</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/61852/" class="goods-item"
														data-log="cls=已上架&amp;pos=34&amp;neighbor_url_list=[&quot;/goods/52523/&quot;,&quot;/goods/18378/&quot;,&quot;/goods/61852/&quot;,&quot;/goods/48760/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s1.cdn.xiachufang.com/ea9efb52409a11e7947d0242ac110002_640w_640h.jpg@2o_50sh_1pr_1l_640w_640h_1c_1e_90q_1wh"
								alt="齐鲁荟 丨 栗面贝贝小南瓜 4斤装" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							齐鲁荟 丨 栗面贝贝小南瓜 4斤装
						</div>
						<div class="goods-foreword vui-line1">粉粉的～香香的～糯糯的（破损、变质、不合口味均可退款或重发）</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>29.9</em></span> <span
								class="sales-info">已售 4904</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/48760/" class="goods-item"
														data-log="cls=已上架&amp;pos=35&amp;neighbor_url_list=[&quot;/goods/18378/&quot;,&quot;/goods/61852/&quot;,&quot;/goods/48760/&quot;,&quot;/goods/55863/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s2.cdn.xiachufang.com/536fdff4b1e711e6bc9d0242ac110002_640w_640h.jpg?imageView2/1/w/640/h/640/interlace/1/q/90"
								alt="天天罐养 | 出口级黄桃罐头 425g*2罐" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							天天罐养 | 出口级黄桃罐头 425g*2罐
						</div>
						<div class="goods-foreword vui-line1">几近满分评价，厨友整箱回购</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>29</em></span> <span
								class="sales-info">已售 10101</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/55863/" class="goods-item"
														data-log="cls=已上架&amp;pos=36&amp;neighbor_url_list=[&quot;/goods/61852/&quot;,&quot;/goods/48760/&quot;,&quot;/goods/55863/&quot;,&quot;/goods/78/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s2.cdn.xiachufang.com/0b3bab70fd7611e6947d0242ac110002_800w_800h.jpg?imageView2/1/w/640/h/640/interlace/1/q/90"
								alt="【买1送4】沃隆每日坚果 30包/箱 （果盘300个先到先得+多送一包+红包返现+28元送88元坚果君见图3+需要原装礼袋请留言)" class="cover">
						</div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							【买1送4】沃隆每日坚果 30包/箱 （果盘300个先到先得+多送一包+红包返现+28元送88元坚果君见图3+需要原装礼袋请留言)
						</div>
						<div class="goods-foreword vui-line1">
							店庆大促送干果盘+多一包+红包返现（果盘300个先到先得)zuixin日期到货~加28元可得价值88元坚果君一个可进VX群抢坚果（高50CM宽25CM太大将单独发货见图三）活动结束恢复原价
							欢迎速来抢购~！沃隆全国统一售价148元微信：jianguojun888。
						</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>138</em></span> <span
								class="sales-info">已售 624</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/78/" class="goods-item"
														data-log="cls=已上架&amp;pos=37&amp;neighbor_url_list=[&quot;/goods/48760/&quot;,&quot;/goods/55863/&quot;,&quot;/goods/78/&quot;,&quot;/goods/50145/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s2.cdn.xiachufang.com/a3e7bd1091ab11e5b5d2b82a72e00100.jpg?imageView2/1/w/640/h/640/interlace/1/q/90"
								alt="Cocaba | 摩士厨系列深煎锅 24cm" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							Cocaba | 摩士厨系列深煎锅 24cm
						</div>
						<div class="goods-foreword vui-line1">一锅多能，百变实用！</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>109</em></span> <span
								class="sales-info">已售 32380</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/50145/" class="goods-item"
														data-log="cls=已上架&amp;pos=38&amp;neighbor_url_list=[&quot;/goods/55863/&quot;,&quot;/goods/78/&quot;,&quot;/goods/50145/&quot;,&quot;/goods/20583/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s2.cdn.xiachufang.com/a775f47ab60211e6947d0242ac110002_640w_640h.jpg?imageView2/1/w/640/h/640/interlace/1/q/90"
								alt="朋柚 | 沙地红蜜薯5斤 2件包邮 立即下单（多规格可选）" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							朋柚 | 沙地红蜜薯5斤 2件包邮 立即下单（多规格可选）
						</div>
						<div class="goods-foreword vui-line1">口感绵甜，厨友回购推荐</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>29.9</em></span> <span
								class="sales-info">已售 21691</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/20583/" class="goods-item"
														data-log="cls=已上架&amp;pos=39&amp;neighbor_url_list=[&quot;/goods/78/&quot;,&quot;/goods/50145/&quot;,&quot;/goods/20583/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s2.cdn.xiachufang.com/7eb0308c260e11e69605b1fd14230c65.jpg?imageView2/1/w/640/h/640/interlace/1/q/90"
								alt="爸爸de厨房 | 顺丰直达 古田新鲜银耳活耳 5朵量贩装 （现摘现售）" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							爸爸de厨房 | 顺丰直达 古田新鲜银耳活耳 5朵量贩装 （现摘现售）
						</div>
						<div class="goods-foreword vui-line1">常听老人言，可将银耳比燕窝</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>49.9</em></span> <span
								class="sales-info">已售 2450</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2">
					<div class="shelf-item-card">
						<div class="shelf-item-inner"><!---->
							<div class="vui-grid card-parts"><a border-style=" right"
																href="http://www.xiachufang.com/page/goods-search/?keyword=雪糕模具"
																data-log="cls=已上架&amp;pos=40-0&amp;subcls="
																class="vui-grid-1-2 vui-border">
								雪糕模具
							</a><a border-style=" " href="http://www.xiachufang.com/page/goods-search/?keyword=披萨"
								   data-log="cls=已上架&amp;pos=40-1&amp;subcls=" class="vui-grid-1-2 vui-border">
								披萨
							</a><a border-style="top right"
								   href="http://www.xiachufang.com/page/goods-search/?keyword=雪平锅"
								   data-log="cls=已上架&amp;pos=40-2&amp;subcls=" class="vui-grid-1-2 vui-border">
								雪平锅
							</a><a border-style="top " href="http://www.xiachufang.com/page/goods-search/?keyword=奶油奶酪"
								   data-log="cls=已上架&amp;pos=40-3&amp;subcls=" class="vui-grid-1-2 vui-border">
								奶油奶酪
							</a><a border-style="top right"
								   href="http://www.xiachufang.com/page/goods-search/?keyword=面"
								   data-log="cls=已上架&amp;pos=40-4&amp;subcls=" class="vui-grid-1-2 vui-border">
								面
							</a><a border-style="top " href="http://www.xiachufang.com/page/goods-search/?keyword=高筋面粉"
								   data-log="cls=已上架&amp;pos=40-5&amp;subcls=" class="vui-grid-1-2 vui-border">
								高筋面粉
							</a><a border-style="top right"
								   href="http://www.xiachufang.com/page/goods-search/?keyword=酸奶机"
								   data-log="cls=已上架&amp;pos=40-6&amp;subcls=" class="vui-grid-1-2 vui-border">
								酸奶机
							</a><a border-style="top " href="http://www.xiachufang.com/page/goods-search/?keyword=红薯"
								   data-log="cls=已上架&amp;pos=40-7&amp;subcls=" class="vui-grid-1-2 vui-border">
								红薯
							</a><a border-style="top right"
								   href="http://www.xiachufang.com/page/goods-search/?keyword=便当盒"
								   data-log="cls=已上架&amp;pos=40-8&amp;subcls=" class="vui-grid-1-2 vui-border">
								便当盒
							</a><a border-style="top " href="http://www.xiachufang.com/page/goods-search/?keyword=早餐"
								   data-log="cls=已上架&amp;pos=40-9&amp;subcls=" class="vui-grid-1-2 vui-border">
								早餐
							</a></div>
						</div>
					</div>
				</div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/11142/" class="goods-item"
														data-log="cls=已上架&amp;pos=41&amp;neighbor_url_list=[&quot;/goods/20583/&quot;,&quot;/goods/11142/&quot;,&quot;/goods/58766/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s2.cdn.xiachufang.com/bafd2aab7caa11e59f20af721a7cce0d.jpg?imageView2/1/w/640/h/640/interlace/1/q/90"
								alt="古蜀味道 | 新鲜金阳青花椒 150g" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							古蜀味道 | 新鲜金阳青花椒 150g
						</div>
						<div class="goods-foreword vui-line1">我们出售的就是藤椒，四川人也叫做青花椒。带枝完整，才够味，品质好味道棒，成色特别好。</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>7.8</em></span> <span
								class="sales-info">已售 1838</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/58766/" class="goods-item"
														data-log="cls=已上架&amp;pos=42&amp;neighbor_url_list=[&quot;/goods/11142/&quot;,&quot;/goods/58766/&quot;,&quot;/goods/32379/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s1.cdn.xiachufang.com/c0f9e328116711e7947d0242ac110002_640w_640h.jpg@2o_50sh_1pr_1l_640w_640h_1c_1e_90q_1wh"
								alt="【五件包邮】蜜悦 | 白茅根竹蔗葛根雪梨糖水 100g【买十送一】" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							【五件包邮】蜜悦 | 白茅根竹蔗葛根雪梨糖水 100g【买十送一】
						</div>
						<div class="goods-foreword vui-line1">不加糖自然甜，孕妇和宝宝也能喝</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>13.8</em></span> <span
								class="sales-info">已售 9300</span></div>
					</div> <!----></a></div>
				<div class="shelf-item vui-grid-1-2"><a href="/goods/32379/" class="goods-item"
														data-log="cls=已上架&amp;pos=43&amp;neighbor_url_list=[&quot;/goods/11142/&quot;,&quot;/goods/58766/&quot;,&quot;/goods/32379/&quot;]">
					<div cover-style="square" class="vui-cover">
						<div class="vui-cover-cnt"><img
								src="http://s1.cdn.xiachufang.com/24add69228c211e7947d0242ac110002_640w_640h.jpg@2o_50sh_1pr_1l_640w_640h_1c_1e_90q_1wh"
								alt="若谷 | 纯藕粉 400g" class="cover"></div>
					</div>
					<div class="goods-info">
						<div class="goods-name vui-line2"><!---->
							若谷 | 纯藕粉 400g
						</div>
						<div class="goods-foreword vui-line1">诚品诚心 纯藕粉 无任何添加物 国内首次用大藕制作 童年的味道 后味回甘 唇齿清爽</div>
						<div><span class="goods-price"><em class="rmb-symbol">¥ </em> <em>78</em></span> <span
								class="sales-info">已售 161</span></div>
					</div> <!----></a></div>
			</div>
		</div>
		<div class="loading-bar" style="display: none;">
			<div class="vui-spinner"><i></i><i></i><i></i><i></i><i></i><i></i>
				<i></i><i></i><i></i><i></i><i></i><i></i></div>
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


</body>

</html>
