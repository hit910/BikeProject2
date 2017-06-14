<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>jQuery UI Accordion - Default functionality</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="../shadow/js/shadowbox.js"></script>
<style>
.ui-tabs-vertical {
	width: 78em;
}

.ui-tabs-vertical .ui-tabs-nav {
	padding: .2em .1em .2em .2em;
	float: left;
	width: 12em;
}

.ui-tabs-vertical .ui-tabs-nav li {
	clear: left;
	width: 100%;
	border-bottom-width: 1px !important;
	border-right-width: 0 !important;
	margin: 0 -1px .2em 0;
}

.ui-tabs-vertical .ui-tabs-nav li a {
	display: block;
}

.ui-tabs-vertical .ui-tabs-nav li.ui-tabs-active {
	padding-bottom: 0;
	padding-right: .1em;
	border-right-width: 1px;
}

.ui-tabs-vertical .ui-tabs-panel {
	padding: 1em;
	float: right;
	width: 40em;
}

body {
	background-color: #eee;
}

#pinBoot {
	position: relative;
	max-width: 100%;
	width: 100%;
}

img {
	width: 100%;
	max-width: 100%;
	height: auto;
}

.white-panel {
	position: absolute;
	background: white;
	box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.3);
	padding: 10px;
}
/*
stylize any heading tags withing white-panel below
*/
.white-panel h1 {
	font-size: 1em;
}

.white-panel h1 a {
	color: #A92733;
}

.white-panel:hover {
	box-shadow: 1px 1px 10px rgba(0, 0, 0, 0.5);
	margin-top: -5px;
	-webkit-transition: all 0.3s ease-in-out;
	-moz-transition: all 0.3s ease-in-out;
	-o-transition: all 0.3s ease-in-out;
	transition: all 0.3s ease-in-out;
}
</style>
</head>
<body>
<center>
<section id="clubLink">
	<h1>자전거 동호회 활동</h1>


	<!-- <img src="club/img/1.jpg" width="300px" height="250px">
<img src="club/img/2.jpg" width="300px" height="250px">
<img src="club/img/3.jpg" width="300px" height="250px">
<img src="club/img/4.jpg" width="300px" height="250px">
 -->
	<div class="container">
		<div class="row">
			<h2>동호회 사진첩</h2>


			<hr>
			<section id="pinBoot"> <article class="white-panel">
			<img src="../club/img/2.jpg" alt="">
			<h4>
				<a href="#">다같이 "북악산"</a>
			</h4>
			<p>나는 가끔씩 네이버에 내 닉네임을 검색해본다. 검색어는 삐랑뚱땅, 삐랑님, 삐랑뚱땅님 정도. 내가 나오거나 내
				이야기가 있는 게시물이 있으면 댓글을 남기기도 하고 내 블로그에 스크랩해오기도 함. 얼마 전 네이버 블로거
				나무(http://blog. naver.com/go071/90176073675)님의 남산북악 라이딩 관련 포스팅을 읽게
				되었는데, 내 블로그에서 남북 라이딩 후기를 읽고 나무님도 남북콤보에 도전하셨는 모양. 그런데 내 블로그 후기만 보고 찾아
				가는데 많은 어려움을 겪으셔서 굉장히 헤매신것 같다 ㅠ.ㅠ 후기 보는 내내 "아, 거기 아닌데...절로 가면
				안되는데..."이러면서 보고 있는 나를 발견. 뭔가 괜히 라이딩 뽐뿌만 실컷 넣고 도움은 안된 것 같아서 죄송하고 안타까운
				마음에 " 참 쉬운 북악산 라이딩 코스 안내" 시리즈 포스팅을 계획하게 되었다. (라고 해봤자 별거 없음) 네이버 지도
				돌려다가 복사 붙여넣기 한 게시물을 보게 될 것임.</p>
			</article> <article class="white-panel"> <img src="../club/img/3.jpg"
				alt="">
			<h4>
				<a href="#">봄과 함께 달리는 천상의 산길‘안민MTB파크'</a>
			</h4>
			<p>창원시 성산구 안민동 산144-1번지 일원에 조성된 ‘안민MTB파크’는 안민고개와 진해 드림로드 일원 기존
				임도와 웅산 능선, 천선동 매립장 일원에 위치한 MTB코스는 성주주민운동장~안민고개, 정상~웅산 능선~드림로드~안민고개
				정상~ 안민MTB파크~익스트림로드~열두굽이길~복주머니길~성주주민운동장을 잇는 총 연장 25.1㎞ 구간으로 전국의 수많은
				MTB마니아들이 즐겨 찾는 명소다.</p>
			</article> <article class="white-panel"> <img src="../club/img/4.jpg"
				alt="">
			<h4>
				<a href="#">아라뱃길 아라 자전거길 -아라뱃길 따라 한강에서 서해로</a>
			</h4>
			<p>최고의 자전거 코스 아라뱃길 자전거 도로인 아라 자전거길은 자전거 타기가 좋고 주변 경관도 아름다워 많은
				사람들이 찾는다. 이 길은 물길을 따라 자전거길이 놓여있어 한 군데의 오르막도 없이 모든 구간이 평탄하다. 남녀노소 누구나
				쉽게 자전거를 탈 수 있다. 또 차도와 자전거 도로가 완전히 분리돼 안전하다. 시원한 물줄기와 주변의 경치를 보면서
				달리다보면 어느새 서해 바다가 눈앞에 펼쳐진다. 아라뱃길에는 자전거 동호인들과 가족과 함께 자전거 타러 나온 사람들로 항상
				붐빈다. 이 길은 아라뱃길을 따라 한강과 서해를 잇는다. 이제 서울에서도 지척의 거리에서 바다를 만날 수 있게 됐다.
				아라자전거길은 서해에서 부산에 이르는 국토종주 자전거길의 출발점이자 종점이다. 국토종주 긴 여정의 설레임과 추억이 어린
				곳이다.</p>
			</article> <article class="white-panel"> <img src="../club/img/1.jpg"
				alt="">
			<h4>
				<a href="#">도전정신이 강한 UCL 마운틴 바이크 월드컵2013(산악자전거 대회,MTB,익스트림 스포츠)
				</a>
			</h4>
			<p>산악자전거를 뜻하는 마운틴 바이크(Mountain Bike)는 산악에서 자전거가 잘 움직일 수 있도록 부품이나
				장치등의 기술이 구축된 자전거를 말하지요. 이런 익스트림 스포츠는 체력을 튼튼하게 단련시켜주며, 모험심과 도전적인 정신을
				키워주는데 도움이 많이 된답니다. 이러한 산악자전거를 이용한 큰 대회가 있었으니, 상남자들의 거친 마운틴 바이킹! 독일
				알프슈타트에서'UCL 마운틴 바이크 월드컵 2013(2013 UCL Mountain Bike World Cup
				2013)'이 개최되었습니다. 마운틴 바이크 월드컵은 라이더 선수들이 그들이 할 수 있는 모든 것들을 다 보여주는 대회로
				유명합니다.</p>
			</article><!--  <article class="white-panel"> <img src="../club/img/5.jpg"
				alt="">
			<h4>
				<a href="#">벚꽃비 맞았던 '옥천 라이딩'</a>
			</h4>
			<p>향수 100리 길을 포함한 옥천 라이딩 코스(60km)에는 45명의 클럽 뚜르드 회원이 참석했다. 오전 8시
				한강 양화지구 주차장을 출발, 출발지인 옥천군청에 도착한 시간은 오전 11시였다. 옥천 자전거길은 테마별로 금강 향수
				100리길, 대청호 향수 200리길, 옥천읍 싱글트랙길, 향수 300리 장령산, 이백리, 환산길 등 총 8개의 테마길이
				조성되어 있다.</p>
			</article> --> <article class="white-panel"> <img src="../club/img/7.jpg"
				alt="">
			<h4>
				<a href="#">"한밤의 자전거 라이딩"</a>
			</h4>
			<p>8명의 동호회 회원들이 번개로 반미에서 만나 60km를 달리는 번개를 하였다.</p>
			</article> <article class="white-panel"> <img src="../club/img/6.jpg"
				alt="">
			<h4>
				<a href="#">장흥군 MTB동호회, 제주서 자전거 타고 물축제 홍보</a>
			</h4>
			<p>2일 장흥군에 따르면 이들은 지난 6일부터 8일까지 휴일을 반납한 채 궂은 날씨에도 자전거를 타고 제주도 관광지
				일대 250km를 돌면서 관광객을 상대로 오는 7월 26일 개막하는 물축제를 알렸다. MTB 동호회 회원은 홍보 팸플릿을
				전달하면서 올여름 휴가는 '물과 숲 휴(休)'를 주제로 제6회 정남진장흥 물축제가 펼쳐지는 정남진 장흥에서 연인, 가족과
				함께 멋진 추억을 만들 수 있다고 홍보했다. 또 뗏목타기, 우든보트 타기, 고무보트·동력선 타기, 수상 자전거 타기,
				희망의 줄배 타기, 맨손으로 물고기 잡기 등의 체험 행사와 생태·건강 프로그램 운영, 전문 공연단 공연, 연관 부대행사 등
				다채로운 프로그램을 소개했다. 올해로 6회째를 맞는 정남진장흥 물축제는 오는 7월 26일부터 8월 1일까지 장흥읍 탐진강변
				일원에서 '물과 숲 휴(休)'라는 주제로 열린다.</p>
			</article> <article class="white-panel"> <img src="../club/img/8.jpg"
				alt="">
			<h4>
				<a href="#">자이언트 코리아, RIDE KOREA, RIDE GIANT 국토종주 이벤트 진행.</a>
			</h4>
			<p>종로의 한 금융사에서 영업직으로 일하고 있는 직장인 김 모 씨(남, 35)는 요즘 너무 피곤하다. 밤낮없는
				도심의 소음과 공해, 직장 상사의 잔소리, 일에 치이고, 사람에 치이다 보니 이 도시를 잠시 떠나 조용한 나만의 모험을
				떠나고 싶을 때가 한두 번이 아니다. 올해 대학에 갓 입학한 17학번 새내기 법대생 정 모양(여, 20)은 힘들었던 수능과
				입학한 뒤에도 계속되는 학업 스트레스로 인해 어디론가 여행을 떠나고 싶다. 하지만 혼자 떠나려니 무섭고, 여행을 어떻게
				준비해야 할지 고민이다. 대한민국을 가로지르며 633km라는 거리를 달리는 국토종주는 우리나라에서 자전거로 도전할 수 있는
				가장 큰 여행이자 모험이다. 자이언트 코리아가 2017년 5월, 징검다리 휴일에 특별한 모험을 떠나고 싶은 라이더를 위해
				5월 3일부터 7일(4박 5일)까지 ‘라이드 코리아, 라이드 자이언트(RIDE KOREA, RIDE GIANT)' 행사를
				실시한다. ‘라이드 코리아, 라이드 자이언트’는 2년 전 한국을 방문했던 토니 로(자이언트 전 CEO, Tony Lo)가
				‘한국 자전거 종주’에 대한 계획을 발표하였고, 자이언트 코리아는 한국 자전거 문화의 확산을 위해 이번 ‘라이드 코리아,
				라이드 자이언트’행사를 준비하게 되었다.</p>
			</article> </section>


			<hr>


		</div>


	</div>

	<h2>정기모임/번개 후기</h2>
	<div id="tabs">
		<ul>
			<li><a href="#tabs-1">4월 1차 번개모임후기</a></li>

			<li><a href="#tabs-2">2017년 5월 정기후기</a></li>
			<li><a href="#tabs-3">6월 1차 번개후기</a></li>
			<li><a href="#tabs-4">2017년 6월 정기후기</a></li>
		</ul>
		<div id="tabs-1">
			<h2>4월 1차 번개모임후기</h2>
			<p>
				<img src="../club/img/bun1.jpg">
			</p>
			<p>신기한 임승현 김현우 이정섭 한진혁 김동훈 황철균 김영록 이상원 고태훈 일상 번개모임</p>
		</div>

		<div id="tabs-2">
			<h2>2017년 5월정기후기</h2>
			<p>
				<img src="../club/img/jung1.jpg">
			</p>
			<p>품격있는 노땅스키어들의 레저 친목회 스키를사랑하는노땅들 스사노 에서 활동하는 자전거모임입니다 (10/3 현재
				전체회원 수 609명) 자전거모임 활동회원 수는 현재 31명이며 계속 늘어나는 추세입니다 매주 화요일에는 주로
				잠원고수부지/ 잠실고수부지/ 분당탄천/ 에서의 정기모임 주말에는 남산/ 홍천/ 수리산 등지에서의 특별모임이 있으며
				스키시즌에는 매일야간에는 지산리조트 주말에는 하이원 휘닉스 용평등지에서 스킹을 하며 년간 2회이상 해외원정스킹을 가고
				있습니다</p>
		</div>

		<div id="tabs-3">
			<h2>4월 1차 번개후기</h2>
			<p>
				<img src="../club/img/bun2.jpg">
			</p>
			<p>신기한 임승현 김현우 이정섭 한진혁 김동훈 황철균 김영록 이상원 고태훈 일상 번개모임</p>
		</div>
		<div id="tabs-4">
			<h2>2017년 6월정기후기</h2>
			<p>
				<img src="../club/img/bun3.jpg">
			</p>
			<p>신기한 임승현 김현우 이정섭 한진혁 김동훈 황철균 김영록 이상원 고태훈 일상 번개모임</p>

		</div>
	</div>
	
	<hr>
	<h2>공동구매안내</h2>
	<div id="tabss">
		<ul>

			<li><a href="#tabss-1">2017년 사이클복 공구</a></li>
			<li><a href="#tabss-2">2017년 용품공구</a></li>
		</ul>
		<div id="tabss-1">
			<h2>2017년 사이클복 공구</h2>
			<p>
				<img src="../club/img/ja.jpg">
			</p>
			<p>2017 SEOUL CYCLING Club Riders. 이번에 로드복을 공구 할 예정이오니 많은 관심과 참여
				부탁드립니다.</p>
		</div>
		<div id="tabss-2">
			<h2>2017년용품공구</h2>
			<p>
				<img src="../club/img/gongu1.jpg"> 
			<img src="../club/img/gongu2.png"> 
			</p>
			
			<p>일반적으로 사용하는 케이블 타이(Cable Tie) 의 경우 1회용 소모품으로 사용 후 쉽게 절단해서 버리는데

				지-락 (Z LOK )으로 불리우는 이 제품은 절단이 되지 않고 열쇠가 있는 반영구적인 케이블 타이 입니다. 일반적으로
				자전거 잠금장치는 크기와 무게 때문에 휴대하기 불편하고 또 자전거 시건장치의 용도에 한정해서 쓰이는데 비해 지-락(Z
				LOK)은 자전거 외의 사용처가 무척 많습니다. 가격은 2개를 한 쌍으로 해서 약 29,900원입니다. 10명이 댓글로
				구매희망하시면 정확한 가격을 확인하여 공동구매 추진해보겠습니다.^^</p>
		</div>

	</div>

<!-- 	<hr>
	<h2>진행중인 이벤트</h2>
	<a href="http://bike-korea.com/page_xRmq23"><img src="../club/img/ing.JPG"></a>
	<hr>
	<h2>지난 이벤트</h2>
	<a href="http://bike-korea.com/page_xRmq23"><img src="../club/img/before.JPG"></a>
	<a href="http://bike-korea.com/page_xRmq23">진행중인 이벤트 자세히 보기</a> -->
</section>
<script>
	$(function() {
		$("#tabss").tabs().addClass("ui-tabs-vertical ui-helper-clearfix");
		$("#tabss li").removeClass("ui-corner-top").addClass("ui-corner-left");
	});

	$(function() {
		$("#accordion").accordion();
	});
	$(document).ready(function() {
		$('#pinBoot').pinterest_grid({
			no_columns : 4,
			padding_x : 10,
			padding_y : 10,
			margin_bottom : 50,
			single_column_breakpoint : 700
		});
	});
	$(function() {
		$("#tabs").tabs().addClass("ui-tabs-vertical ui-helper-clearfix");
		$("#tabs li").removeClass("ui-corner-top").addClass("ui-corner-left");
	});

	;
	(function($, window, document, undefined) {
		var pluginName = 'pinterest_grid', defaults = {
			padding_x : 10,
			padding_y : 10,
			no_columns : 3,
			margin_bottom : 50,
			single_column_breakpoint : 700
		}, columns, $article, article_width;

		function Plugin(element, options) {
			this.element = element;
			this.options = $.extend({}, defaults, options);
			this._defaults = defaults;
			this._name = pluginName;
			this.init();
		}

		Plugin.prototype.init = function() {
			var self = this, resize_finish;

			$(window).resize(function() {
				clearTimeout(resize_finish);
				resize_finish = setTimeout(function() {
					self.make_layout_change(self);
				}, 11);
			});

			self.make_layout_change(self);

			setTimeout(function() {
				$(window).resize();
			}, 500);
		};

		Plugin.prototype.calculate = function(single_column_mode) {
			var self = this, tallest = 0, row = 0, $container = $(this.element), container_width = $container
					.width();
			$article = $(this.element).children();

			if (single_column_mode === true) {
				article_width = $container.width() - self.options.padding_x;
			} else {
				article_width = ($container.width() - self.options.padding_x
						* self.options.no_columns)
						/ self.options.no_columns;
			}

			$article.each(function() {
				$(this).css('width', article_width);
			});

			columns = self.options.no_columns;

			$article
					.each(function(index) {
						var current_column, left_out = 0, top = 0, $this = $(this), prevAll = $this
								.prevAll(), tallest = 0;

						if (single_column_mode === false) {
							current_column = (index % columns);
						} else {
							current_column = 0;
						}

						for (var t = 0; t < columns; t++) {
							$this.removeClass('c' + t);
						}

						if (index % columns === 0) {
							row++;
						}

						$this.addClass('c' + current_column);
						$this.addClass('r' + row);

						prevAll.each(function(index) {
							if ($(this).hasClass('c' + current_column)) {
								top += $(this).outerHeight()
										+ self.options.padding_y;
							}
						});

						if (single_column_mode === true) {
							left_out = 0;
						} else {
							left_out = (index % columns)
									* (article_width + self.options.padding_x);
						}

						$this.css({
							'left' : left_out,
							'top' : top
						});
					});

			this.tallest($container);
			$(window).resize();
		};

		Plugin.prototype.tallest = function(_container) {
			var column_heights = [], largest = 0;

			for (var z = 0; z < columns; z++) {
				var temp_height = 0;
				_container.find('.c' + z).each(function() {
					temp_height += $(this).outerHeight();
				});
				column_heights[z] = temp_height;
			}

			largest = Math.max.apply(Math, column_heights);
			_container.css('height', largest
					+ (this.options.padding_y + this.options.margin_bottom));
		};

		Plugin.prototype.make_layout_change = function(_self) {
			if ($(window).width() < _self.options.single_column_breakpoint) {
				_self.calculate(true);
			} else {
				_self.calculate(false);
			}
		};

		$.fn[pluginName] = function(options) {
			return this.each(function() {
				if (!$.data(this, 'plugin_' + pluginName)) {
					$.data(this, 'plugin_' + pluginName, new Plugin(this,
							options));
				}
			});
		}

	})(jQuery, window, document);
</script>
</body>
</center>
</html>