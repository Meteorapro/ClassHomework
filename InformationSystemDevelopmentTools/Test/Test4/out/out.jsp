<%@ page contentType="text/html;charset=GBK" buffer="1kb" autoFlush="true"%>
<%
	out.println("��ã�");
	out.clear();
%>
<html>
<head><title>ʹ��out����������ݲ�����������</title></head>
<body>
<%
    out.println("�ٴ�˵��ã�"+"<br/>");
	out.println("out����Ļ�������СΪ��"+out.getBufferSize()+"�ֽ�<br/>");
	out.println("������ʣ���СΪ��"+out.getRemaining()+"�ֽ�<br/>");

	for(int i=0;i<3000;i++){
		out.print("A"+i);
	}

	out.println("�ٴ�˵��ã�"+"<br/>");
	out.println("out����Ļ�������СΪ��"+out.getBufferSize()+"�ֽ�<br/>");
	out.println("������ʣ���СΪ��"+out.getRemaining()+"�ֽ�<br/>");
	out.flush();

	out.println("<br/>"+out.isAutoFlush());
%>
</body>
</html>
