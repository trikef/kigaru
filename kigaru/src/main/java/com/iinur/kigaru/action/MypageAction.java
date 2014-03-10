package com.iinur.kigaru.action;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.convention.annotation.InterceptorRef;
import org.apache.struts2.convention.annotation.InterceptorRefs;
import org.apache.struts2.interceptor.CookiesAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.iinur.kigaru.data.bean.Voice;
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
public class MypageAction extends ActionSupport implements CookiesAware, ServletResponseAware{
	
	private static final Logger log = LoggerFactory.getLogger(MypageAction.class);

	private static final String COOKIE_HUNTER_NAME_KEY = "hname";
	private static final String COOKIE_ENC = "Windows-31J";

	private static final int VOICES_LIMIT = 50; 
	public String text;
	public String name;
	public int melancholy;
	public int sad;
	public int worry;
	public int angry;
	
	public int point = 0;
	
	private List<Voice> voices;

	public List<Voice> getVoices() {
		return voices;
	}

	public void setVoices(List<Voice> voices) {
		this.voices = voices;
	}
	
	public String execute(){

		try {
			if (cookie.containsKey(COOKIE_HUNTER_NAME_KEY)) {

				this.name = URLDecoder.decode(
						cookie.get(COOKIE_HUNTER_NAME_KEY), COOKIE_ENC);

			} else {
				UserinfoModel umodel = new UserinfoModel();
				this.name = umodel.generatName();
				String nameE = this.name;
				nameE = URLEncoder.encode(this.name, COOKIE_ENC);
				Cookie newCookie = new Cookie(COOKIE_HUNTER_NAME_KEY, nameE);
				newCookie.setMaxAge(2 * 360 * 24 * 60 * 60);
				response.addCookie(newCookie);
			}
		} catch (UnsupportedEncodingException e) {
			log.error(e.getMessage());
		}

		VoiceModel vmodel = new VoiceModel();
		this.voices = vmodel.get(this.name);
		return SUCCESS;
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
