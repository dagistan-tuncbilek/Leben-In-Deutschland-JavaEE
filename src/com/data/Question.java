package com.data;

public class Question {
	private String number;
	private String success;
	private String thema;
	private String trueAnswer;
	private String quest;
	private String answerA;
	private String answerB;
	private String answerC;
	private String answerD;
	private Boolean hasPhoto;
	private String studentAnswer;

	public Question() {
	}
	
	public Question(String number, String success, String thema, String trueAnswer, String quest, String answerA,
			String answerB, String answerC, String answerD, Boolean hasPhoto) {
		super();
		this.number = number;
		this.success = success;
		this.thema = thema;
		this.trueAnswer = trueAnswer;
		this.quest = quest;
		this.answerA = answerA;
		this.answerB = answerB;
		this.answerC = answerC;
		this.answerD = answerD;
		this.hasPhoto = hasPhoto;
	}

	
	
	public String getStudentAnswer() {
		return studentAnswer;
	}

	public void setStudentAnswer(String falseAnswer) {
		this.studentAnswer = falseAnswer;
	}

	public Boolean getHasPhoto() {
		return hasPhoto;
	}

	public void setHasPhoto(Boolean hasPhoto) {
		this.hasPhoto = hasPhoto;
	}

	public String getThema() {
		return thema;
	}

	public void setThema(String thema) {
		this.thema = thema;
	}

	public String getNumber() {
		return number;
	}

	public String getQuest() {
		return quest;
	}

	public String getAnswerA() {
		return answerA;
	}

	public String getAnswerB() {
		return answerB;
	}

	public String getAnswerC() {
		return answerC;
	}

	public String getAnswerD() {
		return answerD;
	}

	public String getTrueAnswer() {
		return trueAnswer;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public void setQuest(String quest) {
		this.quest = quest;
	}

	public void setAnswerA(String answerA) {
		this.answerA = answerA;
	}

	public void setAnswerB(String answerB) {
		this.answerB = answerB;
	}

	public void setAnswerC(String answerC) {
		this.answerC = answerC;
	}

	public void setAnswerD(String answerD) {
		this.answerD = answerD;
	}

	public void setTrueAnswer(String trueAnswer) {
		this.trueAnswer = trueAnswer;
	}

	public String getSuccess() {
		return success;
	}

	public void setSuccess(String success) {
		this.success = success;
	}	

	@Override
	public String toString() {
		return "Question [number=" + number + ", quest=" + quest + "]";
	}
	
}
