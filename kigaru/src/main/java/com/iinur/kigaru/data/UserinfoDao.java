package com.iinur.kigaru.data;

import java.sql.SQLException;

import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.iinur.core.data.BaseDao;

public class UserinfoDao extends BaseDao{
	private static final Logger log = LoggerFactory.getLogger(UserinfoDao.class);

	public UserinfoDao() {
		super();
	}
	
	public int getId(String name) {
		String sql = "SELECT id FROM user_info Where name=? limit 1";
		Integer userId;
		try {
			ResultSetHandler<Integer> rsh = new ScalarHandler<Integer>();
			userId = run.query(sql, rsh, name);
		} catch (SQLException sqle) {
			log.error(sqle.getMessage());
			throw new RuntimeException(sqle.toString());
		}
		if(userId == null){
			userId = 0;
		}
		return userId;
	}

	public void insert(String name){
		String sql = "INSERT INTO user_info (name) VALUES (?)";
		try {
			run.update(sql,name);
		} catch (SQLException sqle) {
			log.error(sqle.getMessage());
			throw new RuntimeException(sqle.toString());
		}
	}

	public void update(int id, String name) {
		String sql = "UPDATE user_info SET name =? WHERE id =?";
		try {
			run.update(sql,name,id);
		} catch (SQLException sqle) {
			log.error(sqle.getMessage());
			throw new RuntimeException(sqle.toString());
		}
	}
}
