<html>
	<body>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
			
		<c:import url="cabecalho.jsp" />

		<!-- cria o DAO -->
		<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao"/>
		
		<table align = 'center' >
				<tr align = 'center' bgcolor='a9a9a9'>
					<td>Nome</td>
					<td>Email</td>
					<td>Endereco</td>
					<td>Data de Nascimento</td>
				</tr>
			<!-- percorre contatos montando as linhas da tabela -->
			<c:forEach var="contato" items="${dao.lista}" varStatus="id">
				<tr align = 'center' bgcolor="#${id.count % 2 == 0 ? 'd3d3d3' : 'ffffff' }">
					<td>${contato.nome}</td>
					<td>
						<c:if test="${not empty contato.email}">
							<a href="mailto:${contato.email}">${contato.email}</a>
						</c:if>
						<c:if test="${empty contato.email}">
							E-mail não informado
						</c:if>
					</td>
					<td>${contato.endereco}</td>
					<td><fmt:formatDate value="${contato.dataNascimento.time}"
							pattern = "dd/MM/yyyy"/></td>
				</tr>
			</c:forEach>
		</table>
		
		<c:import url="rodape.jsp" />
	</body>
</html>