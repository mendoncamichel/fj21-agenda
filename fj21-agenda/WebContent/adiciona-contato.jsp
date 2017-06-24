<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form</title>
	<link href="css/jquery.css" rel="stylesheet">
	<script src="js/jquery.js"></script>
	<script src="js/jquery-ui.js"></script>
	
	<style>

	* {
	margin: 0;
	padding: 0;
	font-family: Arial;
	}
	
	h1 {
		text-align: center;
		margin: 1px 0 1px 0;
	}
	
	.form {
		display: flex;
		flex-direction:column;
		width:300px;
		margin: 50px auto;
		background-color: #F7F7F7;
		padding: 20px 20px 30px 20px;
	}
	
	.text {
		margin: 3px 0;
		line-height:20px;
	}
	
	.input {
		padding:2px 5px;
		margin: 3px 0 15px 0;
	}
	
	.button {
		width: 80%;
		height:40px;
		margin: 20px auto 0 auto;
		border-radius: 5px;
		border: 0px;
		background-color: #4286f4;
		font-size: 16px;
	}
	
	.button:hover {
		background-color: #7eacf7;
	}
</style>
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
<body>

	<c:import url="cabecalho.jsp" />

	<h1>Adiciona Contatos</h1>
	<hr/>
	
	<form action="adicionaContato" method="post" class="form">
		<label for="nome" class="text">Nome:</label>
		<input type="text" name="nome" class="text input"/>
		
		<label for="email" class="text">Email:</label>
		<input type="text" name="email" class="text input"/>
		
		<label for="endereco" class="text">Endere�o:</label>
		<input type="text" name="endereco" class="text input"/>
		
		<label for="dataNascimento" class="text">Data Nascimento:</label>
		<caelum:campoData id="dataNascimento" />
		
		<input type="submit" value="Gravar" class="button"/>
	</form>
	
	<c:import url="rodape.jsp" />
	
</body>
</html>