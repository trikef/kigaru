package com.iinur.kigaru.model;

import com.iinur.kigaru.data.MonsterDao;
import com.iinur.kigaru.data.bean.Monster;

public class MonsterModel {

	public String similar(int melancholy, int sad, int worry, int angry){
		MonsterDao mdao = new MonsterDao();
		return mdao.similar(melancholy, sad, worry, angry);
	}
}
