<html>
	<body>
		<%-- comnetário em JSP aqui: nossa primeira página JSP --%>
		<%
			String mensagem = "Bem vindo ao sistema de agenda do FJ21!";
		%>
		<%	out.println(mensagem); %>
		<br />
		<%
			String desenvolvido = "Desenvolvido por MICHEL";
		%>
		<%= desenvolvido %>
		<br />
		<%
			System.out.println("Tudo foi executado!");
		%>
	</body>
</html>