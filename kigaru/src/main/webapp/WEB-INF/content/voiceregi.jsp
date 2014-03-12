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
				<li><a href="/" data-icon="home">�N�G�X�g</a></li>
				<li><a href="/voiceinput" class="ui-btn-active ui-state-persist" data-icon="plus">�f�f</a></li>
				<li><a href="/mypage" data-icon="user">�}�C�y�[�W</a></li>
			</ul>
		</div>
		<h1>Mind Monsters�I</h1>
	</div><!-- /header -->
	<div class="ui-content" role="main">
		<div class="monster-main">
			<h3>�����X�^�[�����܂ꂽ�I</h3>
			<img src="/img/monster/monster-<s:property value="voice.monster" />.jpg" />
			<h4><s:property value="voice.monster" /></h4>
		</div>
		<a href="/voice/<s:property value="voice.id" />" class="ui-btn ui-corner-all ui-shadow ui-btn-active">�����X�^�[��|���I</a>
		<!-- <a href="/voiceorder" class="ui-btn ui-corner-all ui-shadow ui-btn-active">�`���҂ƃ����X�^�[��|���I</a> -->
		<!-- <a href="/userchoice" class="ui-btn ui-corner-all ui-shadow ui-btn-active">�D���Ȗ`���҂ɓ����˗��I</a> -->
	</div>
</body>
</html>