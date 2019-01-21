<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Playlists</title>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.2/css/bulma.css">

<link rel="stylesheet" href="<c:url value='/resources/style.css' />">
</head>
<body>

<%-- 	<c:import url="../menu.jsp"></c:import> --%>
<div class="box plays">

	<div class="level">
	<h1 class="title level-left">O que você quer fazer?</h1>
	<a class="is-link level-right" href="/tcc/historico">Ver Histórico </a>
	</div>
	
	
	<table class="table" border=1>
		<thead>
			
		</thead>
		<tbody>
			

				
				<tr>
					<td><a href="/tcc/playlists/selecionar?nome=Chorar"class="button is-info" >Chorar</a></td>
					<td><a href="/tcc/playlists/selecionar?nome=Ficar Feliz" class="button is-primary">Ficar Feliz</a></td>
					<td><a href="/tcc/playlists/selecionar?nome=Dancar" class="button is-warning">Dançar</a></td>
					<td><a href="/tcc/playlists/selecionar?nome=Sentir Amor" class="button is-danger">Sentir Amor</a></td>
					<td><a href="/tcc/playlists/selecionar?nome=Se Motivar" class="button">Se Motivar</a></td>
					<td><a href="/tcc/playlists/selecionar?nome=Relaxar" class="button is-info">Relaxar</a></td>
				</tr>
			
		</tbody>
</table>
</div>


</body>
</html>
