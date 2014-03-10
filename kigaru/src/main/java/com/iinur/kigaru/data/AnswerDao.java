package com.iinur.kigaru.data;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.ResultSetHandler;
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
	
	public List<Answer> get(int voiceId){
		String sql = "	SELECT "
				+ "			a.id, a.user_id, a.voice_id, a.text, a.created_at, u.name "
				+ "		FROM answer a "
				+ "		LEFT JOIN user_info u ON a.user_id = u.id "
				+ "		WHERE voice_id = ?";
		List<Answer> as = null;
		try {
			ResultSetHandler<List<Answer>> rsh = new BeanListHandler<Answer>(
					Answer.class);
			as = run.query(sql, rsh, voiceId);
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
