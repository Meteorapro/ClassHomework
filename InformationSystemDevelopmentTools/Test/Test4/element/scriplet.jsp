<%@ page contentType="text/html;charset=GBK" import="java.util.*"%>
<html>
<head><title>�ű���ʾ��</title></head>
<body>
<h2>
<%
	String name="����";
	if(Calendar.getInstance().get(Calendar.AM_PM)==Calendar.AM){
		out.println(name+"������ã�");		//ʹ��out�������
	}else{
		out.println(name+"������ã�");
	}
	int i=0;
	out.println("<br/>i��ֵ��"+i);
	out.println("<br/>�����޸ľֲ�����i��ֵ");
	i++;
	out.println("<br/>�޸ĺ�i��ֵ��"+i);
%>
</h2>
</body>
</html>
