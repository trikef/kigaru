<%@page contentType="text/html; charset=UTF-8"
	pageEncoding="Windows-31J"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Mind Monsters!</title>
	<link rel="stylesheet" href="/css/main.css" />
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.css" />
<!--<link rel="shortcut icon" href="../favicon.ico"> -->
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.js"></script>
	<script src="/js/main.js"></script>
</head>
<body>
<div data-role="page" id="testpage">
	<div data-role="header">
		<div data-role="navbar">
			<ul>
				<li><a href="/" class="ui-btn-active ui-state-persist" data-icon="home">クエスト</a></li>
				<li><a href="/voiceinput" data-icon="plus">モンスター</a></li>
				<li><a href="/mypage" data-icon="user">マイページ</a></li>
			</ul>
		</div>
		<h1>Mind Monsters！</h1>
	</div><!-- /header -->
	<div class="ui-content" role="main">
		<ul data-role="listview"  data-count-theme="b" data-inset="true">
		    <s:iterator value="voices">
			<li><a href="/voice/<s:property value="id"/>"><img src="/img/monster/monster-<s:property value="monster" />.jpg">
			<br /><h3 style="white-space: normal;"><s:property value="title"/></h3>
			<p><strong><s:property value="name"/></strong></p>
			<p class="ui-li-aside"><strong><s:date name="created_at" format="MM/dd hh:mm" /></strong></p>
			<s:if test="%{answernum>0}"><span class="ui-li-count"><s:property value="answernum" /></span></s:if>
			</a></li>
			</s:iterator>
		</ul>
	</div>
</body>
</html>