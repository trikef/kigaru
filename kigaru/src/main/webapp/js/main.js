var Answer = {
	count : function(aid, name, good, bad, hid, type) {
		var defer = $.Deferred();
		$.ajax({
			url : "/answervalue",
			data : {
				i : aid,
				n : name,
				g : good,
				b : bad
			},
			dataType : 'json',
			success : defer.resolve,
			error : defer.reject
		});
		return defer.promise().done(function(data) {
			if(data.regi){
				if (type == 'good') {
					Answer.effect_flash('#voice-effect','yellow',data.attack);
					$(hid).text(data.good);
					Answer.attack('#monster-hp',data.hp_state);
				} else if (type == 'bad') {
					Answer.effect_flash('#voice-effect','purple',data.attack);
					$(hid).text(data.bad);
					Answer.attack('#monster-hp',data.hp_state);
				}
			}
		});
	},
	comment : function(vid, name, selector) {
		var defer = $.Deferred();
		var comment = $(selector).val();
		$.ajax({
			url : "/answer",
			data : {
				i : vid,
				n : name,
				c : comment
			},
			dataType : 'json',
			success : defer.resolve,
			error : defer.reject
		});
		return defer.promise().done(function(data) {
			if(data.regi){
				Answer.effect_flash('#voice-effect','white',data.attack);
				Answer.attack('#monster-hp',data.hp_state);
$('.comment').append("<li><div id='attack-comment-"+data.id+"' class='attack-comment-text'><div class='comment-header'>"+data.id+"<a href='#' class='ui-btn ui-shadow ui-corner-all ui-icon-user ui-btn-icon-notext ui-btn-inline'>あなた</a>あなた いま</div><div class='comment-text'>"+data.text+"</div><div class='comment-footer'></div></div></li>");
			}
		});
	},
	attack : function(selector,width){
		$(selector).css('width',width+'%');
	},
	effect_flash : function(selector,color,attack){
		$(selector).text(attack+'HIT!')
		.css({
			textAlign:'center',
			fontSize:'100px',
			fontColor:'white',
			opacity: '0.6',
			display: 'block',
			position: 'fixed',
			top: '0',
			left: '0',
			width: '100%',
			height: '100%',
			background: color,
			zIndex: '100'
			}).effect('pulsate').fadeOut(2000);
	}
};
$(document).on( 'pageshow',function(event){
	//TODO graph view
});