<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>更新成功页面</title>
</head>
<body>
更新成功！三秒后跳转到心情列表，没有跳转，请点击<a href="Mood-list">这里</a>
<%response.setHeader("refresh", "3;URL=Mood-list"); %>
</body>
</html>