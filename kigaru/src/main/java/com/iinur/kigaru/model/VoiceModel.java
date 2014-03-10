package com.iinur.kigaru.model;

import java.util.List;

import org.apache.commons.lang3.StringUtils;

import com.iinur.kigaru.data.UserinfoDao;
import com.iinur.kigaru.data.VoiceDao;
import com.iinur.kigaru.data.bean.Voice;

public class VoiceModel {

	public Voice get(int id) {
		VoiceDao dao = new VoiceDao();
		return dao.get(id);
	}

	public List<Voice> get(int point, int limit) {
		VoiceDao dao = new VoiceDao();
		return dao.get(point, limit);
	}

	public List<Voice> get(String name) {
		VoiceDao dao = new VoiceDao();
		return dao.get(name);
	}

	public void registration(String title, String text, String name) {
		UserinfoDao udao = new UserinfoDao();
		int userId = 0;
		if (!StringUtils.isEmpty(name)) {
			userId = udao.getId(name);
		}

		VoiceDao vdao = new VoiceDao();
		vdao.insert(title, text, userId);
	}

	public void registration(String who, String place, String title,
			String text, String name, int melancholy, int sad, int worry,
			int angry, String think, boolean unbalance_1, boolean unbalance_2,
			boolean unbalance_3, boolean unbalance_4, boolean unbalance_5, boolean unbalance_6,
			boolean unbalance_7, boolean unbalance_8, boolean unbalance_9, boolean unbalance_10) {
		UserinfoDao udao = new UserinfoDao();
		int userId = 0;
		if (!StringUtils.isEmpty(name)) {
			userId = udao.getId(name);
		}
		MonsterModel mmodel = new MonsterModel();
		String monster = mmodel.similar(melancholy, sad, worry, angry);

		VoiceDao vdao = new VoiceDao();
		vdao.insert(who, place, title, text, userId, melancholy, sad, worry,
				angry, think, unbalance_1, unbalance_2, unbalance_3,
				unbalance_4, unbalance_5, unbalance_6, unbalance_7,
				unbalance_8, unbalance_9, unbalance_10, monster);
	}

	public int count(String name) {
		// TODO 自動生成されたメソッド・スタブ
		return 0;
	}
}
