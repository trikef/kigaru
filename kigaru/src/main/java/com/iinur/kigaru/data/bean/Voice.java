package com.iinur.kigaru.data.bean;

import java.sql.Timestamp;

public class Voice {

	private int id;
	private String who;
	private String place;
	private String title;
	private String text;
	private int user_id;
	private int melancholy;
	private int sad;
	private int worry;
	private int angry;
	private String think;
	private boolean unbalance_1;
	private boolean unbalance_2;
	private boolean unbalance_3;
	private boolean unbalance_4;
	private boolean unbalance_5;
	private boolean unbalance_6;
	private boolean unbalance_7;
	private boolean unbalance_8;
	private boolean unbalance_9;
	private boolean unbalance_10;
	private String monster;
	private int max_hp;
	private int hp;
	private Timestamp created_at;
	private String name;
	private int answernum;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getWho() {
		return who;
	}
	public void setWho(String who) {
		this.who = who;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getMelancholy() {
		return melancholy;
	}
	public void setMelancholy(int melancholy) {
		this.melancholy = melancholy;
	}
	public int getSad() {
		return sad;
	}
	public void setSad(int sad) {
		this.sad = sad;
	}
	public int getWorry() {
		return worry;
	}
	public void setWorry(int worry) {
		this.worry = worry;
	}
	public int getAngry() {
		return angry;
	}
	public void setAngry(int angry) {
		this.angry = angry;
	}
	public String getThink() {
		return think;
	}
	public void setThink(String think) {
		this.think = think;
	}
	public boolean isUnbalance_1() {
		return unbalance_1;
	}
	public void setUnbalance_1(boolean unbalance_1) {
		this.unbalance_1 = unbalance_1;
	}
	public boolean isUnbalance_2() {
		return unbalance_2;
	}
	public void setUnbalance_2(boolean unbalance_2) {
		this.unbalance_2 = unbalance_2;
	}
	public boolean isUnbalance_3() {
		return unbalance_3;
	}
	public void setUnbalance_3(boolean unbalance_3) {
		this.unbalance_3 = unbalance_3;
	}
	public boolean isUnbalance_4() {
		return unbalance_4;
	}
	public void setUnbalance_4(boolean unbalance_4) {
		this.unbalance_4 = unbalance_4;
	}
	public boolean isUnbalance_5() {
		return unbalance_5;
	}
	public void setUnbalance_5(boolean unbalance_5) {
		this.unbalance_5 = unbalance_5;
	}
	public boolean isUnbalance_6() {
		return unbalance_6;
	}
	public void setUnbalance_6(boolean unbalance_6) {
		this.unbalance_6 = unbalance_6;
	}
	public boolean isUnbalance_7() {
		return unbalance_7;
	}
	public void setUnbalance_7(boolean unbalance_7) {
		this.unbalance_7 = unbalance_7;
	}
	public boolean isUnbalance_8() {
		return unbalance_8;
	}
	public void setUnbalance_8(boolean unbalance_8) {
		this.unbalance_8 = unbalance_8;
	}
	public boolean isUnbalance_9() {
		return unbalance_9;
	}
	public void setUnbalance_9(boolean unbalance_9) {
		this.unbalance_9 = unbalance_9;
	}
	public boolean isUnbalance_10() {
		return unbalance_10;
	}
	public void setUnbalance_10(boolean unbalance_10) {
		this.unbalance_10 = unbalance_10;
	}
	public String getMonster() {
		return monster;
	}
	public void setMonster(String monster) {
		this.monster = monster;
	}
	public int getMax_hp() {
		return max_hp;
	}
	public void setMax_hp(int max_hp) {
		this.max_hp = max_hp;
	}
	public int getHp() {
		return hp;
	}
	public void setHp(int hp) {
		this.hp = hp;
	}
	
	public int getHp_state(){
		return (int)(((double)hp / (double)max_hp)* 100);
	}

	public Timestamp getCreated_at() {
		return created_at;
	}
	public void setCreated_at(Timestamp created_at) {
		this.created_at = created_at;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAnswernum() {
		return answernum;
	}
	public void setAnswernum(int answernum) {
		this.answernum = answernum;
	}
}
