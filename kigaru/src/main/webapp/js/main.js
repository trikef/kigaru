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
			if (type == 'good') {
				$(hid).text(data.good);
			} else if (type == 'bad') {
				$(hid).text(data.bad);
			}
		});
	}
};
