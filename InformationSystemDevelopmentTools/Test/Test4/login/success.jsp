<%@ page contentType="text/html;charset=GBK"%>
<html>
<head><title>��¼�ɹ�</title></head>
<body>
<%
	String name=(String)session.getAttribute("loginUserName");
	if(name == null){
		out.println("<h3>���ȵ�¼�ٷ��ʣ�5��󷵻�<a href=\"login.html\">��¼ҳ��</a>��</h3>");
		response.setHeader("Refresh","5;url=login.html");
	}else{
		out.println("<h3>��ӭ"+name+"����¼�ɹ�!</h3>");
	}
%>
</body>
</html>