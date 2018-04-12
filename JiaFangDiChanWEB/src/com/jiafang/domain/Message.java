package com.jiafang.domain;

public class Message {
	private String username;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getDateTime() {
		return DateTime;
	}
	public void setDateTime(String dateTime) {
		DateTime = dateTime;
	}
	public String getMessagePlate() {
		return MessagePlate;
	}
	public void setMessagePlate(String messagePlate) {
		MessagePlate = messagePlate;
	}
	public String getMessageTitle() {
		return MessageTitle;
	}
	public void setMessageTitle(String messageTitle) {
		MessageTitle = messageTitle;
	}
	public String getMessageBody() {
		return MessageBody;
	}
	public void setMessageBody(String messageBody) {
		MessageBody = messageBody;
	}
	public String getFilePath() {
		return FilePath;
	}
	public void setFilePath(String filePath) {
		FilePath = filePath;
	}
	public String getMessageID() {
		return MessageID;
	}
	public void setMessageID(String messageID) {
		MessageID = messageID;
	}
	private String DateTime;
	private String MessagePlate;
	private String MessageTitle;
	private String MessageBody;
	private String FilePath;
	private String MessageID;
}
