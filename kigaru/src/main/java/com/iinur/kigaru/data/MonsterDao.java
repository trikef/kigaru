package com.iinur.kigaru.data;

import java.sql.SQLException;

import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.iinur.core.data.BaseDao;
import com.iinur.kigaru.data.bean.Monster;

public class MonsterDao extends BaseDao {

	private static final Logger log = LoggerFactory.getLogger(MonsterDao.class);

	public MonsterDao() {
		super();
	}

	public String similar(int melancholy, int sad, int worry, int angry) {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT euclid_monster(?,?,?,?)");

		String n = null;
		try {
			//ResultSetHandler<Monster> rsh = new BeanHandler<Monster>(Monster.class);
			ResultSetHandler<String> rsh = new ScalarHandler<String>();
			n = run.query(sql.toString(), rsh, melancholy, sad, worry, angry);
		} catch (SQLException sqle) {
			log.error(sqle.getMessage());
			throw new RuntimeException(sqle.toString());
		}
		return n;
	}
}
