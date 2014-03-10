<%@page contentType="text/html; charset=UTF-8"
	pageEncoding="Windows-31J"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Mind Monsters</title>
	<link rel="stylesheet" href="/css/main.css" />
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.css" />
<!--<link rel="shortcut icon" href="../favicon.ico"> -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
	<script src="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.js"></script>
	<script src="/js/main.js"></script>
</head>
<body>
<div data-role="page" id="testpage">
	<div data-role="header">
		<div data-role="navbar">
			<ul>
				<li><a href="/" data-icon="home">クエスト</a></li>
				<li><a href="/voiceinput" data-icon="plus">モンスター</a></li>
				<li><a href="/mypage" data-icon="user">マイページ</a></li>
			</ul>
		</div>
		<h1>Mind Monsters！</h1>
	</div><!-- /header -->
	<div class="ui-content voice-main" role="main">
		<div class="ui-corner-all custom-corners ui-block">
			<div class="ui-bar ui-bar-a">
				<h3>モンスターのうまれた理由</h3>
			</div>
		<div class="ui-body ui-body-a">
			<div class="voice-title">
				<h4><s:property value="voice.title" />モンスター</h4>
				<h5>うみ主：<s:property value="voice.name" /></h5>
				<p><s:date name="voice.created_at" format="yyyy-MM-dd HH:mm" /></p>
			</div>
			<div class="status">
				<div class="status-left">
					<img src="/img/monster/monster-<s:property value="voice.monster" />.jpg">
				</div>
				<div class="status-center">
					<p>憂</p>
					<div class="progress">
					  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="<s:property value="voice.melancholy" />" aria-valuemin="0" aria-valuemax="100" style="width: <s:property value="voice.melancholy" />%">
					    <span class="sr-only"><s:property value="voice.melancholy" />%</span>
					  </div>
					</div>
					<p>悲</p>
					<div class="progress">
					  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="<s:property value="voice.sad" />" aria-valuemin="0" aria-valuemax="100" style="width: <s:property value="voice.sad" />%">
					    <span class="sr-only"><s:property value="voice.sad" />%</span>
					  </div>
					</div>
					<p>不</p>
					<div class="progress">
					  <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="<s:property value="voice.worry" />" aria-valuemin="0" aria-valuemax="100" style="width: <s:property value="voice.worry" />%">
					    <span class="sr-only"><s:property value="voice.worry" />%</span>
					  </div>
					</div>
					<p>怒</p>
					<div class="progress">
					  <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="<s:property value="voice.angry" />" aria-valuemin="0" aria-valuemax="100" style="width: <s:property value="voice.angry" />%">
					    <span class="sr-only"><s:property value="voice.angry" />%</span>
					  </div>
					</div>
				</div>
				<div class="status-right">
					<p>相手：<s:property value="voice.who" /></p>
					<p>場所：<s:property value="voice.place" /></p>
				</div>
			</div>
			<div class="voice-text">
				<p><s:property value="voice.text" /></p>
			</div>
			</div>
		</div>
		<div class="ui-corner-all custom-corners ui-block">
			<div class="ui-bar ui-bar-a">
				<h3>モンスターの感情、考え</h3>
			</div>
			<div class="ui-body ui-body-a">
				<p><s:property value="voice.think" /></p>
			</div>
		</div>
		<div class="ui-corner-all custom-corners ui-block">
			<div class="ui-bar ui-bar-a">
				<h3>モンスターの傾向</h3>
			</div>
			<div class="ui-body ui-body-a">
				<s:if test="voice.unbalance_1"><P>被害妄想</P></s:if>
				<s:if test="voice.unbalance_2"><P>完璧主義</P></s:if>
				<s:if test="voice.unbalance_3"><P>視野が狭い</P></s:if>
				<s:if test="voice.unbalance_4"><P>自信がない</P></s:if>
				<s:if test="voice.unbalance_5"><P>頭から離れない</P></s:if>
				<s:if test="voice.unbalance_6"><P>だいたいうまくいかない</P></s:if>
				<s:if test="voice.unbalance_7"><P>だいたい自分のせい</P></s:if>
				<s:if test="voice.unbalance_8"><P>気が短い</P></s:if>
				<s:if test="voice.unbalance_9"><P>->unbalance_9</P></s:if>
				<s:if test="voice.unbalance_10"><P>->unbalance_10</P></s:if>
			</div>
		</div>
		<h2>せんとうかいし！</h2>
		<div class="ui-corner-all custom-corners ui-block">
			<div class="ui-bar ui-bar-a">
				<h3>ポジティブヒント：モンスターの隠れたいいところ</h3>
			</div>
			<div class="ui-body ui-body-a">
				<s:if test="voice.unbalance_1"><P>想像力がある</P></s:if>
				<s:if test="voice.unbalance_2"><P>信頼できる、努力家</P></s:if>
				<s:if test="voice.unbalance_3"><P>集中力がある</P></s:if>
				<s:if test="voice.unbalance_4"><P>思いやり、協調性がある</P></s:if>
				<s:if test="voice.unbalance_5"><P>一途、意思が強い</P></s:if>
				<s:if test="voice.unbalance_6"><P>注意深い、課題発見力</P></s:if>
				<s:if test="voice.unbalance_7"><P>責任感が強い、頼もしい</P></s:if>
				<s:if test="voice.unbalance_8"><P>行動的、感受性豊か</P></s:if>
				<s:if test="voice.unbalance_9"><P>->unbalance_9</P></s:if>
				<s:if test="voice.unbalance_10"><P>->unbalance_10</P></s:if>
			</div>
		</div>
		<s:if test="as.size() > 0" >
		<h4>攻撃の記録</h4>
		<ul class="comment">
		<s:iterator value="as" var="a">
			<li>
				<div id="attack-comment-<s:property value="#a.id" />" class="attack-comment-text">
					<div class="comment-header">
						<s:property value="#a.id" />
						<a href="#" class="ui-btn ui-shadow ui-corner-all ui-icon-user ui-btn-icon-notext ui-btn-inline"><s:property value="#a.name" /></a>
						<s:if test="%{#a.name==ownName}">あなた</s:if>
						<s:else><a href=""><s:property value="#a.name" /></a></s:else>
						<s:date name="#a.created_at" format="yyyy-MM-dd HH:mm" />
						<a href="#command-comment" data-rel="popup" data-transition="pop">返信する</a>
					</div>
					<div class="comment-text">
						<s:property value="#a.text" />
					</div>
					<div class="comment-footer">
						<a onClick="Answer.count(<s:property value="#a.id" />,'<s:property value="ownName" />',1,0,'#good<s:property value="#a.id"/>','good')" class="">グッド！(<span id="good<s:property value="#a.id"/>"><s:property value="#a.good"/></span>)</a>
						<a onClick="Answer.count(<s:property value="#a.id" />,'<s:property value="ownName" />',0,1,'#bad<s:property value="#a.id"/>','bad')" class="">バッド！(<span id="bad<s:property value="#a.id"/>"><s:property value="#a.bad"/></span>)</a>
					</div>
				</div>
			</li>
		</s:iterator>
		</ul>
		</s:if>
		<div class="command-tab"><h3><s:property value="name" /></h3></div>
		<ul id="command-menu" data-role="listview" data-inset="true">
			<li><a href="#command-comment" data-rel="popup" data-transition="pop">こうげき</a></li>
			<li><a href="#command-plan">さくせん</a></li>
			<li><a href="#command-sympathy">きょうかん</a></li>
			<li><a href="/">にげる</a></li>
		</ul>
	</div>
	<div data-role="panel" id="command-comment" data-position="right" data-display="overlay" data-theme="a" class="ui-panel ui-panel-position-right ui-panel-display-overlay ui-body-a ui-panel-animate ui-panel-closed">
		<div class="ui-panel-inner">
			<form action="/voice/<s:property value="voice.id" />" method="post">
     	<div data-role="popup" id="popupInfo-comment" class="ui-content" data-theme="a" style="max-width:350px;">
			<a href="#" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn-a ui-icon-delete ui-btn-icon-notext ui-btn-right">Close</a>
		  <p><strong>例1. </strong>突然理由も言わずに別れを言うなんてひどい人間だ。そんな人と結婚する前に別れられて良かったんじゃないかな。</p>
		  <p><strong>例2. </strong>あなたが有能だからこそ仕事を頼まれる事が多いのでは</p>
		  <p><strong>例3. </strong>店員は忙しくてついコーヒーを煮詰めてしまったのかも。Twitterで拡散して店が潰れたらあなたも後味の悪い事になってたかもしれないし文句を言わなくて良かったかも</p>
		</div>
		<div id="atack-comment" class="ui-field-contain">
			<label for="text">ポジティブコメント！
			<a href="#popupInfo-comment" data-rel="popup" data-transition="pop" class="ui-mini">ヒント</a>
			</label>
			<textarea rows="10" cols="40" name="text" class="form-control"
					placeholder="モンスターはネガティブな考えに捕われている！ポジティブな視点で「うまれた理由」をとらえなおして解決案や擁護をコメントしてやっつけよう！"></textarea>
			<span>200</span>
		</div>
		<input type="hidden" name="name" value="<s:property value="name" />">
		<span class="input-group-btn">
				<button type="submit" class="btn btn-default">こうげきする！</button>
			</span>
		</form>
			<a href="#demo-links" data-rel="close" class="ui-btn ui-shadow ui-corner-all ui-btn-a ui-icon-delete ui-btn-icon-left ui-btn-inline">もどる</a>
		</div>
	</div>
	<div data-role="panel" id="command-plan" data-position="right" data-display="overlay" data-theme="a" class="ui-panel ui-panel-position-right ui-panel-display-overlay ui-body-a ui-panel-animate ui-panel-closed">
		<div class="ui-panel-inner">
			coming soon
			<a href="#demo-links" data-rel="close" class="ui-btn ui-shadow ui-corner-all ui-btn-a ui-icon-delete ui-btn-icon-left ui-btn-inline">もどる</a>
		</div>
	</div>
	<div data-role="panel" id="command-sympathy" data-position="right" data-display="overlay" data-theme="a" class="ui-panel ui-panel-position-right ui-panel-display-overlay ui-body-a ui-panel-animate ui-panel-closed">
		<div class="ui-panel-inner">
			coming soon
			<a href="#demo-links" data-rel="close" class="ui-btn ui-shadow ui-corner-all ui-btn-a ui-icon-delete ui-btn-icon-left ui-btn-inline">もどる</a>
		</div>
	</div>
</div>
</body>
</html>