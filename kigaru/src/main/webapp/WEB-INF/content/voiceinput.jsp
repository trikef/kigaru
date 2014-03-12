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
				<li><a href="/voiceinput" class="ui-btn-active ui-state-persist" data-icon="plus">�����X�^�[</a></li>
				<li><a href="/mypage" data-icon="user">�}�C�y�[�W</a></li>
			</ul>
		</div>
		<h1>Mind Monsters�I</h1>
	</div><!-- /header -->
	<div class="ui-content" role="main">
		<h4>���Ȃ��͐S�̈ł��烂���X�^�[�𐶂ݏo���Ă��܂��\�́u�}�C���h�����X�^�[�v�̎�����ł��B���܂ꂽ�����X�^�[�������ŁA�܂��݂͂�Ȃł�����ĕ��a�����߂����I</h4>
		<form class="ui-mini" action="/voiceregi" method="post">
			<input type="hidden" name="name" value="<s:property value="name" />" />
			<h3 id="mind-slider">�S�̈ł����܂ꂽ�󋵂���͂��悤</h3>
		    <div class="ui-field-contain">
			    <label for="place-input">�ǂ��ł�����܂������H:</label>
			    <select name="place" id="place-input">
			        <option value="�E��">�E��</option>
			        <option value="�w�Z">�w�Z</option>
			        <option value="�ƒ�">�ƒ�</option>
			        <option value="���ł���">���ł���</option>
			    </select>
			</div>
			<div class="ui-field-contain">
			    <label for="who-input">�����ɂ͂��ꂪ���܂������H:</label>
			    <select name="who" id="who-input">
					<option value="����">����</option>
			        <option value="��i">��i</option>
			        <option value="����">����</option>
			        <option value="����">����</option>
			        <option value="�F�l">�F�l</option>
			        <option value="�m�l">�m�l</option>
					<option value="���l">���l</option>
					<option value="�e">�e</option>
					<option value="�Ƒ�">�Ƒ�</option>
					<option value="�q��">�q��</option>
			    </select>
			</div>
			<div data-role="popup" id="popupInfo-title" class="ui-content" data-theme="a" style="max-width:350px;">
				<a href="#" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn-a ui-icon-delete ui-btn-icon-notext ui-btn-right">Close</a>
			  <p><strong>��1. </strong>�����������Ă����l�ƕʂꂽ</p>
			  <p><strong>��2. </strong>�������Ŏ��������c�Ƃ�����</p>
			  <p><strong>��3. </strong>�e�C�N�A�E�g�̃R�[�q�[���ϋl�܂��Ă��ċꂩ����</p>
			</div>
			<div class="ui-field-contain">
			    <label for="title-input">�^�C�g��
			    <a href="#popupInfo-title" data-rel="popup" data-transition="pop" class="ui-mini">�q���g</a>
			    </label>
	     		<input type="text" name="title" id="title-input" value="" placeholder="�󋵂��킩��₷���^�C�g��">
	     	</div>
	     	<div data-role="popup" id="popupInfo-text" class="ui-content" data-theme="a" style="max-width:350px;">
				<a href="#" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn-a ui-icon-delete ui-btn-icon-notext ui-btn-right">Close</a>
			  <p><strong>��1. </strong>�ˑR�ʂ��؂�o����ďo�čs����Ă��܂����B��������Ƃ������������Ȃ��B�Ȃɂ������Ȃ������̂����킩��Ȃ��B�����Ă����̂��炢�B</p>
			  <p><strong>��2. </strong>���������΂���d���������ē����͒莞�ŋA���Ă��܂��B�����}�l�[�W���[�E�̐l��������ĂȂ��Ď������A��̂͏I�d�΂���B������Ђ����߂����B</p>
			  <p><strong>��3. </strong>����ȂɈ����Ȃ��R�[�q�[�X�Ŕ������̂Ɏϋl�܂��Ă��ĂƂĂ��܂��������B�ƂɋA������ɋC�������̂ŕ���������ɂ����̂��ʓ|���B�C���C������I</p>
			</div>
			<div class="ui-field-contain">
				<label for="textarea">�󋵂𐮗����ď�����
				<a href="#popupInfo-text" data-rel="popup" data-transition="pop" class="ui-mini">�q���g</a>
				</label>
				<textarea cols="40" rows="10" name="text" id="textarea" placeholder="�ŋ߁A�炢�C�����ɂȂ����Ƃ��̋�̓I�ȏo�����������܂��B�ł��邾����̓I�ɏ�i�����肠��Ƃ����Ԃ��炢�B"></textarea>
			</div>
			<h3 id="mind-slider">���̎��̋C�������O���t�ɂ��悤</h3>
			<ul data-role="listview" data-inset="true">
				<li class="ui-field-contain">
					<label for="melancholy">�J�T:</label>
					<input type="range" name="melancholy" id="melancholy" value="0" min="0" max="100" data-highlight="true" step="10" />
				</li>
				<li class="ui-field-contain">
					<label for="sad">�߂���:</label>
					<input type="range" name="sad" id="sad" value="0" min="0" max="100" data-highlight="true" step="10" />
				</li>
				<li class="ui-field-contain">
					<label for="worry">�s��:</label>
					<input type="range" name="worry" id="worry" value="0" min="0" max="100" data-highlight="true" step="10" />
				</li>
				<li class="ui-field-contain">
					<label for="angry">�{��:</label>
					<input type="range" name="angry" id="angry" value="0" min="0" max="100" data-highlight="true" step="10" />
				</li>
			</ul>
			<div data-role="popup" id="popupInfo-think" class="ui-content" data-theme="a" style="max-width:350px;">
				<a href="#" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn-a ui-icon-delete ui-btn-icon-notext ui-btn-right">Close</a>
			  <p><strong>��1.</strong><br />
				�����͌��Ȑl�Ԃ����猙��ꂽ<br />
				����Ȏv�������邭�炢�Ȃ�����N�Ƃ�������Ȃ�<br />
				�ޏ��̂��Ȃ��l���Ȃ�Đ����Ă����Ȃ�</p>
			  <p><strong>��2. </strong><br />
			  �����΂��肪�d�������������Ă���<br />
			  �������̂�܂�����d�����I���Ȃ�<br /></p>
			  <p><strong>��3. </strong><br />
			  ���q���o�J�ɂ��Ă���I�c�C�b�^�[�Ŋg�U���ēX���Ԃ��Ă��I</p>
			</div>
			<div class="ui-field-contain">
				<label for="textarea">���̂Ƃ��ɓ��ɕ����񂾍l����C���[�W��������
				<a href="#popupInfo-think" data-rel="popup" data-transition="pop" class="ui-mini">�q���g</a>
				</label>
				<textarea cols="40" rows="10" name="think" id="textarea" placeholder="���̂Ƃ��ǂ�Ȏ������ɕ����т܂������H�ǂ�Ȃ��Ƃ��S�z�ɂȂ�܂������H"></textarea>
			</div>
			<fieldset data-role="controlgroup">
		        <legend>��̍��ڂōl�������ɓ��Ă͂܂���̂�����΃`�F�b�N</legend>
		        <input type="checkbox" name="unbalance-1" id="unbalance_1" value="true">
		        <label for="unbalance_1">��Q�ϑz</label>
		        <input type="checkbox" name="unbalance_2" id="unbalance_2" value="true">
		        <label for="unbalance_2">������`</label>
		        <input type="checkbox" name="unbalance_3" id="unbalance_3" value="true">
		        <label for="unbalance_3">���삪����</label>
		        <input type="checkbox" name="unbalance_4" id="unbalance_4" value="true">
		        <label for="unbalance_4">���M���Ȃ�</label>
		        <input type="checkbox" name="unbalance_5" id="unbalance_5" value="true">
		        <label for="unbalance_5">�����痣��Ȃ�</label>
		        <input type="checkbox" name="unbalance_6" id="unbalance_6" value="true">
		        <label for="unbalance_6">�����������܂������Ȃ�</label>
		        <input type="checkbox" name="unbalance_7" id="unbalance_7" value="true">
		        <label for="unbalance_7">�������������̂���</label>
		    </fieldset>
			<div class="ui-field-contain">
				<input type="submit" id="submit-1" value="����">
			</div>
		</form>
	</div>
</body>
</html>