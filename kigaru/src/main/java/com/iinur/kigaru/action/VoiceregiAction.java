package com.iinur.kigaru.action;

import org.apache.struts2.convention.annotation.InterceptorRefs;
import org.apache.struts2.convention.annotation.InterceptorRef;
import org.apache.struts2.convention.annotation.Results;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.dispatcher.ServletRedirectResult;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.iinur.kigaru.data.bean.Voice;
import com.iinur.kigaru.model.VoiceModel;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.Validations;

@Results({
    @Result(name = "input", type = "dispatcher", location = "voiceinput.jsp"),
    @Result(name = "complete", type = "dispatcher", location = "index.jsp")
})
@InterceptorRefs({
    @InterceptorRef("defaultStack")
})
public class VoiceregiAction extends ActionSupport {

	private static final Logger log = LoggerFactory.getLogger(VoiceregiAction.class);

	public String who;
	public String place;
	public String title;
	public String text;
	public String name;
	public int melancholy;
	public int sad;
	public int worry;
	public int angry;
	public String think;
	public boolean unbalance_1;
	public boolean unbalance_2;
	public boolean unbalance_3;
	public boolean unbalance_4;
	public boolean unbalance_5;
	public boolean unbalance_6;
	public boolean unbalance_7;
	public boolean unbalance_8;
	public boolean unbalance_9;
	public boolean unbalance_10;

	private Voice voice;
	public Voice getVoice() {
		return voice;
	}
	public void setVoice(Voice voice) {
		this.voice = voice;
	}
	@Validations(
	        requiredStrings = {
	            @RequiredStringValidator(
	                fieldName = "text",
	                message = "checkValueは必須入力です")
	        })
	public String execute(){
		VoiceModel vmodel = new VoiceModel();
		vmodel.registration(who, place, title, text, name, melancholy, sad, worry, angry, think,
				unbalance_1, unbalance_2, unbalance_3, unbalance_4, unbalance_5, unbalance_6, unbalance_7, unbalance_8, unbalance_9, unbalance_10);

		setVoice(vmodel.get(name).get(0));
		return SUCCESS;
	}
}
