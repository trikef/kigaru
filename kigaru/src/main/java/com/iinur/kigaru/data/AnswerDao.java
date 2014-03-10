package com.iinur.kigaru.data;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.iinur.core.data.BaseDao;
import com.iinur.kigaru.data.bean.Answer;

public class AnswerDao extends BaseDao{

	private static final Logger log = LoggerFactory.getLogger(AnswerDao.class);

	public AnswerDao() {
		super();
	}
	
	public Answer getSingle(int answerId){
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT ");
		sql.append("a.id, a.user_id, a.voice_id, a.text, a.created_at, u.name, av.good, av.bad ");
		sql.append("FROM answer a ");
		sql.append("LEFT JOIN user_info u ON a.user_id = u.id ");
		sql.append("LEFT JOIN (");
		sql.append("SELECT answer_id, sum(good) as good, sum(bad) as bad FROM answer_value GROUP BY answer_id");
		sql.append(") av ON a.id = av.answer_id ");
		sql.append("WHERE a.id = ? ");

		Answer a = null;
		try {
			ResultSetHandler<Answer> rsh = new BeanHandler<Answer>(
					Answer.class);
			a = run.query(sql.toString(), rsh, answerId);
		} catch (SQLException sqle) {
			log.error(sqle.getMessage());
			throw new RuntimeException(sqle.toString());
		}
		return a;
	}
	
	public List<Answer> get(int voiceId){
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT ");
		sql.append("a.id, a.user_id, a.voice_id, a.text, a.created_at, u.name, av.good, av.bad ");
		sql.append("FROM answer a ");
		sql.append("LEFT JOIN user_info u ON a.user_id = u.id ");
		sql.append("LEFT JOIN (");
		sql.append("SELECT answer_id, sum(good) as good, sum(bad) as bad FROM answer_value GROUP BY answer_id");
		sql.append(") av ON a.id = av.answer_id ");
		sql.append("WHERE voice_id = ? ");
		sql.append("ORDER BY a.created_at DESC");

		List<Answer> as = null;
		try {
			log.debug("get(int voiceId):"+sql.toString());
			ResultSetHandler<List<Answer>> rsh = new BeanListHandler<Answer>(
					Answer.class);
			as = run.query(sql.toString(), rsh, voiceId);
		} catch (SQLException sqle) {
			log.error(sqle.getMessage());
			throw new RuntimeException(sqle.toString());
		}
		return as;
	}
	
	public void insert(int voiceId, int userId, String text){
		String sql = "INSERT INTO answer (voice_id, user_id, text) VALUES (?,?,?)";
		try {
			run.update(sql,voiceId, userId, text);
		} catch (SQLException sqle) {
			log.error(sqle.getMessage());
			throw new RuntimeException(sqle.toString());
		}
	}
}
