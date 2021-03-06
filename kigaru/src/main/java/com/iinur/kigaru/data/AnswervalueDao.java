package com.iinur.kigaru.data;

import java.sql.SQLException;

import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.iinur.core.data.BaseDao;

public class AnswervalueDao extends BaseDao{

	private static final Logger log = LoggerFactory.getLogger(AnswervalueDao.class);

	public AnswervalueDao() {
		super();
	}
	public int containsKey(int answerId, int userId){
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT ");
		sql.append("count(*) as c ");
		sql.append("FROM answer_value ");
		sql.append("WHERE answer_id = ? AND user_id = ?");

		int a = 0;
		try {
			ResultSetHandler<Long> rsh = new ScalarHandler<Long>();
			a = run.query(sql.toString(), rsh, answerId, userId).intValue();
		} catch (SQLException sqle) {
			log.error(sqle.getMessage());
			throw new RuntimeException(sqle.toString());
		}
		return a;
	}

	public void insert(int answerId, int userId, int good, int bad){
		String sql = "INSERT INTO answer_value (answer_id, user_id, good, bad) VALUES (?,?,?,?)";
		try {
			run.update(sql,answerId, userId, good, bad);
		} catch (SQLException sqle) {
			log.error(sqle.getMessage());
			throw new RuntimeException(sqle.toString());
		}
	}
}
