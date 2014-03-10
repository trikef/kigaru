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
				<li><a href="/voiceinput" data-icon="plus">�����X�^�[</a></li>
				<li><a href="/mypage" data-icon="user">�}�C�y�[�W</a></li>
			</ul>
		</div>
		<h1>Mind Monsters�I</h1>
	</div><!-- /header -->
	<div class="ui-content voice-main" role="main">
		<div class="ui-corner-all custom-corners ui-block">
			<div class="ui-bar ui-bar-a">
				<h3>�����X�^�[�̂��܂ꂽ���R</h3>
			</div>
		<div class="ui-body ui-body-a">
			<div class="voice-title">
				<h4><s:property value="voice.title" />�����X�^�[</h4>
				<h5>���ݎ�F<s:property value="voice.name" /></h5>
				<p><s:date name="voice.created_at" format="yyyy-MM-dd HH:mm" /></p>
			</div>
			<div class="status">
				<div class="status-left">
					<img src="/img/monster/monster-<s:property value="voice.monster" />.jpg">
				</div>
				<div class="status-center">
					<p>�J</p>
					<div class="progress">
					  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="<s:property value="voice.melancholy" />" aria-valuemin="0" aria-valuemax="100" style="width: <s:property value="voice.melancholy" />%">
					    <span class="sr-only"><s:property value="voice.melancholy" />%</span>
					  </div>
					</div>
					<p>��</p>
					<div class="progress">
					  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="<s:property value="voice.sad" />" aria-valuemin="0" aria-valuemax="100" style="width: <s:property value="voice.sad" />%">
					    <span class="sr-only"><s:property value="voice.sad" />%</span>
					  </div>
					</div>
					<p>�s</p>
					<div class="progress">
					  <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="<s:property value="voice.worry" />" aria-valuemin="0" aria-valuemax="100" style="width: <s:property value="voice.worry" />%">
					    <span class="sr-only"><s:property value="voice.worry" />%</span>
					  </div>
					</div>
					<p>�{</p>
					<div class="progress">
					  <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="<s:property value="voice.angry" />" aria-valuemin="0" aria-valuemax="100" style="width: <s:property value="voice.angry" />%">
					    <span class="sr-only"><s:property value="voice.angry" />%</span>
					  </div>
					</div>
				</div>
				<div class="status-right">
					<p>����F<s:property value="voice.who" /></p>
					<p>�ꏊ�F<s:property value="voice.place" /></p>
				</div>
			</div>
			<div class="voice-text">
				<p><s:property value="voice.text" /></p>
			</div>
			</div>
		</div>
		<div class="ui-corner-all custom-corners ui-block">
			<div class="ui-bar ui-bar-a">
				<h3>�����X�^�[�̊���A�l��</h3>
			</div>
			<div class="ui-body ui-body-a">
				<p><s:property value="voice.think" /></p>
			</div>
		</div>
		<div class="ui-corner-all custom-corners ui-block">
			<div class="ui-bar ui-bar-a">
				<h3>�����X�^�[�̌X��</h3>
			</div>
			<div class="ui-body ui-body-a">
				<s:if test="voice.unbalance_1"><P>��Q�ϑz</P></s:if>
				<s:if test="voice.unbalance_2"><P>������`</P></s:if>
				<s:if test="voice.unbalance_3"><P>���삪����</P></s:if>
				<s:if test="voice.unbalance_4"><P>���M���Ȃ�</P></s:if>
				<s:if test="voice.unbalance_5"><P>�����痣��Ȃ�</P></s:if>
				<s:if test="voice.unbalance_6"><P>�����������܂������Ȃ�</P></s:if>
				<s:if test="voice.unbalance_7"><P>�������������̂���</P></s:if>
				<s:if test="voice.unbalance_8"><P>�C���Z��</P></s:if>
				<s:if test="voice.unbalance_9"><P>->unbalance_9</P></s:if>
				<s:if test="voice.unbalance_10"><P>->unbalance_10</P></s:if>
			</div>
		</div>
		<h2>����Ƃ��������I</h2>
		<div class="ui-corner-all custom-corners ui-block">
			<div class="ui-bar ui-bar-a">
				<h3>�|�W�e�B�u�q���g�F�����X�^�[�̉B�ꂽ�����Ƃ���</h3>
			</div>
			<div class="ui-body ui-body-a">
				<s:if test="voice.unbalance_1"><P>�z���͂�����</P></s:if>
				<s:if test="voice.unbalance_2"><P>�M���ł���A�w�͉�</P></s:if>
				<s:if test="voice.unbalance_3"><P>�W���͂�����</P></s:if>
				<s:if test="voice.unbalance_4"><P>�v�����A������������</P></s:if>
				<s:if test="voice.unbalance_5"><P>��r�A�ӎv������</P></s:if>
				<s:if test="voice.unbalance_6"><P>���Ӑ[���A�ۑ蔭����</P></s:if>
				<s:if test="voice.unbalance_7"><P>�ӔC���������A��������</P></s:if>
				<s:if test="voice.unbalance_8"><P>�s���I�A���󐫖L��</P></s:if>
				<s:if test="voice.unbalance_9"><P>->unbalance_9</P></s:if>
				<s:if test="voice.unbalance_10"><P>->unbalance_10</P></s:if>
			</div>
		</div>
		<s:if test="as.size() > 0" >
		<h4>�U���̋L�^</h4>
		<ul class="comment">
		<s:iterator value="as" var="a">
			<li>
				<div id="attack-comment-<s:property value="#a.id" />" class="attack-comment-text">
					<div class="comment-header">
						<s:property value="#a.id" />
						<a href="#" class="ui-btn ui-shadow ui-corner-all ui-icon-user ui-btn-icon-notext ui-btn-inline"><s:property value="#a.name" /></a>
						<s:if test="%{#a.name==ownName}">���Ȃ�</s:if>
						<s:else><a href=""><s:property value="#a.name" /></a></s:else>
						<s:date name="#a.created_at" format="yyyy-MM-dd HH:mm" />
						<a href="#command-comment" data-rel="popup" data-transition="pop">�ԐM����</a>
					</div>
					<div class="comment-text">
						<s:property value="#a.text" />
					</div>
					<div class="comment-footer">
						<a onClick="Answer.count(<s:property value="#a.id" />,'<s:property value="ownName" />',1,0,'#good<s:property value="#a.id"/>','good')" class="">�O�b�h�I(<span id="good<s:property value="#a.id"/>"><s:property value="#a.good"/></span>)</a>
						<a onClick="Answer.count(<s:property value="#a.id" />,'<s:property value="ownName" />',0,1,'#bad<s:property value="#a.id"/>','bad')" class="">�o�b�h�I(<span id="bad<s:property value="#a.id"/>"><s:property value="#a.bad"/></span>)</a>
					</div>
				</div>
			</li>
		</s:iterator>
		</ul>
		</s:if>
		<div class="command-tab"><h3><s:property value="name" /></h3></div>
		<ul id="command-menu" data-role="listview" data-inset="true">
			<li><a href="#command-comment" data-rel="popup" data-transition="pop">��������</a></li>
			<li><a href="#command-plan">��������</a></li>
			<li><a href="#command-sympathy">���傤����</a></li>
			<li><a href="/">�ɂ���</a></li>
		</ul>
	</div>
	<div data-role="panel" id="command-comment" data-position="right" data-display="overlay" data-theme="a" class="ui-panel ui-panel-position-right ui-panel-display-overlay ui-body-a ui-panel-animate ui-panel-closed">
		<div class="ui-panel-inner">
			<form action="/voice/<s:property value="voice.id" />" method="post">
     	<div data-role="popup" id="popupInfo-comment" class="ui-content" data-theme="a" style="max-width:350px;">
			<a href="#" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn-a ui-icon-delete ui-btn-icon-notext ui-btn-right">Close</a>
		  <p><strong>��1. </strong>�ˑR���R�����킸�ɕʂ�������Ȃ�ĂЂǂ��l�Ԃ��B����Ȑl�ƌ�������O�ɕʂ���ėǂ������񂶂�Ȃ����ȁB</p>
		  <p><strong>��2. </strong>���Ȃ����L�\�����炱���d���𗊂܂�鎖�������̂ł�</p>
		  <p><strong>��3. </strong>�X���͖Z�����Ă��R�[�q�[���ϋl�߂Ă��܂����̂����BTwitter�Ŋg�U���ēX���ׂꂽ�炠�Ȃ����㖡�̈������ɂȂ��Ă���������Ȃ������������Ȃ��ėǂ���������</p>
		</div>
		<div id="atack-comment" class="ui-field-contain">
			<label for="text">�|�W�e�B�u�R�����g�I
			<a href="#popupInfo-comment" data-rel="popup" data-transition="pop" class="ui-mini">�q���g</a>
			</label>
			<textarea rows="10" cols="40" name="text" class="form-control"
					placeholder="�����X�^�[�̓l�K�e�B�u�ȍl���ɕ߂��Ă���I�|�W�e�B�u�Ȏ��_�Łu���܂ꂽ���R�v���Ƃ炦�Ȃ����ĉ����Ă�i����R�����g���Ă�����悤�I"></textarea>
			<span>200</span>
		</div>
		<input type="hidden" name="name" value="<s:property value="name" />">
		<span class="input-group-btn">
				<button type="submit" class="btn btn-default">������������I</button>
			</span>
		</form>
			<a href="#demo-links" data-rel="close" class="ui-btn ui-shadow ui-corner-all ui-btn-a ui-icon-delete ui-btn-icon-left ui-btn-inline">���ǂ�</a>
		</div>
	</div>
	<div data-role="panel" id="command-plan" data-position="right" data-display="overlay" data-theme="a" class="ui-panel ui-panel-position-right ui-panel-display-overlay ui-body-a ui-panel-animate ui-panel-closed">
		<div class="ui-panel-inner">
			coming soon
			<a href="#demo-links" data-rel="close" class="ui-btn ui-shadow ui-corner-all ui-btn-a ui-icon-delete ui-btn-icon-left ui-btn-inline">���ǂ�</a>
		</div>
	</div>
	<div data-role="panel" id="command-sympathy" data-position="right" data-display="overlay" data-theme="a" class="ui-panel ui-panel-position-right ui-panel-display-overlay ui-body-a ui-panel-animate ui-panel-closed">
		<div class="ui-panel-inner">
			coming soon
			<a href="#demo-links" data-rel="close" class="ui-btn ui-shadow ui-corner-all ui-btn-a ui-icon-delete ui-btn-icon-left ui-btn-inline">���ǂ�</a>
		</div>
	</div>
</div>
</body>
</html>