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
				<li><a href="/voiceinput" class="ui-btn-active ui-state-persist" data-icon="plus">モンスター</a></li>
				<li><a href="/mypage" data-icon="user">マイページ</a></li>
			</ul>
		</div>
		<h1>Mind Monsters！</h1>
	</div><!-- /header -->
	<div class="ui-content" role="main">
		<h4>あなたは心の闇からモンスターを生み出してしまう能力「マインドモンスター」の持ち主です。うまれたモンスターを自分で、またはみんなでやっつけて平和を取り戻そう！</h4>
		<form class="ui-mini" action="/voiceregi" method="post">
			<input type="hidden" name="name" value="<s:property value="name" />" />
			<h3 id="mind-slider">心の闇がうまれた状況を入力しよう</h3>
		    <div class="ui-field-contain">
			    <label for="place-input">どこでおこりましたか？:</label>
			    <select name="place" id="place-input">
			        <option value="職場">職場</option>
			        <option value="学校">学校</option>
			        <option value="家庭">家庭</option>
			        <option value="おでかけ">おでかけ</option>
			    </select>
			</div>
			<div class="ui-field-contain">
			    <label for="who-input">そこにはだれがいましたか？:</label>
			    <select name="who" id="who-input">
					<option value="自分">自分</option>
			        <option value="上司">上司</option>
			        <option value="同僚">同僚</option>
			        <option value="部下">部下</option>
			        <option value="友人">友人</option>
			        <option value="知人">知人</option>
					<option value="他人">他人</option>
					<option value="親">親</option>
					<option value="家族">家族</option>
					<option value="子供">子供</option>
			    </select>
			</div>
			<div data-role="popup" id="popupInfo-title" class="ui-content" data-theme="a" style="max-width:350px;">
				<a href="#" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn-a ui-icon-delete ui-btn-icon-notext ui-btn-right">Close</a>
			  <p><strong>例1. </strong>長くつきあってた恋人と別れた</p>
			  <p><strong>例2. </strong>部署内で自分だけ残業が多い</p>
			  <p><strong>例3. </strong>テイクアウトのコーヒーが煮詰まっていて苦かった</p>
			</div>
			<div class="ui-field-contain">
			    <label for="title-input">タイトル
			    <a href="#popupInfo-title" data-rel="popup" data-transition="pop" class="ui-mini">ヒント</a>
			    </label>
	     		<input type="text" name="title" id="title-input" value="" placeholder="状況がわかりやすいタイトル">
	     	</div>
	     	<div data-role="popup" id="popupInfo-text" class="ui-content" data-theme="a" style="max-width:350px;">
				<a href="#" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn-a ui-icon-delete ui-btn-icon-notext ui-btn-right">Close</a>
			  <p><strong>例1. </strong>突然別れを切り出されて出て行かれてしまった。もうだれともつきあいたくない。なにがいけなかったのかがわからない。生きていくのがつらい。</p>
			  <p><strong>例2. </strong>いつも自分ばかり仕事が多くて同僚は定時で帰ってしまう。同じマネージャー職の人員が足りてなくて自分が帰るのは終電ばかり。もう会社を辞めたい。</p>
			  <p><strong>例3. </strong>そんなに安くないコーヒー店で買ったのに煮詰まっていてとてもまずかった。家に帰った後に気がついたので文句を言いにいくのも面倒だ。イライラする！</p>
			</div>
			<div class="ui-field-contain">
				<label for="textarea">状況を整理して書こう
				<a href="#popupInfo-text" data-rel="popup" data-transition="pop" class="ui-mini">ヒント</a>
				</label>
				<textarea cols="40" rows="10" name="text" id="textarea" placeholder="最近、つらい気持ちになったときの具体的な出来事を書きます。できるだけ具体的に情景がありありとうかぶくらい。"></textarea>
			</div>
			<h3 id="mind-slider">その時の気持ちをグラフにしよう</h3>
			<ul data-role="listview" data-inset="true">
				<li class="ui-field-contain">
					<label for="melancholy">憂鬱:</label>
					<input type="range" name="melancholy" id="melancholy" value="0" min="0" max="100" data-highlight="true" step="10" />
				</li>
				<li class="ui-field-contain">
					<label for="sad">悲しい:</label>
					<input type="range" name="sad" id="sad" value="0" min="0" max="100" data-highlight="true" step="10" />
				</li>
				<li class="ui-field-contain">
					<label for="worry">不安:</label>
					<input type="range" name="worry" id="worry" value="0" min="0" max="100" data-highlight="true" step="10" />
				</li>
				<li class="ui-field-contain">
					<label for="angry">怒り:</label>
					<input type="range" name="angry" id="angry" value="0" min="0" max="100" data-highlight="true" step="10" />
				</li>
			</ul>
			<div data-role="popup" id="popupInfo-think" class="ui-content" data-theme="a" style="max-width:350px;">
				<a href="#" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn-a ui-icon-delete ui-btn-icon-notext ui-btn-right">Close</a>
			  <p><strong>例1.</strong><br />
				自分は嫌な人間だから嫌われた<br />
				こんな思いをするくらいならもう誰ともつきあわない<br />
				彼女のいない人生なんて生きていけない</p>
			  <p><strong>例2. </strong><br />
			  自分ばかりが仕事をおしつけられている<br />
			  自分がのろまだから仕事が終わらない<br /></p>
			  <p><strong>例3. </strong><br />
			  お客をバカにしている！ツイッターで拡散して店をつぶしてやる！</p>
			</div>
			<div class="ui-field-contain">
				<label for="textarea">そのときに頭に浮かんだ考えやイメージを書こう
				<a href="#popupInfo-think" data-rel="popup" data-transition="pop" class="ui-mini">ヒント</a>
				</label>
				<textarea cols="40" rows="10" name="think" id="textarea" placeholder="そのときどんな事が頭に浮かびましたか？どんなことが心配になりましたか？"></textarea>
			</div>
			<fieldset data-role="controlgroup">
		        <legend>上の項目で考えた事に当てはまるものがあればチェック</legend>
		        <input type="checkbox" name="unbalance-1" id="unbalance_1" value="true">
		        <label for="unbalance_1">被害妄想</label>
		        <input type="checkbox" name="unbalance_2" id="unbalance_2" value="true">
		        <label for="unbalance_2">完璧主義</label>
		        <input type="checkbox" name="unbalance_3" id="unbalance_3" value="true">
		        <label for="unbalance_3">視野が狭い</label>
		        <input type="checkbox" name="unbalance_4" id="unbalance_4" value="true">
		        <label for="unbalance_4">自信がない</label>
		        <input type="checkbox" name="unbalance_5" id="unbalance_5" value="true">
		        <label for="unbalance_5">頭から離れない</label>
		        <input type="checkbox" name="unbalance_6" id="unbalance_6" value="true">
		        <label for="unbalance_6">だいたいうまくいかない</label>
		        <input type="checkbox" name="unbalance_7" id="unbalance_7" value="true">
		        <label for="unbalance_7">だいたい自分のせい</label>
		    </fieldset>
			<div class="ui-field-contain">
				<input type="submit" id="submit-1" value="完了">
			</div>
		</form>
	</div>
</body>
</html>