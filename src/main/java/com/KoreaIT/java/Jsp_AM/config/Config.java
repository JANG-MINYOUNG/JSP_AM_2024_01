package com.KoreaIT.java.Jsp_AM.config;

public class Config {

	public static String getDbDriverClassName() {
		return "com.mysql.jdbc.Driver";
	}

	public static String getDbUrl() {
		return "jdbc:mysql://127.0.0.1:3306/JSP_AM?useUnicode=true&characterEncoding=utf8&autoReconnect=true&serverTimezone=Asia/Seoul&useOldAliasMetadataBehavior=true&zeroDateTimeNehavior=convertToNull";

	}

	public static String getDbUser() {
		return "root";
	}

	public static String getDbPw() {
		return "";
	}

}