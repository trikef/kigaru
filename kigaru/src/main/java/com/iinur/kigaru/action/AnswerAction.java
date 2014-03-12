package com.iinur.kigaru.action;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.iinur.kigaru.data.bean.Answer;
import com.iinur.kigaru.data.bean.Userinfo;
import com.iinur.kigaru.data.bean.Voice;
import com.iinur.kigaru.model.AnswerModel;
import com.iinur.kigaru.model.UserinfoModel;
import com.iinur.kigaru.model.VoiceModel;
import com.opensymphony.xwork2.ActionSupport;

@ParentPackage("json-default")

@Results({
@Result(name="success" , type="json" ,
     params={"root","a", "ignoreHierarchy","false"}),
})
public class AnswerAction extends ActionSupport{

	private static final Logger log = LoggerFactory.getLogger(AnswerAction.class);

	public int i;//voice_id
	public String c;//comment
	public String n;//name
		
	public int getI() {
		return i;
	}

	public void setI(int i) {
		this.i = i;
	}

	public String getC() {
		return c;
	}

	public void setC(String c) {
		this.c = c;
	}

	public String getN() {
		return n;
	}

	public void setN(String n) {
		this.n = n;
	}

	private Answer a;

	public Answer getA() {
		return a;
	}

	public void setA(Answer a) {
		this.a = a;
	}

	public String execute(){

		AnswerModel amodel = new AnswerModel();
		if(!StringUtils.isEmpty(c)){
			amodel.registration(i, n, c);
			this.a = amodel.getNew(i, n);
			this.a.setRegi(true);
			
			UserinfoModel umodel = new UserinfoModel();
			Userinfo ui = umodel.get(n);
			this.a.setAttack(ui.getAttack());
			
			VoiceModel vmodel = new VoiceModel();
			Voice v = vmodel.get(i);
			this.a.setHp_state(v.getHp_state());
		} else {
			this.a = new Answer();
			a.setRegi(false);
		}
		return SUCCESS;
	}
}
