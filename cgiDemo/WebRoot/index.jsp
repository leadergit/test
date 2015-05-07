<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<!--
   <base href="<%=basePath%>">
    -->
<title>CGI测试</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
    -->
</head>

<body>
	<%=basePath%>
	<center>
		get:
		<form action="cgi-bin/cgi.exe" method="get" name="cgiForm">
			输入test<input name="test" type="text" /> <br /> 输入begin_key<input
				name="begin_key" type="text" /> <br /> <input type="submit"
				value="提交" />
		</form>
	</center>
	<hr size="4" color="red">
	<center>
		post 得通过另外的方式才行 先得到Content-length:
		<form action="cgi-bin/cgi.exe" method="post" name="cgiForm">
			输入begin_key<input name="begin_key" type="text" /> <br /> <input
				type="submit" value="提交" />
		</form>
	</center>

	<hr size="4" color="red">
	<center>
		<FORM ACTION="cgi-bin/add.exe" method="get">
			<P>
				请在下面填入乘数和被乘数，按下确定后可以看到结果。 <INPUT NAME="m" SIZE="5" /> <INPUT
					NAME="n" SIZE="5" />
			</P>
			<BR /> <INPUT TYPE="SUBMIT" VALUE="确定" />
		</FORM>
	</center>
</body>
</html>