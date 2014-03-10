package com.iinur.kigaru.action;

import com.iinur.kigaru.data.bean.Answer;
import com.iinur.kigaru.model.AnswerModel;
import com.iinur.kigaru.model.AnswervalueModel;
import com.opensymphony.xwork2.ActionSupport;

import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

@ParentPackage("json-default")

//Actionクラスの結果。type=jsonでJSON形式
@Results({
@Result(name="success" , type="json" ,
       params={"root","answer" , "ignoreHierarchy","false"}),
})
public class AnswervalueAction extends ActionSupport{

	public String n;//name
	public int i;//answer_id
	public int g;//good
	public int b;//bad
	public String c;
	
	private Answer answer;
	public Answer getAnswer() {
		return answer;
	}
	public void setAnswer(Answer answer) {
		this.answer = answer;
	}
	public String execute(){
		AnswervalueModel avmodel = new AnswervalueModel();
		avmodel.registration(i, n, g, b);
		
		AnswerModel amodel = new AnswerModel();
		this.answer = amodel.getSingle(i);
		return SUCCESS;
	}
	
}
