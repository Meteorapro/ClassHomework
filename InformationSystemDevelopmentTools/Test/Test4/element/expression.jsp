<%@ page contentType="text/html;charset=GBK" %>
<html>
<head><title>���ʽ��ʹ��</title></head>
<body>
<%! long i=0;%>
<%! String name="����";%>
<%! public String sayHello(String who){
      return "��ã�"+who+"!";
	}
%>
<%
	i++;
%>
<%-- ���ʽ��ʹ��--%>
<h2 align="center">
	<%=sayHello(name) %><br/>
	���Ǳ�վ�ĵ�<%=i %>λ�ÿ͡�
</h2>
</body>
</html>
