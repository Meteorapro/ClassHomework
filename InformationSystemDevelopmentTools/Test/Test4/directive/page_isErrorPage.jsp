<%@ page contentType="text/html;charset=GBK" %>
<%@ page isErrorPage="true"%>
<html>
<head><title>pageָ��isErrorPage���Ե�ʹ��</title></head>
<body>
<h1>����һ���쳣����ҳ��</h1>
<h2>��page_errorPage.jspҳ�淢���쳣ʱ���ɿ�����ҳ������</h2>
<b>����������</b><%= exception.toString() %><p/>
<b>��ϸ����ԭ��</b>
<pre>
<%
	exception.printStackTrace(new java.io.PrintWriter(out)); 
%>
</pre>
</body>
</html> 
