package com.iinur.kigaru.data;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.iinur.core.data.BaseDao;
import com.iinur.kigaru.data.bean.Voice;

public class VoiceDao extends BaseDao {
	private static final Logger log = LoggerFactory.getLogger(VoiceDao.class);

	public VoiceDao() {
		super();
	}

	public Voice get(int id) {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT ");
		sql.append("v.id, v.user_id, v.who, v.place, v.title, v.text, v.melancholy, v.sad, v.worry, v.angry, v.think, ");
		sql.append("v.unbalance_1, v.unbalance_2, v.unbalance_3, v.unbalance_4, v.unbalance_5, v.unbalance_6, v.unbalance_7, v.unbalance_8, v.unbalance_9, v.unbalance_10, ");
		sql.append("v.monster, v.created_at, u.name, a.answernum ");
		sql.append("FROM voice v ");
		sql.append("LEFT JOIN user_info u ON v.user_id = u.id ");
		sql.append("LEFT JOIN (SELECT voice_id, count(*) as answernum FROM answer GROUP BY voice_id) a ON v.id = a.voice_id ");
		sql.append("WHERE v.id = ?");

		Voice n = null;
		try {
			ResultSetHandler<Voice> rsh = new BeanHandler<Voice>(Voice.class);
			n = run.query(sql.toString(), rsh, id);
		} catch (SQLException sqle) {
			log.error(sqle.getMessage());
			throw new RuntimeException(sqle.toString());
		}
		return n;
	}

	public List<Voice> get(int point, int limit) {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT ");
		sql.append("v.id, v.user_id, v.who, v.place, v.title, v.text, v.melancholy, v.sad, v.worry, v.angry, v.think, ");
		sql.append("v.unbalance_1, v.unbalance_2, v.unbalance_3, v.unbalance_4, v.unbalance_5, v.unbalance_6, v.unbalance_7, v.unbalance_8, v.unbalance_9, v.unbalance_10, ");
		sql.append("v.monster, v.created_at, u.name, a.answernum ");
		sql.append("FROM voice v ");
		sql.append("LEFT JOIN user_info u ON v.user_id = u.id ");
		sql.append("LEFT JOIN (SELECT voice_id, count(*) as answernum FROM answer GROUP BY voice_id) a ON v.id = a.voice_id ");
		sql.append("WHERE v.id <= (SELECT max(id) FROM voice)-? ORDER BY v.id DESC LIMIT ?");

		List<Voice> ns = null;
		try {
			ResultSetHandler<List<Voice>> rsh = new BeanListHandler<Voice>(
					Voice.class);
			ns = run.query(sql.toString(), rsh, point, limit);
		} catch (SQLException sqle) {
			log.error(sqle.getMessage());
			throw new RuntimeException(sqle.toString());
		}
		return ns;
	}

	public List<Voice> get(String name) {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * FROM (");
		sql.append("SELECT ");
		sql.append("vi.id, vi.user_id, vi.who, vi.place, vi.title, vi.text, vi.melancholy, vi.sad, vi.worry, vi.angry, vi.think, ");
		sql.append("vi.unbalance_1, vi.unbalance_2, vi.unbalance_3, vi.unbalance_4, vi.unbalance_5, vi.unbalance_6, vi.unbalance_7, vi.unbalance_8, vi.unbalance_9, vi.unbalance_10, ");
		sql.append("vi.monster, vi.created_at, ui.name, a.answernum, ");
		sql.append("ROW_NUMBER() OVER (PARTITION BY ui.name ORDER BY ui.name ASC) as nid ");
		sql.append("FROM voice vi ");
		sql.append("LEFT JOIN user_info ui ON vi.user_id = ui.id ");
		sql.append("LEFT JOIN (SELECT voice_id, count(*) as answernum FROM answer GROUP BY voice_id) a ON vi.id = a.voice_id ");
		sql.append("WHERE ui.name = ?) v ");
		sql.append("ORDER BY v.id DESC");

		List<Voice> ns = null;
		try {
			ResultSetHandler<List<Voice>> rsh = new BeanListHandler<Voice>(
					Voice.class);
			ns = run.query(sql.toString(), rsh, name);
		} catch (SQLException sqle) {
			log.error(sqle.getMessage());
			throw new RuntimeException(sqle.toString());
		}
		return ns;
	}

	public void insert(String title, String text, int userId) {
		String sql = "INSERT INTO voice (title, text, user_id) VALUES (?,?,?)";
		try {
			run.update(sql, title, text, userId);
		} catch (SQLException sqle) {
			log.error(sqle.getMessage());
			throw new RuntimeException(sqle.toString());
		}
	}

	public void insert(String who, String place, String title, String text,
			int userId, int melancholy, int sad, int worry, int angry,
			String think, boolean unbalance_1, boolean unbalance_2, boolean unbalance_3,
			boolean unbalance_4, boolean unbalance_5, boolean unbalance_6, boolean unbalance_7,
			boolean unbalance_8, boolean unbalance_9, boolean unbalance_10, String monster) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO voice (");
		sql.append("who, place, title, text, user_id, melancholy, sad, worry, angry, think,");
		sql.append("unbalance_1, unbalance_2, unbalance_3, unbalance_4, unbalance_5, unbalance_6, unbalance_7, unbalance_8, unbalance_9, unbalance_10, monster");
		sql.append(") VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

		try {
			run.update(sql.toString(), who, place, title, text, userId,
					melancholy, sad, worry, angry, think, unbalance_1,
					unbalance_2, unbalance_3, unbalance_4, unbalance_5,
					unbalance_6, unbalance_7, unbalance_8, unbalance_9,
					unbalance_10,monster);
		} catch (SQLException sqle) {
			log.error(sqle.getMessage());
			throw new RuntimeException(sqle.toString());
		}
	}
}
