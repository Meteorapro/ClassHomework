<%@ page contentType="text/html;charset=GBK" %>
<html>
	<head>
      <title>ʹ��out��������б�ɫ���</title>
	</head>
	<body>
	<table width="50%" align="center">
	<%
		int i=0;
		while(i<10){
			i++;
			if(i%2==0) {
				out.println("<tr bgcolor=\"#00FF00\">");
			}else{
				out.println("<tr bgcolor=\"#0000FF\">");
			}
			out.println("<td>��ǰ������"+i+"</td>");
			out.println("</tr>");
		}		 
	%>
	</table>
	</body>
</html>