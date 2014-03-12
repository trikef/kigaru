package com.iinur.kigaru.data.bean;

import java.sql.Timestamp;

public class Answer {

	private int id;
	private int voice_id;
	private int user_id;
	private String name;
	private String text;
	private Timestamp created_at;
	private int good;
	private int bad;
	private int hp_state;
	private int attack;
	private boolean regi;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getVoice_id() {
		return voice_id;
	}
	public void setVoice_id(int voice_id) {
		this.voice_id = voice_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public Timestamp getCreated_at() {
		return created_at;
	}
	public void setCreated_at(Timestamp created_at) {
		this.created_at = created_at;
	}
	public int getGood() {
		return good;
	}
	public void setGood(int good) {
		this.good = good;
	}
	public int getBad() {
		return bad;
	}
	public void setBad(int bad) {
		this.bad = bad;
	}
	public int getHp_state() {
		return hp_state;
	}
	public void setHp_state(int hp_state) {
		this.hp_state = hp_state;
	}
	public int getAttack() {
		return attack;
	}
	public void setAttack(int attack) {
		this.attack = attack;
	}
	public boolean isRegi() {
		return regi;
	}
	public void setRegi(boolean regi) {
		this.regi = regi;
	}
}
