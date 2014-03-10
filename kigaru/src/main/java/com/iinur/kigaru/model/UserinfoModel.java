package com.iinur.kigaru.model;

import org.apache.commons.lang3.RandomStringUtils;

import com.iinur.kigaru.data.UserinfoDao;

public class UserinfoModel {

	private static final String NAME_PREFIX = "HUNTER";
	private static final String NAME_SUFFIX = "(仮)";
	
	public String generatName(){
		int id = getReservationId();
		String name = NAME_PREFIX + id + NAME_SUFFIX;
		update(id, name);
		return name;
	}

	public void update(int id, String name) {
		UserinfoDao udao = new UserinfoDao();
		udao.update(id, name);
	}

	public int getReservationId() {
		UserinfoDao udao = new UserinfoDao();
		String name = RandomStringUtils.randomAlphanumeric(6);
		udao.insert(name);
		return udao.getId(name);
	}

	public boolean containsName(String name) {
		UserinfoDao udao = new UserinfoDao();
		int id = udao.getId(name);
		if(id > 0){
			return true;
		} else {
			return false;
		}
	}
}
