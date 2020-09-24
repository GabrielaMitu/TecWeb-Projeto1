<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="stylesheet.css" rel="stylesheet">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<title>Informações </title>
</head>

<h1> Lista de Aniversário e Altura </h1>


<div class = 'container'>

	<body>
	
	<%@ page import="java.util.*,meuPacote.*" %>
	
	<table border='1'>
	
	<thead>
		<tr class = 'tr1'>
			<th>Nome</th>
			<th>Aniversário</th>
			<th>Altura</th>
			<th>Remover</th>
			<th>Atualizar</th>
		</tr>
	</thead>
	
	<tbody>
	
	 <c:forEach var = "pessoa" items = "${pessoas}">
	 
		 <tr>
			 <td>${pessoa.nome}</td>
			 <td>${pessoa.nascimento.time}</td>
			 <td>${pessoa.altura}</td>
			 
			 <td>
				<form action = 'remove' method = 'post'>
					<input type='hidden' name = 'id' value = '${pessoa.id}'>
					<input type='submit' value='remover'>
				</form>
			</td>
			
			<td>
				<form action='atualiza' method='get'>
					<input type='hidden' name = 'id' value='${pessoa.id}'>
					<input type='hidden' name = 'nome' value='${pessoa.nome}'>
					<input type='hidden' name = 'nascimento' value='${pessoa.nascimento}'>
					<input type='submit' value = 'atualizar'>
				</form>
			</td>
		 </tr>
		 
	 </c:forEach>

	
	</tbody>
	</table>
	
		<div class = 'add' >
			<a class = 'add-text' href = "./formCria.html"> Adicionar </a>
		</div>

</body>
</div>
</html>