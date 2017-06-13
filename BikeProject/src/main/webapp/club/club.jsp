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
	<h1>������ ��ȣȸ Ȱ��</h1>


	<!-- <img src="club/img/1.jpg" width="300px" height="250px">
<img src="club/img/2.jpg" width="300px" height="250px">
<img src="club/img/3.jpg" width="300px" height="250px">
<img src="club/img/4.jpg" width="300px" height="250px">
 -->
	<div class="container">
		<div class="row">
			<h2>��ȣȸ ����ø</h2>


			<hr>
			<section id="pinBoot"> <article class="white-panel">
			<img src="../club/img/2.jpg" alt="">
			<h4>
				<a href="#">�ٰ��� "�Ͼǻ�"</a>
			</h4>
			<p>���� ������ ���̹��� �� �г����� �˻��غ���. �˻���� �߶��׶�, �߶���, �߶��׶��� ����. ���� �����ų� ��
				�̾߱Ⱑ �ִ� �Խù��� ������ ����� ����⵵ �ϰ� �� ��α׿� ��ũ���ؿ��⵵ ��. �� �� ���̹� ��ΰ�
				����(http://blog. naver.com/go071/90176073675)���� ����Ͼ� ���̵� ���� �������� �а�
				�Ǿ��µ�, �� ��α׿��� ���� ���̵� �ı⸦ �а� �����Ե� �����޺��� �����ϼ̴� ���. �׷��� �� ��α� �ı⸸ ���� ã��
				���µ� ���� ������� �����ż� ������ ��ŽŰ� ���� ��.�� �ı� ���� ���� "��, �ű� �ƴѵ�...���� ����
				�ȵǴµ�..."�̷��鼭 ���� �ִ� ���� �߰�. ���� ���� ���̵� �˻Ѹ� ���� �ְ� ������ �ȵ� �� ���Ƽ� �˼��ϰ� ��Ÿ���
				������ " �� ���� �Ͼǻ� ���̵� �ڽ� �ȳ�" �ø��� �������� ��ȹ�ϰ� �Ǿ���. (��� �غ��� ���� ����) ���̹� ����
				�����ٰ� ���� �ٿ��ֱ� �� �Խù��� ���� �� ����.</p>
			</article> <article class="white-panel"> <img src="../club/img/3.jpg"
				alt="">
			<h4>
				<a href="#">���� �Բ� �޸��� õ���� ��桮�ȹ�MTB��ũ'</a>
			</h4>
			<p>â���� ���걸 �ȹε� ��144-1���� �Ͽ��� ������ ���ȹ�MTB��ũ���� �ȹΰ��� ���� �帲�ε� �Ͽ� ����
				�ӵ��� ���� �ɼ�, õ���� �Ÿ��� �Ͽ��� ��ġ�� MTB�ڽ��� �����ֹο��~�ȹΰ�, ����~���� �ɼ�~�帲�ε�~�ȹΰ�
				����~ �ȹ�MTB��ũ~�ͽ�Ʈ���ε�~���α��̱�~���ָӴϱ�~�����ֹο���� �մ� �� ���� 25.1�� �������� ������ ������
				MTB���ϾƵ��� ��� ã�� ��Ҵ�.</p>
			</article> <article class="white-panel"> <img src="../club/img/4.jpg"
				alt="">
			<h4>
				<a href="#">�ƶ��� �ƶ� �����ű� -�ƶ��� ���� �Ѱ����� ���ط�</a>
			</h4>
			<p>�ְ��� ������ �ڽ� �ƶ��� ������ ������ �ƶ� �����ű��� ������ Ÿ�Ⱑ ���� �ֺ� ����� �Ƹ��ٿ� ����
				������� ã�´�. �� ���� ������ ���� �����ű��� �����־� �� ������ �������� ���� ��� ������ ��ź�ϴ�. ������ ������
				���� �����Ÿ� Ż �� �ִ�. �� ������ ������ ���ΰ� ������ �и��� �����ϴ�. �ÿ��� ���ٱ�� �ֺ��� ��ġ�� ���鼭
				�޸��ٺ��� ����� ���� �ٴٰ� ���տ� ��������. �ƶ��濡�� ������ ��ȣ�ε�� ������ �Բ� ������ Ÿ�� ���� ������ �׻�
				�պ��. �� ���� �ƶ����� ���� �Ѱ��� ���ظ� �մ´�. ���� ���￡���� ��ô�� �Ÿ����� �ٴٸ� ���� �� �ְ� �ƴ�.
				�ƶ������ű��� ���ؿ��� �λ꿡 �̸��� �������� �����ű��� ��������� �����̴�. �������� �� ������ �����Ӱ� �߾��� �
				���̴�.</p>
			</article> <article class="white-panel"> <img src="../club/img/1.jpg"
				alt="">
			<h4>
				<a href="#">���������� ���� UCL ����ƾ ����ũ ������2013(��������� ��ȸ,MTB,�ͽ�Ʈ�� ������)
				</a>
			</h4>
			<p>��������Ÿ� ���ϴ� ����ƾ ����ũ(Mountain Bike)�� ��ǿ��� �����Ű� �� ������ �� �ֵ��� ��ǰ�̳�
				��ġ���� ����� ����� �����Ÿ� ��������. �̷� �ͽ�Ʈ�� �������� ü���� ưư�ϰ� �ܷý����ָ�, ����ɰ� �������� ������
				Ű���ִµ� ������ ���� �ȴ�ϴ�. �̷��� ��������Ÿ� �̿��� ū ��ȸ�� �־�����, ���ڵ��� ��ģ ����ƾ ����ŷ! ����
				������ŸƮ����'UCL ����ƾ ����ũ ������ 2013(2013 UCL Mountain Bike World Cup
				2013)'�� ���ֵǾ����ϴ�. ����ƾ ����ũ �������� ���̴� �������� �׵��� �� �� �ִ� ��� �͵��� �� �����ִ� ��ȸ��
				�����մϴ�.</p>
			</article><!--  <article class="white-panel"> <img src="../club/img/5.jpg"
				alt="">
			<h4>
				<a href="#">���ɺ� �¾Ҵ� '��õ ���̵�'</a>
			</h4>
			<p>��� 100�� ���� ������ ��õ ���̵� �ڽ�(60km)���� 45���� Ŭ�� �Ѹ��� ȸ���� �����ߴ�. ���� 8��
				�Ѱ� ��ȭ���� �������� ���, ������� ��õ��û�� ������ �ð��� ���� 11�ÿ���. ��õ �����ű��� �׸����� �ݰ� ���
				100����, ��ûȣ ��� 200����, ��õ�� �̱�Ʈ����, ��� 300�� ��ɻ�, �̹鸮, ȯ��� �� �� 8���� �׸�����
				�����Ǿ� �ִ�.</p>
			</article> --> <article class="white-panel"> <img src="../club/img/7.jpg"
				alt="">
			<h4>
				<a href="#">"�ѹ��� ������ ���̵�"</a>
			</h4>
			<p>8���� ��ȣȸ ȸ������ ������ �ݹ̿��� ���� 60km�� �޸��� ������ �Ͽ���.</p>
			</article> <article class="white-panel"> <img src="../club/img/6.jpg"
				alt="">
			<h4>
				<a href="#">���ﱺ MTB��ȣȸ, ���ּ� ������ Ÿ�� ������ ȫ��</a>
			</h4>
			<p>2�� ���ﱺ�� ������ �̵��� ���� 6�Ϻ��� 8�ϱ��� ������ �ݳ��� ä ���� �������� �����Ÿ� Ÿ�� ���ֵ� ������
				�ϴ� 250km�� ���鼭 �������� ���� ���� 7�� 26�� �����ϴ� �������� �˷ȴ�. MTB ��ȣȸ ȸ���� ȫ�� ���ø���
				�����ϸ鼭 �ÿ��� �ް��� '���� �� ��(��)'�� ������ ��6ȸ ���������� �������� �������� ������ ���￡�� ����, ������
				�Բ� ���� �߾��� ���� �� �ִٰ� ȫ���ߴ�. �� �¸�Ÿ��, ��纸Ʈ Ÿ��, ����Ʈ�����¼� Ÿ��, ���� ������ Ÿ��,
				����� �ٹ� Ÿ��, �Ǽ����� ����� ��� ���� ü�� ���� ���¡��ǰ� ���α׷� �, ���� ������ ����, ���� �δ���� ��
				��ä�ο� ���α׷��� �Ұ��ߴ�. ���ط� 6ȸ°�� �´� ���������� �������� ���� 7�� 26�Ϻ��� 8�� 1�ϱ��� ������ Ž������
				�Ͽ����� '���� �� ��(��)'��� ������ ������.</p>
			</article> <article class="white-panel"> <img src="../club/img/8.jpg"
				alt="">
			<h4>
				<a href="#">���̾�Ʈ �ڸ���, RIDE KOREA, RIDE GIANT �������� �̺�Ʈ ����.</a>
			</h4>
			<p>������ �� �����翡�� ���������� ���ϰ� �ִ� ������ �� �� ��(��, 35)�� ���� �ʹ� �ǰ��ϴ�. �㳷����
				������ ������ ����, ���� ����� �ܼҸ�, �Ͽ� ġ�̰�, ����� ġ�̴� ���� �� ���ø� ��� ���� ������ ������ ������
				������ ���� ���� �ѵ� ���� �ƴϴ�. ���� ���п� �� ������ 17�й� ������ ����� �� ���(��, 20)�� ������� ���ɰ�
				������ �ڿ��� ��ӵǴ� �о� ��Ʈ������ ���� ���а� ������ ������ �ʹ�. ������ ȥ�� �������� ������, ������ ���
				�غ��ؾ� ���� ����̴�. ���ѹα��� ���������� 633km��� �Ÿ��� �޸��� �������ִ� �츮���󿡼� �����ŷ� ������ �� �ִ�
				���� ū �������� �����̴�. ���̾�Ʈ �ڸ��ư� 2017�� 5��, ¡�˴ٸ� ���Ͽ� Ư���� ������ ������ ���� ���̴��� ����
				5�� 3�Ϻ��� 7��(4�� 5��)���� �����̵� �ڸ���, ���̵� ���̾�Ʈ(RIDE KOREA, RIDE GIANT)' ��縦
				�ǽ��Ѵ�. �����̵� �ڸ���, ���̵� ���̾�Ʈ���� 2�� �� �ѱ��� �湮�ߴ� ��� ��(���̾�Ʈ �� CEO, Tony Lo)��
				���ѱ� ������ ���֡��� ���� ��ȹ�� ��ǥ�Ͽ���, ���̾�Ʈ �ڸ��ƴ� �ѱ� ������ ��ȭ�� Ȯ���� ���� �̹� �����̵� �ڸ���,
				���̵� ���̾�Ʈ����縦 �غ��ϰ� �Ǿ���.</p>
			</article> </section>


			<hr>


		</div>


	</div>

	<h2>�������/���� �ı�</h2>
	<div id="tabs">
		<ul>
			<li><a href="#tabs-1">4�� 1�� ���������ı�</a></li>

			<li><a href="#tabs-2">2017�� 5�� �����ı�</a></li>
			<li><a href="#tabs-3">6�� 1�� �����ı�</a></li>
			<li><a href="#tabs-4">2017�� 6�� �����ı�</a></li>
		</ul>
		<div id="tabs-1">
			<h2>4�� 1�� ���������ı�</h2>
			<p>
				<img src="../club/img/bun1.jpg">
			</p>
			<p>�ű��� �ӽ��� ������ ������ ������ �赿�� Ȳö�� �迵�� �̻�� ������ �ϻ� ��������</p>
		</div>

		<div id="tabs-2">
			<h2>2017�� 5�������ı�</h2>
			<p>
				<img src="../club/img/jung1.jpg">
			</p>
			<p>ǰ���ִ� �붥��Ű����� ���� ģ��ȸ ��Ű������ϴ³붥�� ����� ���� Ȱ���ϴ� �����Ÿ����Դϴ� (10/3 ����
				��üȸ�� �� 609��) �����Ÿ��� Ȱ��ȸ�� ���� ���� 31���̸� ��� �þ�� �߼��Դϴ� ���� ȭ���Ͽ��� �ַ�
				����������/ ��ǰ������/ �д�źõ/ ������ ������� �ָ����� ����/ ȫõ/ ������ ���������� Ư�������� ������
				��Ű���𿡴� ���Ͼ߰����� ���긮��Ʈ �ָ����� ���̿� �ִн� ����������� ��ŷ�� �ϸ� �Ⱓ 2ȸ�̻� �ؿܿ�����ŷ�� ����
				�ֽ��ϴ�</p>
		</div>

		<div id="tabs-3">
			<h2>4�� 1�� �����ı�</h2>
			<p>
				<img src="../club/img/bun2.jpg">
			</p>
			<p>�ű��� �ӽ��� ������ ������ ������ �赿�� Ȳö�� �迵�� �̻�� ������ �ϻ� ��������</p>
		</div>
		<div id="tabs-4">
			<h2>2017�� 6�������ı�</h2>
			<p>
				<img src="../club/img/bun3.jpg">
			</p>
			<p>�ű��� �ӽ��� ������ ������ ������ �赿�� Ȳö�� �迵�� �̻�� ������ �ϻ� ��������</p>

		</div>
	</div>
	
	<hr>
	<h2>�������žȳ�</h2>
	<div id="tabss">
		<ul>

			<li><a href="#tabss-1">2017�� ����Ŭ�� ����</a></li>
			<li><a href="#tabss-2">2017�� ��ǰ����</a></li>
		</ul>
		<div id="tabss-1">
			<h2>2017�� ����Ŭ�� ����</h2>
			<p>
				<img src="../club/img/ja.jpg">
			</p>
			<p>2017 SEOUL CYCLING Club Riders. �̹��� �ε庹�� ���� �� �����̿��� ���� ���ɰ� ����
				��Ź�帳�ϴ�.</p>
		</div>
		<div id="tabss-2">
			<h2>2017���ǰ����</h2>
			<p>
				<img src="../club/img/gongu1.jpg"> 
			<img src="../club/img/gongu2.png"> 
			</p>
			
			<p>�Ϲ������� ����ϴ� ���̺� Ÿ��(Cable Tie) �� ��� 1ȸ�� �Ҹ�ǰ���� ��� �� ���� �����ؼ� �����µ�

				��-�� (Z LOK )���� �Ҹ���� �� ��ǰ�� ������ ���� �ʰ� ���谡 �ִ� �ݿ������� ���̺� Ÿ�� �Դϴ�. �Ϲ�������
				������ �����ġ�� ũ��� ���� ������ �޴��ϱ� �����ϰ� �� ������ �ð���ġ�� �뵵�� �����ؼ� ���̴µ� ���� ��-��(Z
				LOK)�� ������ ���� ���ó�� ��ô �����ϴ�. ������ 2���� �� ������ �ؼ� �� 29,900���Դϴ�. 10���� ��۷�
				��������Ͻø� ��Ȯ�� ������ Ȯ���Ͽ� �������� �����غ��ڽ��ϴ�.^^</p>
		</div>

	</div>

<!-- 	<hr>
	<h2>�������� �̺�Ʈ</h2>
	<a href="http://bike-korea.com/page_xRmq23"><img src="../club/img/ing.JPG"></a>
	<hr>
	<h2>���� �̺�Ʈ</h2>
	<a href="http://bike-korea.com/page_xRmq23"><img src="../club/img/before.JPG"></a>
	<a href="http://bike-korea.com/page_xRmq23">�������� �̺�Ʈ �ڼ��� ����</a> -->
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