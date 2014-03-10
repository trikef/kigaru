package com.iinur.kigaru.model;

import java.util.List;

import org.apache.commons.lang3.StringUtils;

import com.iinur.kigaru.data.AnswerDao;
import com.iinur.kigaru.data.UserinfoDao;
import com.iinur.kigaru.data.bean.Answer;

public class AnswerModel {

	public List<Answer> get(int voiceId){
		AnswerDao adao = new AnswerDao();
		return adao.get(voiceId);
	}
	
	public Answer getSingle(int answerId){
		AnswerDao adao = new AnswerDao();
		return adao.getSingle(answerId);
	}
	
	public void registration(int voiceId, String name, String text){
		int userId = 0;
		if(!StringUtils.isEmpty(name)){
			UserinfoDao udao = new UserinfoDao();
			userId = udao.getId(name);
			if(userId == 0){
				udao.insert(name);
				userId = udao.getId(name);
			}
			
		}
		
		AnswerDao adao = new AnswerDao();
		adao.insert(voiceId, userId, text);
	}

	public int count(String name) {
		// TODO 自動生成されたメソッド・スタブ
		return 0;
	}
}
