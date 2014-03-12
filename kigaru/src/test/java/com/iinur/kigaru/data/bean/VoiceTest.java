package com.iinur.kigaru.data.bean;

import static org.junit.Assert.assertEquals;

import org.junit.Before;
import org.junit.Test;

public class VoiceTest {

	public Voice v = new Voice();
	public int hp = 1000;
	public int max_hp = 2000;

	@Before
	public void setUp(){
		v.setHp(hp);
		v.setMax_hp(max_hp);
	}
	@Test
	public void testGetHp_state() {
		System.out.println("getHp_state():" + v.getHp_state());
		assertEquals(v.getHp_state(), 50);
	}

}
