<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>更新心情</title>
</head>
<%Calendar calendar=Calendar.getInstance();
     String year =""+calendar.get(Calendar.YEAR);//获取年份
     String month=""+(calendar.get(Calendar.MONTH)+1);//获取月份  Calendar里的月份是0~11对应1~12月。
     String day=""+calendar.get(Calendar.DATE);//获取日
if(day.length()<2){
	 day="0"+day;
}
if(month.length()<2){
	 month="0"+month;
}
String str=month+"/"+day+"/"+year;
%>
<body>
修改下你的心情吧：
<form action="Mood-update" method="post">
<textarea name="mood.content" rows="5" cols="30"><s:property value="mood.content"/></textarea>
<input name="mood.posttime" type="hidden" value="<s:property value="mood.posttime"/>" />
<input name="mood.updatetime" type="hidden" value="<%=str %>"/>
<input name="mood.moodId" type="hidden" value="<%=request.getAttribute("moodId")%>"/>
<input type="submit" value="提交"/>
</form>
</body>
</html>