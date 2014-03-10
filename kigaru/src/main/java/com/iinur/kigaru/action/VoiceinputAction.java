package com.iinur.kigaru.action;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.convention.annotation.InterceptorRef;
import org.apache.struts2.convention.annotation.InterceptorRefs;
import org.apache.struts2.interceptor.CookiesAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.iinur.kigaru.model.AnswerModel;
import com.iinur.kigaru.model.UserinfoModel;
import com.iinur.kigaru.model.VoiceModel;
import com.opensymphony.xwork2.ActionSupport;

@InterceptorRefs({
	  // Cookie Interceptorの設定 … (A)
	  @InterceptorRef(value="cookie" ,
	      params={"cookiesName", "hname" ,
	          "cookiesValue" , "*"}),
	  // デフォルト定義インターセプタ群
	  @InterceptorRef("defaultStack"),
	})
public class VoiceinputAction extends ActionSupport implements CookiesAware, ServletResponseAware{

	private static final Logger log = LoggerFactory.getLogger(VoiceinputAction.class);

	private static final String COOKIE_HUNTER_NAME_KEY = "hname";
	private static final String COOKIE_ENC = "Windows-31J";
	private String name;
	private int voiceNum;
	private int huntNum;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getVoiceNum() {
		return voiceNum;
	}

	public void setVoiceNum(int voiceNum) {
		this.voiceNum = voiceNum;
	}

	public int getHuntNum() {
		return huntNum;
	}

	public void setHuntNum(int huntNum) {
		this.huntNum = huntNum;
	}

	public String execute(){
		UserinfoModel umodel = new UserinfoModel();
		try {
			if (cookie.containsKey(COOKIE_HUNTER_NAME_KEY)) {

				this.name = URLDecoder.decode(
						cookie.get(COOKIE_HUNTER_NAME_KEY), COOKIE_ENC);
				if(!umodel.containsName(this.name)){
					generateName(umodel);
				}
			} else {
				generateName(umodel);
			}
		} catch (UnsupportedEncodingException e) {
			log.error(e.getMessage());
		}
		VoiceModel vmodel = new VoiceModel();
		voiceNum = vmodel.count(this.name);
		
		AnswerModel amodel = new AnswerModel();
		huntNum = amodel.count(this.name);
		return SUCCESS;
	}

	private void generateName(UserinfoModel umodel)
			throws UnsupportedEncodingException {
		this.name = umodel.generatName();
		String nameE = this.name;
		nameE = URLEncoder.encode(this.name, COOKIE_ENC);
		Cookie newCookie = new Cookie(COOKIE_HUNTER_NAME_KEY, nameE);
		newCookie.setMaxAge(2 * 360 * 24 * 60 * 60);
		response.addCookie(newCookie);
	}

	private HttpServletResponse response;
	private Map<String, String> cookie;
	
	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	@Override
	public void setCookiesMap(Map<String, String> cookies) {
		this.cookie = cookies;
	}
	/*
	 * cookie hunter name
	 */
	private String hname;

	public String getHname() {
		return hname;
	}

	public void setHname(String hname) {
		this.hname = hname;
	}
}