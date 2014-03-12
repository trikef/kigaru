package com.iinur.kigaru.model;

import com.iinur.kigaru.data.AnswervalueDao;
import com.iinur.kigaru.data.VoiceDao;

public class AnswervalueModel {

	public static final int VALUE_ATTACK = 50;
	public boolean contains = false;
	public void registration(int answerId, String name, int good, int bad){
		UserinfoModel umodel = new UserinfoModel();
		int userId = umodel.getId(name);
		
		AnswervalueDao adao = new AnswervalueDao();
		
		if(adao.containsKey(answerId, userId) == 0){
			this.contains = true;
			adao.insert(answerId, userId, good, bad);
			
			VoiceDao vdao = new VoiceDao();
			vdao.updateHp(answerId, VALUE_ATTACK);
		}
	}
}
