<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="stylesheet.css" rel="stylesheet">

<title>Atualização</title>

<h1> Atualize a lista </h1>

</head>
<body>
	<form class = "form" action='atualiza' method = 'post'>
		ID: <input class = "input1" type='number' name='id' value = '${param.id}'><br>
		Nome: <input class = "input1" type='text' name='nome' value = '${param.nome}'><br>
		Nascimento: <input class = "input1" type='date' name='nascimento' value = '${param.nascimento}'><br>
		Altura: <input class = "input1" type='number' name='altura' step='0.01' value = '${param.altura}'><br>
		<input class = "input1" type ='hidden' name='id' value = '${param.id}'>
		<input class = "botao" type='submit' value='atualizar'>
	</form>
</body>
</html>