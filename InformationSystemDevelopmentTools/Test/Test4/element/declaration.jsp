<%@ page contentType="text/html;charset=GBK" %>
<html>
<head><title>������ʹ��</title></head>
<body>
<%-- ��������--%>
<%! long i=0;%>
<%! String name="����";%>
<%-- ��������--%>
<%! public String sayHello(String who){
      return "��ã�"+who+"!";
	}
%>
<h2 align="center">
<%
	i++;
	out.println(sayHello(name));
	out.println("<br/>");
	out.println("���Ǳ�վ�ĵ�"+i+"λ�ÿ͡�");
%>
</h2>
</body>
</html>