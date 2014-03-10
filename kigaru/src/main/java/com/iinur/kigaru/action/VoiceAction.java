package com.iinur.kigaru.action;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.InterceptorRef;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.interceptor.CookiesAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.iinur.kigaru.data.bean.Answer;
import com.iinur.kigaru.data.bean.Voice;
import com.iinur.kigaru.model.AnswerModel;
import com.iinur.kigaru.model.UserinfoModel;
import com.iinur.kigaru.model.VoiceModel;
import com.opensymphony.xwork2.ActionSupport;

@Action(value="/voice/{id:.+}",
interceptorRefs=
	  {@InterceptorRef(value="cookie" ,
	      params={"cookiesName", "hname" ,
	          "cookiesValue" , "*"}),
	  @InterceptorRef("defaultStack"),
	},
results={@Result(name="success", location="voice.jsp")}
)
public class VoiceAction extends ActionSupport implements CookiesAware, ServletResponseAware{

	private static final Logger log = LoggerFactory.getLogger(VoiceAction.class);

	private static final String COOKIE_HUNTER_NAME_KEY = "hname";
	private static final String COOKIE_ENC = "Windows-31J";

	public int id;
	public String text;
	public String name;
	
	private Voice voice;
	private List<Answer> as;
	private String ownName;
	
	public Voice getVoice() {
		return voice;
	}

	public void setVoice(Voice voice) {
		this.voice = voice;
	}


	public List<Answer> getAs() {
		return as;
	}


	public void setAs(List<Answer> as) {
		this.as = as;
	}

	public String getOwnName() {
		return ownName;
	}

	public void setOwnName(String ownName) {
		this.ownName = ownName;
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
		setVoice(vmodel.get(id));

		AnswerModel amodel = new AnswerModel();
		if(!StringUtils.isEmpty(text)){
			amodel.registration(id, name, text);
		}
		setAs(amodel.get(id));
		this.ownName = this.name;
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
