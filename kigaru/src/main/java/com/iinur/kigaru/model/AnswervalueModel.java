package com.iinur.kigaru.model;

import com.iinur.kigaru.data.AnswervalueDao;

public class AnswervalueModel {

	public void registration(int answerId, String name, int good, int bad){
		UserinfoModel umodel = new UserinfoModel();
		int userId = umodel.getId(name);
		
		AnswervalueDao adao = new AnswervalueDao();
		
		if(adao.containsKey(answerId, userId) == 0){
			adao.insert(answerId, userId, good, bad);	
		}
	}
}
